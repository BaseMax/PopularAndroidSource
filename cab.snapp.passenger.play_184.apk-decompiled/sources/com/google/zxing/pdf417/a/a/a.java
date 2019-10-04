package com.google.zxing.pdf417.a.a;

import com.google.zxing.c;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final b f4363a = b.PDF417_GF;

    public final int decode(int[] iArr, int i, int[] iArr2) throws c {
        int i2;
        c cVar;
        int[] iArr3 = iArr;
        int i3 = i;
        int[] iArr4 = iArr2;
        c cVar2 = new c(this.f4363a, iArr3);
        int[] iArr5 = new int[i3];
        int i4 = 0;
        int i5 = i3;
        boolean z = false;
        while (true) {
            i2 = 1;
            if (i5 <= 0) {
                break;
            }
            int b2 = cVar2.b(this.f4363a.f4364a[i5]);
            iArr5[i3 - i5] = b2;
            if (b2 != 0) {
                z = true;
            }
            i5--;
        }
        if (!z) {
            return 0;
        }
        c cVar3 = this.f4363a.d;
        if (iArr4 != null) {
            c cVar4 = cVar3;
            for (int length : iArr4) {
                int i6 = this.f4363a.f4364a[(iArr3.length - 1) - length];
                b bVar = this.f4363a;
                cVar4 = cVar4.c(new c(bVar, new int[]{bVar.c(0, i6), 1}));
            }
        }
        c cVar5 = new c(this.f4363a, iArr5);
        c a2 = this.f4363a.a(i3, 1);
        if (a2.f4367b.length - 1 >= cVar5.f4367b.length - 1) {
            c cVar6 = a2;
            a2 = cVar5;
            cVar5 = cVar6;
        }
        c cVar7 = a2;
        c cVar8 = cVar5;
        c cVar9 = cVar7;
        c cVar10 = this.f4363a.c;
        c cVar11 = this.f4363a.d;
        while (cVar9.f4367b.length - i2 >= i3 / 2) {
            if (!cVar9.a()) {
                c cVar12 = this.f4363a.c;
                int a3 = this.f4363a.a(cVar9.a(cVar9.f4367b.length - i2));
                while (cVar8.f4367b.length - i2 >= cVar9.f4367b.length - i2 && !cVar8.a()) {
                    int length2 = (cVar8.f4367b.length - i2) - (cVar9.f4367b.length - i2);
                    int d = this.f4363a.d(cVar8.a(cVar8.f4367b.length - i2), a3);
                    cVar12 = cVar12.a(this.f4363a.a(length2, d));
                    if (length2 >= 0) {
                        if (d == 0) {
                            cVar = cVar9.f4366a.c;
                        } else {
                            int length3 = cVar9.f4367b.length;
                            int[] iArr6 = new int[(length2 + length3)];
                            for (int i7 = 0; i7 < length3; i7++) {
                                iArr6[i7] = cVar9.f4366a.d(cVar9.f4367b[i7], d);
                            }
                            cVar = new c(cVar9.f4366a, iArr6);
                        }
                        cVar8 = cVar8.b(cVar);
                        i2 = 1;
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                cVar10 = cVar11;
                cVar11 = cVar12.c(cVar11).b(cVar10).b();
                i2 = 1;
                c cVar13 = cVar8;
                cVar8 = cVar9;
                cVar9 = cVar13;
            } else {
                throw c.getChecksumInstance();
            }
        }
        int a4 = cVar11.a(0);
        if (a4 != 0) {
            int a5 = this.f4363a.a(a4);
            c[] cVarArr = {cVar11.c(a5), cVar9.c(a5)};
            c cVar14 = cVarArr[0];
            c cVar15 = cVarArr[1];
            int[] a6 = a(cVar14);
            int[] a7 = a(cVar15, cVar14, a6);
            while (i4 < a6.length) {
                int length4 = iArr3.length - 1;
                b bVar2 = this.f4363a;
                int i8 = a6[i4];
                if (i8 != 0) {
                    int i9 = length4 - bVar2.f4365b[i8];
                    if (i9 >= 0) {
                        iArr3[i9] = this.f4363a.c(iArr3[i9], a7[i4]);
                        i4++;
                    } else {
                        throw c.getChecksumInstance();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            return a6.length;
        }
        throw c.getChecksumInstance();
    }

    private int[] a(c cVar) throws c {
        int length = cVar.f4367b.length - 1;
        int[] iArr = new int[length];
        int i = 0;
        for (int i2 = 1; i2 < this.f4363a.e && i < length; i2++) {
            if (cVar.b(i2) == 0) {
                iArr[i] = this.f4363a.a(i2);
                i++;
            }
        }
        if (i == length) {
            return iArr;
        }
        throw c.getChecksumInstance();
    }

    private int[] a(c cVar, c cVar2, int[] iArr) {
        int length = cVar2.f4367b.length - 1;
        int[] iArr2 = new int[length];
        for (int i = 1; i <= length; i++) {
            iArr2[length - i] = this.f4363a.d(i, cVar2.a(i));
        }
        c cVar3 = new c(this.f4363a, iArr2);
        int length2 = iArr.length;
        int[] iArr3 = new int[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int a2 = this.f4363a.a(iArr[i2]);
            iArr3[i2] = this.f4363a.d(this.f4363a.c(0, cVar.b(a2)), this.f4363a.a(cVar3.b(a2)));
        }
        return iArr3;
    }
}
