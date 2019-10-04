package com.google.zxing.pdf417.a;

import com.google.zxing.m;

final class h extends g {
    final boolean c;

    h(c cVar, boolean z) {
        super(cVar);
        this.c = z;
    }

    /* access modifiers changed from: package-private */
    public final int[] a() {
        m mVar;
        m mVar2;
        a b2 = b();
        if (b2 == null) {
            return null;
        }
        c cVar = this.f4379a;
        if (this.c) {
            mVar = cVar.f4370b;
        } else {
            mVar = cVar.d;
        }
        if (this.c) {
            mVar2 = cVar.c;
        } else {
            mVar2 = cVar.e;
        }
        int b3 = b((int) mVar2.getY());
        d[] dVarArr = this.f4380b;
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        for (int b4 = b((int) mVar.getY()); b4 < b3; b4++) {
            if (dVarArr[b4] != null) {
                d dVar = dVarArr[b4];
                dVar.b();
                int i4 = dVar.e - i;
                if (i4 == 0) {
                    i2++;
                } else {
                    if (i4 == 1) {
                        i3 = Math.max(i3, i2);
                        i = dVar.e;
                    } else if (dVar.e >= b2.e) {
                        dVarArr[b4] = null;
                    } else {
                        i = dVar.e;
                    }
                    i2 = 1;
                }
            }
        }
        int[] iArr = new int[b2.e];
        for (d dVar2 : this.f4380b) {
            if (dVar2 != null) {
                int i5 = dVar2.e;
                if (i5 < iArr.length) {
                    iArr[i5] = iArr[i5] + 1;
                }
            }
        }
        return iArr;
    }

    /* access modifiers changed from: package-private */
    public final void a(d[] dVarArr, a aVar) {
        for (int i = 0; i < dVarArr.length; i++) {
            d dVar = dVarArr[i];
            if (dVarArr[i] != null) {
                int i2 = dVar.d % 30;
                int i3 = dVar.e;
                if (i3 > aVar.e) {
                    dVarArr[i] = null;
                } else {
                    if (!this.c) {
                        i3 += 2;
                    }
                    int i4 = i3 % 3;
                    if (i4 != 0) {
                        if (i4 != 1) {
                            if (i4 == 2 && i2 + 1 != aVar.f4361a) {
                                dVarArr[i] = null;
                            }
                        } else if (i2 / 3 != aVar.f4362b || i2 % 3 != aVar.d) {
                            dVarArr[i] = null;
                        }
                    } else if ((i2 * 3) + 1 != aVar.c) {
                        dVarArr[i] = null;
                    }
                }
            }
        }
    }

    public final String toString() {
        return "IsLeft: " + this.c + 10 + super.toString();
    }

    /* access modifiers changed from: package-private */
    public final a b() {
        d[] dVarArr = this.f4380b;
        b bVar = new b();
        b bVar2 = new b();
        b bVar3 = new b();
        b bVar4 = new b();
        for (d dVar : dVarArr) {
            if (dVar != null) {
                dVar.b();
                int i = dVar.d % 30;
                int i2 = dVar.e;
                if (!this.c) {
                    i2 += 2;
                }
                int i3 = i2 % 3;
                if (i3 == 0) {
                    bVar2.a((i * 3) + 1);
                } else if (i3 == 1) {
                    bVar4.a(i / 3);
                    bVar3.a(i % 3);
                } else if (i3 == 2) {
                    bVar.a(i + 1);
                }
            }
        }
        if (bVar.a().length == 0 || bVar2.a().length == 0 || bVar3.a().length == 0 || bVar4.a().length == 0 || bVar.a()[0] <= 0 || bVar2.a()[0] + bVar3.a()[0] < 3 || bVar2.a()[0] + bVar3.a()[0] > 90) {
            return null;
        }
        a aVar = new a(bVar.a()[0], bVar2.a()[0], bVar3.a()[0], bVar4.a()[0]);
        a(dVarArr, aVar);
        return aVar;
    }
}
