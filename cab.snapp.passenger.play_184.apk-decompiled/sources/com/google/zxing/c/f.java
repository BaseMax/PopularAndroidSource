package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.common.a;
import com.google.zxing.h;

public final class f extends p {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f4281a = new int[4];

    /* access modifiers changed from: protected */
    public final int a(a aVar, int[] iArr, StringBuilder sb) throws h {
        int[] iArr2 = this.f4281a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = aVar.getSize();
        int i = iArr[1];
        int i2 = 0;
        while (i2 < 4 && i < size) {
            sb.append((char) (a(aVar, iArr2, i, e) + 48));
            int i3 = i;
            for (int i4 : iArr2) {
                i3 += i4;
            }
            i2++;
            i = i3;
        }
        int i5 = a(aVar, i, true, c)[1];
        int i6 = 0;
        while (i6 < 4 && i5 < size) {
            sb.append((char) (a(aVar, iArr2, i5, e) + 48));
            int i7 = i5;
            for (int i8 : iArr2) {
                i7 += i8;
            }
            i6++;
            i5 = i7;
        }
        return i5;
    }

    /* access modifiers changed from: package-private */
    public final BarcodeFormat a() {
        return BarcodeFormat.EAN_8;
    }
}
