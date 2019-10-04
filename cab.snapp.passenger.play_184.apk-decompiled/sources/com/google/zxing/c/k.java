package com.google.zxing.c;

import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.b;
import com.google.zxing.c;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

public abstract class k implements j {
    public abstract l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h, c, d;

    public void reset() {
    }

    public l decode(b bVar) throws h, d {
        return decode(bVar, null);
    }

    public l decode(b bVar, Map<DecodeHintType, ?> map) throws h, d {
        try {
            return a(bVar, map);
        } catch (h e) {
            if (!(map != null && map.containsKey(DecodeHintType.TRY_HARDER)) || !bVar.isRotateSupported()) {
                throw e;
            }
            b rotateCounterClockwise = bVar.rotateCounterClockwise();
            l a2 = a(rotateCounterClockwise, map);
            Map<ResultMetadataType, Object> resultMetadata = a2.getResultMetadata();
            int i = 270;
            if (resultMetadata != null && resultMetadata.containsKey(ResultMetadataType.ORIENTATION)) {
                i = (((Integer) resultMetadata.get(ResultMetadataType.ORIENTATION)).intValue() + 270) % 360;
            }
            a2.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
            m[] resultPoints = a2.getResultPoints();
            if (resultPoints != null) {
                int height = rotateCounterClockwise.getHeight();
                for (int i2 = 0; i2 < resultPoints.length; i2++) {
                    resultPoints[i2] = new m((((float) height) - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                }
            }
            return a2;
        }
    }

    private l a(b bVar, Map<DecodeHintType, ?> map) throws h {
        int i;
        int i2;
        Map<DecodeHintType, ?> map2 = map;
        int width = bVar.getWidth();
        int height = bVar.getHeight();
        a aVar = new a(width);
        char c = 0;
        int i3 = 1;
        boolean z = map2 != null && map2.containsKey(DecodeHintType.TRY_HARDER);
        int max = Math.max(1, height >> (z ? 8 : 5));
        int i4 = z ? height : 15;
        int i5 = height / 2;
        Map<DecodeHintType, ?> map3 = map2;
        int i6 = 0;
        while (i6 < i4) {
            int i7 = i6 + 1;
            int i8 = i7 / 2;
            if (!((i6 & 1) == 0)) {
                i8 = -i8;
            }
            int i9 = (i8 * max) + i5;
            if (i9 < 0 || i9 >= height) {
                break;
            }
            try {
                aVar = bVar.getBlackRow(i9, aVar);
                EnumMap enumMap = map3;
                int i10 = 0;
                while (i10 < 2) {
                    if (i10 == i3) {
                        aVar.reverse();
                        if (enumMap != null && enumMap.containsKey(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) {
                            EnumMap enumMap2 = new EnumMap(DecodeHintType.class);
                            enumMap2.putAll(enumMap);
                            enumMap2.remove(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
                            enumMap = enumMap2;
                        }
                    }
                    try {
                        l decodeRow = decodeRow(i9, aVar, enumMap);
                        if (i10 == i3) {
                            decodeRow.putMetadata(ResultMetadataType.ORIENTATION, 180);
                            m[] resultPoints = decodeRow.getResultPoints();
                            if (resultPoints != null) {
                                float f = (float) width;
                                i2 = width;
                                try {
                                    resultPoints[0] = new m((f - resultPoints[c].getX()) - 1.0f, resultPoints[c].getY());
                                    try {
                                        resultPoints[1] = new m((f - resultPoints[1].getX()) - 1.0f, resultPoints[1].getY());
                                    } catch (com.google.zxing.k unused) {
                                        continue;
                                    }
                                } catch (com.google.zxing.k unused2) {
                                    i10++;
                                    b bVar2 = bVar;
                                    width = i2;
                                    c = 0;
                                    i3 = 1;
                                }
                            }
                        }
                        return decodeRow;
                    } catch (com.google.zxing.k unused3) {
                        i2 = width;
                        i10++;
                        b bVar22 = bVar;
                        width = i2;
                        c = 0;
                        i3 = 1;
                    }
                }
                i = width;
                map3 = enumMap;
            } catch (h unused4) {
                i = width;
            }
            i6 = i7;
            width = i;
            c = 0;
            i3 = 1;
        }
        throw h.getNotFoundInstance();
    }

    protected static void a(a aVar, int i, int[] iArr) throws h {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = aVar.getSize();
        if (i < size) {
            boolean z = !aVar.get(i);
            while (i < size) {
                if (aVar.get(i) == z) {
                    i2++;
                    if (i2 == length) {
                        break;
                    }
                    iArr[i2] = 1;
                    z = !z;
                } else {
                    iArr[i2] = iArr[i2] + 1;
                }
                i++;
            }
            if (i2 == length) {
                return;
            }
            if (i2 != length - 1 || i != size) {
                throw h.getNotFoundInstance();
            }
            return;
        }
        throw h.getNotFoundInstance();
    }

    protected static void b(a aVar, int i, int[] iArr) throws h {
        int length = iArr.length;
        boolean z = aVar.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (aVar.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length < 0) {
            a(aVar, i + 1, iArr);
            return;
        }
        throw h.getNotFoundInstance();
    }

    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = (float) i;
        float f3 = f2 / ((float) i2);
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            float f6 = ((float) iArr2[i4]) * f3;
            float f7 = (float) i5;
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }
}
