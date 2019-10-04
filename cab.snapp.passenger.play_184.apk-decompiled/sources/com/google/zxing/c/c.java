package com.google.zxing.c;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.Arrays;
import java.util.Map;

public final class c extends k {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f4276a = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 168, 162, 138, 42};

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4277b;
    private final boolean c;
    private final StringBuilder d;
    private final int[] e;

    public c() {
        this(false);
    }

    public c(boolean z) {
        this(z, false);
    }

    public c(boolean z, boolean z2) {
        this.f4277b = z;
        this.c = z2;
        this.d = new StringBuilder(20);
        this.e = new int[9];
    }

    public final l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h, com.google.zxing.c, d {
        char c2;
        char c3;
        String str;
        char c4;
        int i2;
        a aVar2 = aVar;
        int[] iArr = this.e;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.d;
        sb.setLength(0);
        int size = aVar.getSize();
        int nextSet = aVar2.getNextSet(0);
        int length = iArr.length;
        int i3 = nextSet;
        boolean z = false;
        int i4 = 0;
        while (nextSet < size) {
            if (aVar2.get(nextSet) != z) {
                iArr[i4] = iArr[i4] + 1;
                int i5 = i;
            } else {
                if (i4 != length - 1) {
                    int i6 = i;
                    i4++;
                } else if (a(iArr) != 148 || !aVar2.isRange(Math.max(0, i3 - ((nextSet - i3) / 2)), i3, false)) {
                    int i7 = i;
                    i3 += iArr[0] + iArr[1];
                    int i8 = i4 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i8);
                    iArr[i8] = 0;
                    iArr[i4] = 0;
                    i4--;
                } else {
                    int[] iArr2 = {i3, nextSet};
                    int nextSet2 = aVar2.getNextSet(iArr2[1]);
                    int size2 = aVar.getSize();
                    while (true) {
                        a(aVar2, nextSet2, iArr);
                        int a2 = a(iArr);
                        if (a2 >= 0) {
                            int i9 = 0;
                            while (true) {
                                int[] iArr3 = f4276a;
                                if (i9 < iArr3.length) {
                                    if (iArr3[i9] == a2) {
                                        c2 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i9);
                                        break;
                                    }
                                    i9++;
                                } else if (a2 == 148) {
                                    c2 = '*';
                                } else {
                                    throw h.getNotFoundInstance();
                                }
                            }
                            sb.append(c2);
                            int i10 = nextSet2;
                            for (int i11 : iArr) {
                                i10 += i11;
                            }
                            int nextSet3 = aVar2.getNextSet(i10);
                            if (c2 == '*') {
                                sb.setLength(sb.length() - 1);
                                int i12 = 0;
                                for (int i13 : iArr) {
                                    i12 += i13;
                                }
                                int i14 = (nextSet3 - nextSet2) - i12;
                                if (nextSet3 == size2 || (i14 << 1) >= i12) {
                                    if (this.f4277b) {
                                        int length2 = sb.length() - 1;
                                        int i15 = 0;
                                        for (int i16 = 0; i16 < length2; i16++) {
                                            i15 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(this.d.charAt(i16));
                                        }
                                        if (sb.charAt(length2) == "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i15 % 43)) {
                                            sb.setLength(length2);
                                        } else {
                                            throw com.google.zxing.c.getChecksumInstance();
                                        }
                                    }
                                    if (sb.length() != 0) {
                                        if (this.c) {
                                            int length3 = sb.length();
                                            StringBuilder sb2 = new StringBuilder(length3);
                                            int i17 = 0;
                                            while (i17 < length3) {
                                                char charAt = sb.charAt(i17);
                                                if (charAt == '+' || charAt == '$' || charAt == '%' || charAt == '/') {
                                                    i17++;
                                                    char charAt2 = sb.charAt(i17);
                                                    if (charAt != '$') {
                                                        if (charAt != '%') {
                                                            if (charAt != '+') {
                                                                if (charAt == '/') {
                                                                    if (charAt2 >= 'A' && charAt2 <= 'O') {
                                                                        i2 = charAt2 - ' ';
                                                                    } else if (charAt2 == 'Z') {
                                                                        c4 = ':';
                                                                        sb2.append(c4);
                                                                    } else {
                                                                        throw d.getFormatInstance();
                                                                    }
                                                                }
                                                            } else if (charAt2 < 'A' || charAt2 > 'Z') {
                                                                throw d.getFormatInstance();
                                                            } else {
                                                                i2 = charAt2 + ' ';
                                                            }
                                                        } else if (charAt2 >= 'A' && charAt2 <= 'E') {
                                                            i2 = charAt2 - '&';
                                                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                                                            i2 = charAt2 - 11;
                                                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                                                            i2 = charAt2 + 16;
                                                        } else if (charAt2 >= 'P' && charAt2 <= 'T') {
                                                            i2 = charAt2 + '+';
                                                        } else if (charAt2 != 'U') {
                                                            if (charAt2 == 'V') {
                                                                c4 = '@';
                                                            } else if (charAt2 == 'W') {
                                                                c4 = '`';
                                                            } else if (charAt2 == 'X' || charAt2 == 'Y' || charAt2 == 'Z') {
                                                                c4 = 127;
                                                            } else {
                                                                throw d.getFormatInstance();
                                                            }
                                                            sb2.append(c4);
                                                        }
                                                        c4 = 0;
                                                        sb2.append(c4);
                                                    } else if (charAt2 < 'A' || charAt2 > 'Z') {
                                                        throw d.getFormatInstance();
                                                    } else {
                                                        i2 = charAt2 - '@';
                                                    }
                                                    c4 = (char) i2;
                                                    sb2.append(c4);
                                                } else {
                                                    sb2.append(charAt);
                                                }
                                                i17++;
                                            }
                                            c3 = 1;
                                            str = sb2.toString();
                                        } else {
                                            c3 = 1;
                                            str = sb.toString();
                                        }
                                        float f = (float) i;
                                        return new l(str, null, new m[]{new m(((float) (iArr2[c3] + iArr2[0])) / 2.0f, f), new m(((float) nextSet2) + (((float) i12) / 2.0f), f)}, BarcodeFormat.CODE_39);
                                    }
                                    throw h.getNotFoundInstance();
                                }
                                throw h.getNotFoundInstance();
                            }
                            int i18 = i;
                            nextSet2 = nextSet3;
                        } else {
                            throw h.getNotFoundInstance();
                        }
                    }
                }
                iArr[i4] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw h.getNotFoundInstance();
    }

    private static int a(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            } else if (i4 <= 3) {
                return -1;
            } else {
                i = i2;
            }
        }
    }
}
