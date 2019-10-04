package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.b;
import com.google.zxing.d;

final class a {

    /* renamed from: a  reason: collision with root package name */
    final b f4408a;

    /* renamed from: b  reason: collision with root package name */
    h f4409b;
    f c;
    boolean d;

    a(b bVar) throws d {
        int height = bVar.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw d.getFormatInstance();
        }
        this.f4408a = bVar;
    }

    /* access modifiers changed from: package-private */
    public final f a() throws d {
        f fVar = this.c;
        if (fVar != null) {
            return fVar;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            i2 = a(i3, 8, i2);
        }
        int a2 = a(8, 7, a(8, 8, a(7, 8, i2)));
        for (int i4 = 5; i4 >= 0; i4--) {
            a2 = a(8, i4, a2);
        }
        int height = this.f4408a.getHeight();
        int i5 = height - 7;
        for (int i6 = height - 1; i6 >= i5; i6--) {
            i = a(8, i6, i);
        }
        for (int i7 = height - 8; i7 < height; i7++) {
            i = a(i7, 8, i);
        }
        this.c = f.b(a2, i);
        f fVar2 = this.c;
        if (fVar2 != null) {
            return fVar2;
        }
        throw d.getFormatInstance();
    }

    /* access modifiers changed from: package-private */
    public final h b() throws d {
        h hVar = this.f4409b;
        if (hVar != null) {
            return hVar;
        }
        int height = this.f4408a.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return h.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = height - 9; i6 >= i2; i6--) {
                i4 = a(i6, i5, i4);
            }
        }
        h a2 = h.a(i4);
        if (a2 == null || a2.getDimensionForVersion() != height) {
            for (int i7 = 5; i7 >= 0; i7--) {
                for (int i8 = height - 9; i8 >= i2; i8--) {
                    i3 = a(i7, i8, i3);
                }
            }
            h a3 = h.a(i3);
            if (a3 == null || a3.getDimensionForVersion() != height) {
                throw d.getFormatInstance();
            }
            this.f4409b = a3;
            return a3;
        }
        this.f4409b = a2;
        return a2;
    }

    private int a(int i, int i2, int i3) {
        return this.d ? this.f4408a.get(i2, i) : this.f4408a.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    /* access modifiers changed from: package-private */
    public final byte[] c() throws d {
        int i;
        f a2 = a();
        h b2 = b();
        c cVar = c.values()[a2.f4417b];
        int height = this.f4408a.getHeight();
        cVar.a(this.f4408a, height);
        int dimensionForVersion = b2.getDimensionForVersion();
        b bVar = new b(dimensionForVersion);
        bVar.setRegion(0, 0, 9, 9);
        int i2 = dimensionForVersion - 8;
        bVar.setRegion(i2, 0, 8, 9);
        bVar.setRegion(0, i2, 9, 8);
        int length = b2.f4420b.length;
        int i3 = 0;
        while (true) {
            i = 2;
            if (i3 >= length) {
                break;
            }
            int i4 = b2.f4420b[i3] - 2;
            for (int i5 = 0; i5 < length; i5++) {
                if (!((i3 == 0 && (i5 == 0 || i5 == length - 1)) || (i3 == length - 1 && i5 == 0))) {
                    bVar.setRegion(b2.f4420b[i5] - 2, i4, 5, 5);
                }
            }
            i3++;
        }
        int i6 = dimensionForVersion - 17;
        int i7 = 6;
        bVar.setRegion(6, 9, 1, i6);
        bVar.setRegion(9, 6, i6, 1);
        if (b2.f4419a > 6) {
            int i8 = dimensionForVersion - 11;
            bVar.setRegion(i8, 0, 3, 6);
            bVar.setRegion(0, i8, 6, 3);
        }
        byte[] bArr = new byte[b2.getTotalCodewords()];
        int i9 = height - 1;
        int i10 = i9;
        int i11 = 0;
        boolean z = true;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            if (i10 == i7) {
                i10--;
            }
            int i14 = i13;
            int i15 = i12;
            int i16 = i11;
            int i17 = 0;
            while (i17 < height) {
                int i18 = z ? i9 - i17 : i17;
                int i19 = i14;
                int i20 = i15;
                int i21 = i16;
                int i22 = 0;
                while (i22 < i) {
                    int i23 = i10 - i22;
                    if (!bVar.get(i23, i18)) {
                        i20++;
                        int i24 = i19 << 1;
                        int i25 = this.f4408a.get(i23, i18) ? i24 | 1 : i24;
                        if (i20 == 8) {
                            bArr[i21] = (byte) i25;
                            i21++;
                            i20 = 0;
                            i19 = 0;
                        } else {
                            i19 = i25;
                        }
                    }
                    i22++;
                    i = 2;
                }
                i17++;
                i16 = i21;
                i15 = i20;
                i14 = i19;
                i = 2;
            }
            z = !z;
            i10 -= 2;
            i11 = i16;
            i12 = i15;
            i13 = i14;
            i7 = 6;
            i = 2;
        }
        if (i11 == b2.getTotalCodewords()) {
            return bArr;
        }
        throw d.getFormatInstance();
    }
}
