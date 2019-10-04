package com.google.zxing.common.b;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f4310a;

    public c(a aVar) {
        this.f4310a = aVar;
    }

    public final void decode(int[] iArr, int i) throws d {
        b bVar;
        int[] iArr2 = iArr;
        int i2 = i;
        b bVar2 = new b(this.f4310a, iArr2);
        int[] iArr3 = new int[i2];
        boolean z = true;
        for (int i3 = 0; i3 < i2; i3++) {
            a aVar = this.f4310a;
            int b2 = bVar2.b(aVar.f4306a[aVar.getGeneratorBase() + i3]);
            iArr3[(i2 - 1) - i3] = b2;
            if (b2 != 0) {
                z = false;
            }
        }
        if (!z) {
            b bVar3 = new b(this.f4310a, iArr3);
            b a2 = this.f4310a.a(i2, 1);
            if (a2.f4309b.length - 1 >= bVar3.f4309b.length - 1) {
                b bVar4 = a2;
                a2 = bVar3;
                bVar3 = bVar4;
            }
            b bVar5 = this.f4310a.f4307b;
            b bVar6 = a2;
            b bVar7 = bVar3;
            b bVar8 = bVar6;
            b bVar9 = bVar5;
            b bVar10 = this.f4310a.c;
            while (bVar8.f4309b.length - 1 >= i2 / 2) {
                if (!bVar8.a()) {
                    b bVar11 = this.f4310a.f4307b;
                    int b3 = this.f4310a.b(bVar8.a(bVar8.f4309b.length - 1));
                    while (bVar7.f4309b.length - 1 >= bVar8.f4309b.length - 1 && !bVar7.a()) {
                        int length = (bVar7.f4309b.length - 1) - (bVar8.f4309b.length - 1);
                        int c = this.f4310a.c(bVar7.a(bVar7.f4309b.length - 1), b3);
                        bVar11 = bVar11.a(this.f4310a.a(length, c));
                        if (length >= 0) {
                            if (c == 0) {
                                bVar = bVar8.f4308a.f4307b;
                            } else {
                                int length2 = bVar8.f4309b.length;
                                int[] iArr4 = new int[(length + length2)];
                                for (int i4 = 0; i4 < length2; i4++) {
                                    iArr4[i4] = bVar8.f4308a.c(bVar8.f4309b[i4], c);
                                }
                                bVar = new b(bVar8.f4308a, iArr4);
                            }
                            bVar7 = bVar7.a(bVar);
                        } else {
                            throw new IllegalArgumentException();
                        }
                    }
                    b a3 = bVar11.b(bVar10).a(bVar9);
                    if (bVar7.f4309b.length - 1 < bVar8.f4309b.length - 1) {
                        bVar9 = bVar10;
                        bVar10 = a3;
                        b bVar12 = bVar7;
                        bVar7 = bVar8;
                        bVar8 = bVar12;
                    } else {
                        throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
                    }
                } else {
                    throw new d("r_{i-1} was zero");
                }
            }
            int i5 = 0;
            int a4 = bVar10.a(0);
            if (a4 != 0) {
                int b4 = this.f4310a.b(a4);
                b[] bVarArr = {bVar10.c(b4), bVar8.c(b4)};
                b bVar13 = bVarArr[0];
                b bVar14 = bVarArr[1];
                int[] a5 = a(bVar13);
                int[] a6 = a(bVar14, a5);
                while (i5 < a5.length) {
                    int length3 = (iArr2.length - 1) - this.f4310a.a(a5[i5]);
                    if (length3 >= 0) {
                        iArr2[length3] = a.b(iArr2[length3], a6[i5]);
                        i5++;
                    } else {
                        throw new d("Bad error location");
                    }
                }
                return;
            }
            throw new d("sigmaTilde(0) was zero");
        }
    }

    private int[] a(b bVar, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int b2 = this.f4310a.b(iArr[i]);
            int i2 = 1;
            for (int i3 = 0; i3 < length; i3++) {
                if (i != i3) {
                    int c = this.f4310a.c(iArr[i3], b2);
                    i2 = this.f4310a.c(i2, (c & 1) == 0 ? c | 1 : c & -2);
                }
            }
            iArr2[i] = this.f4310a.c(bVar.b(b2), this.f4310a.b(i2));
            if (this.f4310a.getGeneratorBase() != 0) {
                iArr2[i] = this.f4310a.c(iArr2[i], b2);
            }
        }
        return iArr2;
    }

    private int[] a(b bVar) throws d {
        int length = bVar.f4309b.length - 1;
        int i = 0;
        if (length == 1) {
            return new int[]{bVar.a(1)};
        }
        int[] iArr = new int[length];
        for (int i2 = 1; i2 < this.f4310a.getSize() && i < length; i2++) {
            if (bVar.b(i2) == 0) {
                iArr[i] = this.f4310a.b(i2);
                i++;
            }
        }
        if (i == length) {
            return iArr;
        }
        throw new d("Error locator degree does not match number of roots");
    }
}
