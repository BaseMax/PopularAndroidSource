package com.google.zxing.common;

import com.google.zxing.a;
import com.google.zxing.f;
import com.google.zxing.h;
import com.pusher.java_websocket.drafts.c;
import java.lang.reflect.Array;

public final class i extends g {

    /* renamed from: a  reason: collision with root package name */
    private b f4320a;

    private static int a(int i, int i2) {
        if (i < 2) {
            return 2;
        }
        return i > i2 ? i2 : i;
    }

    public i(f fVar) {
        super(fVar);
    }

    public final b getBlackMatrix() throws h {
        i iVar;
        b bVar = this.f4320a;
        if (bVar != null) {
            return bVar;
        }
        f luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            iVar = this;
            iVar.f4320a = super.getBlackMatrix();
        } else {
            byte[] matrix = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = height >> 3;
            if ((height & 7) != 0) {
                i2++;
            }
            int i3 = height - 8;
            int i4 = width - 8;
            int[][] iArr = (int[][]) Array.newInstance(int.class, new int[]{i2, i});
            int i5 = 0;
            while (true) {
                int i6 = 8;
                if (i5 >= i2) {
                    break;
                }
                int i7 = i5 << 3;
                if (i7 > i3) {
                    i7 = i3;
                }
                int i8 = 0;
                while (i8 < i) {
                    int i9 = i8 << 3;
                    if (i9 > i4) {
                        i9 = i4;
                    }
                    int i10 = (i7 * width) + i9;
                    int i11 = 0;
                    byte b2 = c.END_OF_FRAME;
                    int i12 = 0;
                    byte b3 = 0;
                    while (i11 < i6) {
                        int i13 = i7;
                        byte b4 = b3;
                        byte b5 = b2;
                        int i14 = 0;
                        while (i14 < i6) {
                            byte b6 = matrix[i10 + i14] & c.END_OF_FRAME;
                            i12 += b6;
                            if (b6 < b5) {
                                b5 = b6;
                            }
                            if (b6 > b4) {
                                b4 = b6;
                            }
                            i14++;
                            i6 = 8;
                        }
                        if (b4 - b5 <= 24) {
                            i11++;
                            i10 += width;
                            i6 = 8;
                            b3 = b4;
                            b2 = b5;
                            i7 = i13;
                        }
                        while (true) {
                            i11++;
                            i10 += width;
                            if (i11 >= 8) {
                                break;
                            }
                            int i15 = 0;
                            for (int i16 = 8; i15 < i16; i16 = 8) {
                                i12 += matrix[i10 + i15] & c.END_OF_FRAME;
                                i15++;
                            }
                        }
                        i11++;
                        i10 += width;
                        i6 = 8;
                        b3 = b4;
                        b2 = b5;
                        i7 = i13;
                    }
                    int i17 = i7;
                    int i18 = i12 >> 6;
                    if (b3 - b2 <= 24) {
                        i18 = b2 / 2;
                        if (i5 > 0 && i8 > 0) {
                            int i19 = i5 - 1;
                            int i20 = i8 - 1;
                            int i21 = ((iArr[i19][i8] + (iArr[i5][i20] * 2)) + iArr[i19][i20]) / 4;
                            if (b2 < i21) {
                                i18 = i21;
                            }
                        }
                    }
                    iArr[i5][i8] = i18;
                    i8++;
                    i6 = 8;
                    i7 = i17;
                }
                i5++;
            }
            b bVar2 = new b(width, height);
            for (int i22 = 0; i22 < i2; i22++) {
                int i23 = i22 << 3;
                if (i23 > i3) {
                    i23 = i3;
                }
                int a2 = a(i22, i2 - 3);
                int i24 = 0;
                while (i24 < i) {
                    int i25 = i24 << 3;
                    if (i25 > i4) {
                        i25 = i4;
                    }
                    int a3 = a(i24, i - 3);
                    int i26 = -2;
                    int i27 = i;
                    int i28 = 0;
                    for (int i29 = 2; i26 <= i29; i29 = 2) {
                        int[] iArr2 = iArr[a2 + i26];
                        i28 += iArr2[a3 - 2] + iArr2[a3 - 1] + iArr2[a3] + iArr2[a3 + 1] + iArr2[a3 + 2];
                        i26++;
                    }
                    int i30 = i28 / 25;
                    int i31 = (i23 * width) + i25;
                    int i32 = 0;
                    while (true) {
                        if (i32 >= 8) {
                            break;
                        }
                        int i33 = i2;
                        int i34 = 0;
                        for (int i35 = 8; i34 < i35; i35 = 8) {
                            byte[] bArr = matrix;
                            if ((matrix[i31 + i34] & c.END_OF_FRAME) <= i30) {
                                bVar2.set(i25 + i34, i23 + i32);
                            }
                            i34++;
                            matrix = bArr;
                        }
                        byte[] bArr2 = matrix;
                        i32++;
                        i31 += width;
                        i2 = i33;
                    }
                    byte[] bArr3 = matrix;
                    int i36 = i2;
                    i24++;
                    i = i27;
                }
                byte[] bArr4 = matrix;
                int i37 = i;
                int i38 = i2;
            }
            iVar = this;
            iVar.f4320a = bVar2;
        }
        return iVar.f4320a;
    }

    public final a createBinarizer(f fVar) {
        return new i(fVar);
    }
}
