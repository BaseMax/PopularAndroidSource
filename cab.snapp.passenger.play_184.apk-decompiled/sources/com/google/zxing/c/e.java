package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.common.a;
import com.google.zxing.h;

public final class e extends p {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f4280a = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    private final int[] g = new int[4];

    /* access modifiers changed from: protected */
    public final int a(a aVar, int[] iArr, StringBuilder sb) throws h {
        int[] iArr2 = this.g;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = aVar.getSize();
        int i = iArr[1];
        int i2 = 0;
        int i3 = 0;
        while (i2 < 6 && i < size) {
            int a2 = a(aVar, iArr2, i, f);
            sb.append((char) ((a2 % 10) + 48));
            int i4 = i;
            for (int i5 : iArr2) {
                i4 += i5;
            }
            if (a2 >= 10) {
                i3 = (1 << (5 - i2)) | i3;
            }
            i2++;
            i = i4;
        }
        for (int i6 = 0; i6 < 10; i6++) {
            if (i3 == f4280a[i6]) {
                sb.insert(0, (char) (i6 + 48));
                int i7 = a(aVar, i, true, c)[1];
                int i8 = 0;
                while (i8 < 6 && i7 < size) {
                    sb.append((char) (a(aVar, iArr2, i7, e) + 48));
                    int i9 = i7;
                    for (int i10 : iArr2) {
                        i9 += i10;
                    }
                    i8++;
                    i7 = i9;
                }
                return i7;
            }
        }
        throw h.getNotFoundInstance();
    }

    /* access modifiers changed from: package-private */
    public final BarcodeFormat a() {
        return BarcodeFormat.EAN_13;
    }
}
