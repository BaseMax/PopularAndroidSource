package com.google.zxing.c;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.h;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.Arrays;
import java.util.Map;

public final class a extends k {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f4245a = "0123456789-$:/.+ABCD".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    static final int[] f4246b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] c = {'A', 'B', 'C', 'D'};
    private final StringBuilder d = new StringBuilder(20);
    private int[] e = new int[80];
    private int f = 0;

    public final l decodeRow(int i, com.google.zxing.common.a aVar, Map<DecodeHintType, ?> map) throws h {
        com.google.zxing.common.a aVar2 = aVar;
        Map<DecodeHintType, ?> map2 = map;
        Arrays.fill(this.e, 0);
        this.f = 0;
        int nextUnset = aVar2.getNextUnset(0);
        int size = aVar.getSize();
        if (nextUnset < size) {
            int i2 = 0;
            boolean z = true;
            while (nextUnset < size) {
                if (aVar2.get(nextUnset) != z) {
                    i2++;
                } else {
                    a(i2);
                    z = !z;
                    i2 = 1;
                }
                nextUnset++;
            }
            a(i2);
            int i3 = 1;
            while (i3 < this.f) {
                int b2 = b(i3);
                if (b2 != -1 && a(c, f4245a[b2])) {
                    int i4 = 0;
                    for (int i5 = i3; i5 < i3 + 7; i5++) {
                        i4 += this.e[i5];
                    }
                    if (i3 == 1 || this.e[i3 - 1] >= i4 / 2) {
                        this.d.setLength(0);
                        int i6 = i3;
                        while (true) {
                            int b3 = b(i6);
                            if (b3 != -1) {
                                this.d.append((char) b3);
                                i6 += 8;
                                if ((this.d.length() <= 1 || !a(c, f4245a[b3])) && i6 < this.f) {
                                    int i7 = i;
                                }
                            } else {
                                throw h.getNotFoundInstance();
                            }
                        }
                        int i8 = i6 - 1;
                        int i9 = this.e[i8];
                        int i10 = 0;
                        for (int i11 = -8; i11 < -1; i11++) {
                            i10 += this.e[i6 + i11];
                        }
                        if (i6 >= this.f || i9 >= i10 / 2) {
                            int[] iArr = {0, 0, 0, 0};
                            int[] iArr2 = {0, 0, 0, 0};
                            int length = this.d.length() - 1;
                            int i12 = i3;
                            int i13 = 0;
                            while (true) {
                                int i14 = f4246b[this.d.charAt(i13)];
                                for (int i15 = 6; i15 >= 0; i15--) {
                                    int i16 = (i15 & 1) + ((i14 & 1) << 1);
                                    iArr[i16] = iArr[i16] + this.e[i12 + i15];
                                    iArr2[i16] = iArr2[i16] + 1;
                                    i14 >>= 1;
                                }
                                if (i13 >= length) {
                                    break;
                                }
                                i12 += 8;
                                i13++;
                            }
                            float[] fArr = new float[4];
                            float[] fArr2 = new float[4];
                            int i17 = 0;
                            for (int i18 = 2; i17 < i18; i18 = 2) {
                                fArr2[i17] = 0.0f;
                                int i19 = i17 + 2;
                                fArr2[i19] = ((((float) iArr[i17]) / ((float) iArr2[i17])) + (((float) iArr[i19]) / ((float) iArr2[i19]))) / 2.0f;
                                fArr[i17] = fArr2[i19];
                                fArr[i19] = ((((float) iArr[i19]) * 2.0f) + 1.5f) / ((float) iArr2[i19]);
                                i17++;
                            }
                            int i20 = i3;
                            int i21 = 0;
                            loop8:
                            while (true) {
                                int i22 = f4246b[this.d.charAt(i21)];
                                int i23 = 6;
                                while (i23 >= 0) {
                                    int i24 = (i23 & 1) + ((i22 & 1) << 1);
                                    float f2 = (float) this.e[i20 + i23];
                                    if (f2 >= fArr2[i24] && f2 <= fArr[i24]) {
                                        i22 >>= 1;
                                        i23--;
                                    }
                                }
                                if (i21 < length) {
                                    i20 += 8;
                                    i21++;
                                } else {
                                    for (int i25 = 0; i25 < this.d.length(); i25++) {
                                        StringBuilder sb = this.d;
                                        sb.setCharAt(i25, f4245a[sb.charAt(i25)]);
                                    }
                                    if (a(c, this.d.charAt(0))) {
                                        StringBuilder sb2 = this.d;
                                        if (!a(c, sb2.charAt(sb2.length() - 1))) {
                                            throw h.getNotFoundInstance();
                                        } else if (this.d.length() > 3) {
                                            if (map2 == null || !map2.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
                                                StringBuilder sb3 = this.d;
                                                sb3.deleteCharAt(sb3.length() - 1);
                                                this.d.deleteCharAt(0);
                                            }
                                            int i26 = 0;
                                            for (int i27 = 0; i27 < i3; i27++) {
                                                i26 += this.e[i27];
                                            }
                                            float f3 = (float) i26;
                                            while (i3 < i8) {
                                                i26 += this.e[i3];
                                                i3++;
                                            }
                                            float f4 = (float) i;
                                            return new l(this.d.toString(), null, new m[]{new m(f3, f4), new m((float) i26, f4)}, BarcodeFormat.CODABAR);
                                        } else {
                                            throw h.getNotFoundInstance();
                                        }
                                    } else {
                                        throw h.getNotFoundInstance();
                                    }
                                }
                            }
                            throw h.getNotFoundInstance();
                        }
                        throw h.getNotFoundInstance();
                    }
                }
                int i28 = i;
                i3 += 2;
            }
            throw h.getNotFoundInstance();
        }
        throw h.getNotFoundInstance();
    }

    private void a(int i) {
        int[] iArr = this.e;
        int i2 = this.f;
        iArr[i2] = i;
        this.f = i2 + 1;
        int i3 = this.f;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[(i3 << 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.e = iArr2;
        }
    }

    private static boolean a(char[] cArr, char c2) {
        if (cArr != null) {
            for (char c3 : cArr) {
                if (c3 == c2) {
                    return true;
                }
            }
        }
        return false;
    }

    private int b(int i) {
        int i2 = i + 7;
        if (i2 >= this.f) {
            return -1;
        }
        int[] iArr = this.e;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i4 = 0;
        int i5 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7 += 2) {
            int i8 = iArr[i7];
            if (i8 < i5) {
                i5 = i8;
            }
            if (i8 > i6) {
                i6 = i8;
            }
        }
        int i9 = (i5 + i6) / 2;
        int i10 = 0;
        for (int i11 = i + 1; i11 < i2; i11 += 2) {
            int i12 = iArr[i11];
            if (i12 < i3) {
                i3 = i12;
            }
            if (i12 > i10) {
                i10 = i12;
            }
        }
        int i13 = (i3 + i10) / 2;
        int i14 = 128;
        int i15 = 0;
        for (int i16 = 0; i16 < 7; i16++) {
            i14 >>= 1;
            if (iArr[i + i16] > ((i16 & 1) == 0 ? i9 : i13)) {
                i15 |= i14;
            }
        }
        while (true) {
            int[] iArr2 = f4246b;
            if (i4 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i4] == i15) {
                return i4;
            }
            i4++;
        }
    }
}
