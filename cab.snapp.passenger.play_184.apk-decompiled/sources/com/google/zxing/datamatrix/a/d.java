package com.google.zxing.datamatrix.a;

import com.google.zxing.common.b;
import com.google.zxing.common.b.a;
import com.google.zxing.common.b.c;
import com.google.zxing.datamatrix.a.e;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final c f4335a = new c(a.DATA_MATRIX_FIELD_256);

    public final com.google.zxing.common.d decode(boolean[][] zArr) throws com.google.zxing.d, com.google.zxing.c {
        return decode(b.parse(zArr));
    }

    public final com.google.zxing.common.d decode(b bVar) throws com.google.zxing.d, com.google.zxing.c {
        boolean z;
        boolean z2;
        a aVar = new a(bVar);
        e eVar = aVar.c;
        byte[] bArr = new byte[aVar.c.getTotalCodewords()];
        int height = aVar.f4327a.getHeight();
        int width = aVar.f4327a.getWidth();
        int i = 0;
        int i2 = 4;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (true) {
            if (i2 == height && i3 == 0 && !z3) {
                int i5 = i4 + 1;
                int i6 = height - 1;
                int i7 = (aVar.a(i6, i, height, width) ? 1 : 0) << true;
                if (aVar.a(i6, 1, height, width)) {
                    i7 |= 1;
                }
                int i8 = i7 << 1;
                if (aVar.a(i6, 2, height, width)) {
                    i8 |= 1;
                }
                int i9 = i8 << 1;
                if (aVar.a(i, width - 2, height, width)) {
                    i9 |= 1;
                }
                int i10 = i9 << 1;
                int i11 = width - 1;
                if (aVar.a(i, i11, height, width)) {
                    i10 |= 1;
                }
                int i12 = i10 << 1;
                if (aVar.a(1, i11, height, width)) {
                    i12 |= 1;
                }
                int i13 = i12 << 1;
                if (aVar.a(2, i11, height, width)) {
                    i13 |= 1;
                }
                int i14 = i13 << 1;
                if (aVar.a(3, i11, height, width)) {
                    i14 |= 1;
                }
                bArr[i4] = (byte) i14;
                i2 -= 2;
                i3 += 2;
                i4 = i5;
                z2 = true;
                z = true;
            } else {
                int i15 = height - 2;
                if (i2 == i15 && i3 == 0 && (width & 3) != 0 && !z4) {
                    int i16 = i4 + 1;
                    int i17 = (aVar.a(height + -3, 0, height, width) ? 1 : 0) << true;
                    if (aVar.a(i15, 0, height, width)) {
                        i17 |= 1;
                    }
                    int i18 = i17 << 1;
                    if (aVar.a(height - 1, 0, height, width)) {
                        i18 |= 1;
                    }
                    int i19 = i18 << 1;
                    if (aVar.a(0, width - 4, height, width)) {
                        i19 |= 1;
                    }
                    int i20 = i19 << 1;
                    if (aVar.a(0, width - 3, height, width)) {
                        i20 |= 1;
                    }
                    int i21 = i20 << 1;
                    if (aVar.a(0, width - 2, height, width)) {
                        i21 |= 1;
                    }
                    int i22 = i21 << 1;
                    int i23 = width - 1;
                    if (aVar.a(0, i23, height, width)) {
                        i22 |= 1;
                    }
                    int i24 = i22 << 1;
                    if (aVar.a(1, i23, height, width)) {
                        i24 |= 1;
                    }
                    bArr[i4] = (byte) i24;
                    i2 -= 2;
                    i3 += 2;
                    z = z3;
                    i4 = i16;
                    z4 = true;
                } else if (i2 == height + 4 && i3 == 2 && (width & 7) == 0 && !z5) {
                    int i25 = i4 + 1;
                    int i26 = height - 1;
                    int i27 = (aVar.a(i26, 0, height, width) ? 1 : 0) << true;
                    int i28 = width - 1;
                    if (aVar.a(i26, i28, height, width)) {
                        i27 |= 1;
                    }
                    int i29 = i27 << 1;
                    int i30 = width - 3;
                    if (aVar.a(0, i30, height, width)) {
                        i29 |= 1;
                    }
                    int i31 = i29 << 1;
                    int i32 = width - 2;
                    int i33 = i25;
                    if (aVar.a(0, i32, height, width)) {
                        i31 |= 1;
                    }
                    z = z3;
                    int i34 = i31 << 1;
                    if (aVar.a(0, i28, height, width)) {
                        i34 |= 1;
                    }
                    int i35 = i34 << 1;
                    if (aVar.a(1, i30, height, width)) {
                        i35 |= 1;
                    }
                    int i36 = i35 << 1;
                    if (aVar.a(1, i32, height, width)) {
                        i36 |= 1;
                    }
                    int i37 = i36 << 1;
                    if (aVar.a(1, i28, height, width)) {
                        i37 |= 1;
                    }
                    bArr[i4] = (byte) i37;
                    i2 -= 2;
                    i3 += 2;
                    i4 = i33;
                    z5 = true;
                } else {
                    z = z3;
                    if (i2 == i15 && i3 == 0) {
                        if ((width & 7) == 4 && !z6) {
                            int i38 = i4 + 1;
                            z2 = true;
                            int i39 = (aVar.a(height + -3, 0, height, width) ? 1 : 0) << true;
                            if (aVar.a(i15, 0, height, width)) {
                                i39 |= 1;
                            }
                            int i40 = i39 << 1;
                            if (aVar.a(height - 1, 0, height, width)) {
                                i40 |= 1;
                            }
                            int i41 = i40 << 1;
                            if (aVar.a(0, width - 2, height, width)) {
                                i41 |= 1;
                            }
                            int i42 = i41 << 1;
                            int i43 = width - 1;
                            if (aVar.a(0, i43, height, width)) {
                                i42 |= 1;
                            }
                            int i44 = i42 << 1;
                            if (aVar.a(1, i43, height, width)) {
                                i44 |= 1;
                            }
                            int i45 = i44 << 1;
                            if (aVar.a(2, i43, height, width)) {
                                i45 |= 1;
                            }
                            int i46 = i45 << 1;
                            if (aVar.a(3, i43, height, width)) {
                                i46 |= 1;
                            }
                            bArr[i4] = (byte) i46;
                            i2 -= 2;
                            i3 += 2;
                            i4 = i38;
                            z6 = true;
                        }
                    }
                    z2 = true;
                    do {
                        if (i2 < height && i3 >= 0 && !aVar.f4328b.get(i3, i2)) {
                            bArr[i4] = (byte) aVar.b(i2, i3, height, width);
                            i4++;
                        }
                        i2 -= 2;
                        i3 += 2;
                        if (i2 < 0) {
                            break;
                        }
                    } while (i3 < width);
                    int i47 = i2 + 1;
                    int i48 = i3 + 3;
                    do {
                        if (i47 >= 0 && i48 < width && !aVar.f4328b.get(i48, i47)) {
                            bArr[i4] = (byte) aVar.b(i47, i48, height, width);
                            i4++;
                        }
                        i47 += 2;
                        i48 -= 2;
                        if (i47 >= height) {
                            break;
                        }
                    } while (i48 >= 0);
                    i2 = i47 + 3;
                    i3 = i48 + 1;
                }
                z2 = true;
            }
            if (i2 >= height && i3 >= width) {
                break;
            }
            z3 = z;
            i = 0;
        }
        if (i4 == aVar.c.getTotalCodewords()) {
            e.b bVar2 = eVar.f4337a;
            e.a[] aVarArr = bVar2.f4341b;
            int i49 = 0;
            for (e.a aVar2 : aVarArr) {
                i49 += aVar2.f4338a;
            }
            b[] bVarArr = new b[i49];
            int length = aVarArr.length;
            int i50 = 0;
            int i51 = 0;
            while (i50 < length) {
                e.a aVar3 = aVarArr[i50];
                int i52 = i51;
                int i53 = 0;
                while (i53 < aVar3.f4338a) {
                    int i54 = aVar3.f4339b;
                    bVarArr[i52] = new b(i54, new byte[(bVar2.f4340a + i54)]);
                    i53++;
                    i52++;
                }
                i50++;
                i51 = i52;
            }
            int length2 = bVarArr[0].f4330b.length - bVar2.f4340a;
            int i55 = length2 - 1;
            int i56 = 0;
            int i57 = 0;
            while (i56 < i55) {
                int i58 = i57;
                int i59 = 0;
                while (i59 < i51) {
                    bVarArr[i59].f4330b[i56] = bArr[i58];
                    i59++;
                    i58++;
                }
                i56++;
                i57 = i58;
            }
            if (eVar.getVersionNumber() != 24) {
                z2 = false;
            }
            int i60 = z2 ? 8 : i51;
            int i61 = 0;
            while (i61 < i60) {
                bVarArr[i61].f4330b[i55] = bArr[i57];
                i61++;
                i57++;
            }
            int length3 = bVarArr[0].f4330b.length;
            while (length2 < length3) {
                int i62 = 0;
                while (i62 < i51) {
                    int i63 = z2 ? (i62 + 8) % i51 : i62;
                    bVarArr[i63].f4330b[(!z2 || i63 <= 7) ? length2 : length2 - 1] = bArr[i57];
                    i62++;
                    i57++;
                }
                length2++;
            }
            if (i57 == bArr.length) {
                int i64 = 0;
                for (b bVar3 : bVarArr) {
                    i64 += bVar3.f4329a;
                }
                byte[] bArr2 = new byte[i64];
                int length4 = bVarArr.length;
                for (int i65 = 0; i65 < length4; i65++) {
                    b bVar4 = bVarArr[i65];
                    byte[] bArr3 = bVar4.f4330b;
                    int i66 = bVar4.f4329a;
                    a(bArr3, i66);
                    for (int i67 = 0; i67 < i66; i67++) {
                        bArr2[(i67 * length4) + i65] = bArr3[i67];
                    }
                }
                return c.a(bArr2);
            }
            throw new IllegalArgumentException();
        }
        throw com.google.zxing.d.getFormatInstance();
    }

    private void a(byte[] bArr, int i) throws com.google.zxing.c {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
        }
        try {
            this.f4335a.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (com.google.zxing.common.b.d unused) {
            throw com.google.zxing.c.getChecksumInstance();
        }
    }
}
