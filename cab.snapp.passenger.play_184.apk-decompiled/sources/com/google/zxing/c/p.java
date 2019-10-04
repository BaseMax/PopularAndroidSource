package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.c;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.k;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.n;
import java.util.Arrays;
import java.util.Map;

public abstract class p extends k {

    /* renamed from: b  reason: collision with root package name */
    static final int[] f4295b = {1, 1, 1};
    static final int[] c = {1, 1, 1, 1, 1};
    static final int[] d = {1, 1, 1, 1, 1, 1};
    static final int[][] e = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
    static final int[][] f = new int[20][];

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f4296a = new StringBuilder(20);
    private final o g = new o();
    private final g h = new g();

    /* access modifiers changed from: protected */
    public abstract int a(a aVar, int[] iArr, StringBuilder sb) throws h;

    /* access modifiers changed from: package-private */
    public abstract BarcodeFormat a();

    static {
        System.arraycopy(e, 0, f, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr = e[i - 10];
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[(iArr.length - i2) - 1];
            }
            f[i] = iArr2;
        }
    }

    protected p() {
    }

    static int[] a(a aVar) throws h {
        int[] iArr = new int[f4295b.length];
        int[] iArr2 = null;
        boolean z = false;
        int i = 0;
        while (!z) {
            Arrays.fill(iArr, 0, f4295b.length, 0);
            iArr2 = a(aVar, i, false, f4295b, iArr);
            int i2 = iArr2[0];
            int i3 = iArr2[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                z = aVar.isRange(i4, i2, false);
            }
            i = i3;
        }
        return iArr2;
    }

    public l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h, c, d {
        return decodeRow(i, aVar, a(aVar), map);
    }

    public l decodeRow(int i, a aVar, int[] iArr, Map<DecodeHintType, ?> map) throws h, c, d {
        n nVar;
        int i2;
        int[] iArr2;
        boolean z;
        String str = null;
        if (map == null) {
            nVar = null;
        } else {
            nVar = (n) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        }
        if (nVar != null) {
            nVar.foundPossibleResultPoint(new m(((float) (iArr[0] + iArr[1])) / 2.0f, (float) i));
        }
        StringBuilder sb = this.f4296a;
        sb.setLength(0);
        int a2 = a(aVar, iArr, sb);
        if (nVar != null) {
            nVar.foundPossibleResultPoint(new m((float) a2, (float) i));
        }
        int[] a3 = a(aVar, a2);
        if (nVar != null) {
            nVar.foundPossibleResultPoint(new m(((float) (a3[0] + a3[1])) / 2.0f, (float) i));
        }
        int i3 = a3[1];
        int i4 = (i3 - a3[0]) + i3;
        if (i4 >= aVar.getSize() || !aVar.isRange(i3, i4, false)) {
            throw h.getNotFoundInstance();
        }
        String sb2 = sb.toString();
        if (sb2.length() < 8) {
            throw d.getFormatInstance();
        } else if (a(sb2)) {
            BarcodeFormat a4 = a();
            float f2 = (float) i;
            l lVar = new l(sb2, null, new m[]{new m(((float) (iArr[1] + iArr[0])) / 2.0f, f2), new m(((float) (a3[1] + a3[0])) / 2.0f, f2)}, a4);
            try {
                l a5 = this.g.a(i, aVar, a3[1]);
                lVar.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, a5.getText());
                lVar.putAllMetadata(a5.getResultMetadata());
                lVar.addResultPoints(a5.getResultPoints());
                i2 = a5.getText().length();
            } catch (k unused) {
                i2 = 0;
            }
            if (map == null) {
                iArr2 = null;
            } else {
                iArr2 = (int[]) map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS);
            }
            if (iArr2 != null) {
                int length = iArr2.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        z = false;
                        break;
                    } else if (i2 == iArr2[i5]) {
                        z = true;
                        break;
                    } else {
                        i5++;
                    }
                }
                if (!z) {
                    throw h.getNotFoundInstance();
                }
            }
            if (a4 == BarcodeFormat.EAN_13 || a4 == BarcodeFormat.UPC_A) {
                g gVar = this.h;
                gVar.a();
                int parseInt = Integer.parseInt(sb2.substring(0, 3));
                int size = gVar.f4282a.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        break;
                    }
                    int[] iArr3 = gVar.f4282a.get(i6);
                    int i7 = iArr3[0];
                    if (parseInt < i7) {
                        break;
                    }
                    if (iArr3.length != 1) {
                        i7 = iArr3[1];
                    }
                    if (parseInt <= i7) {
                        str = gVar.f4283b.get(i6);
                        break;
                    }
                    i6++;
                }
                if (str != null) {
                    lVar.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, str);
                }
            }
            return lVar;
        } else {
            throw c.getChecksumInstance();
        }
    }

    /* access modifiers changed from: package-private */
    public int[] a(a aVar, int i) throws h {
        return a(aVar, i, false, f4295b);
    }

    static int[] a(a aVar, int i, boolean z, int[] iArr) throws h {
        return a(aVar, i, z, iArr, new int[iArr.length]);
    }

    private static int[] a(a aVar, int i, boolean z, int[] iArr, int[] iArr2) throws h {
        int size = aVar.getSize();
        int nextUnset = z ? aVar.getNextUnset(i) : aVar.getNextSet(i);
        int length = iArr.length;
        int i2 = nextUnset;
        int i3 = 0;
        while (nextUnset < size) {
            if (aVar.get(nextUnset) != z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if (i3 != length - 1) {
                    i3++;
                } else if (patternMatchVariance(iArr2, iArr, 0.7f) < 0.48f) {
                    return new int[]{i2, nextUnset};
                } else {
                    i2 += iArr2[0] + iArr2[1];
                    int i4 = i3 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i3] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            nextUnset++;
        }
        throw h.getNotFoundInstance();
    }

    static int a(a aVar, int[] iArr, int i, int[][] iArr2) throws h {
        a(aVar, i, iArr);
        int length = iArr2.length;
        float f2 = 0.48f;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float patternMatchVariance = patternMatchVariance(iArr, iArr2[i3], 0.7f);
            if (patternMatchVariance < f2) {
                i2 = i3;
                f2 = patternMatchVariance;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw h.getNotFoundInstance();
    }

    /* access modifiers changed from: package-private */
    public boolean a(String str) throws d {
        int length = str.length();
        if (length != 0) {
            int i = length - 1;
            int digit = Character.digit(str.charAt(i), 10);
            CharSequence subSequence = str.subSequence(0, i);
            int length2 = subSequence.length();
            int i2 = 0;
            for (int i3 = length2 - 1; i3 >= 0; i3 -= 2) {
                int charAt = subSequence.charAt(i3) - '0';
                if (charAt < 0 || charAt > 9) {
                    throw d.getFormatInstance();
                }
                i2 += charAt;
            }
            int i4 = i2 * 3;
            for (int i5 = length2 - 2; i5 >= 0; i5 -= 2) {
                int charAt2 = subSequence.charAt(i5) - '0';
                if (charAt2 < 0 || charAt2 > 9) {
                    throw d.getFormatInstance();
                }
                i4 += charAt2;
            }
            if ((1000 - i4) % 10 == digit) {
                return true;
            }
        }
        return false;
    }
}
