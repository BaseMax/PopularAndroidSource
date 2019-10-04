package c.e.a.b.g.f;

public final class Tc implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final Uc f10229a = new Uc();

    /* renamed from: b  reason: collision with root package name */
    public boolean f10230b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f10231c;

    /* renamed from: d  reason: collision with root package name */
    public Uc[] f10232d;

    /* renamed from: e  reason: collision with root package name */
    public int f10233e;

    public Tc() {
        this(10);
    }

    public final void a(int i2, Uc uc) {
        int d2 = d(i2);
        if (d2 >= 0) {
            this.f10232d[d2] = uc;
            return;
        }
        int i3 = d2 ^ -1;
        if (i3 < this.f10233e) {
            Uc[] ucArr = this.f10232d;
            if (ucArr[i3] == f10229a) {
                this.f10231c[i3] = i2;
                ucArr[i3] = uc;
                return;
            }
        }
        int i4 = this.f10233e;
        if (i4 >= this.f10231c.length) {
            int a2 = a(i4 + 1);
            int[] iArr = new int[a2];
            Uc[] ucArr2 = new Uc[a2];
            int[] iArr2 = this.f10231c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Uc[] ucArr3 = this.f10232d;
            System.arraycopy(ucArr3, 0, ucArr2, 0, ucArr3.length);
            this.f10231c = iArr;
            this.f10232d = ucArr2;
        }
        int i5 = this.f10233e;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f10231c;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Uc[] ucArr4 = this.f10232d;
            System.arraycopy(ucArr4, i3, ucArr4, i6, this.f10233e - i3);
        }
        this.f10231c[i3] = i2;
        this.f10232d[i3] = uc;
        this.f10233e++;
    }

    public final Uc b(int i2) {
        int d2 = d(i2);
        if (d2 >= 0) {
            Uc[] ucArr = this.f10232d;
            if (ucArr[d2] != f10229a) {
                return ucArr[d2];
            }
        }
        return null;
    }

    public final Uc c(int i2) {
        return this.f10232d[i2];
    }

    public final /* synthetic */ Object clone() {
        int i2 = this.f10233e;
        Tc tc = new Tc(i2);
        System.arraycopy(this.f10231c, 0, tc.f10231c, 0, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            Uc[] ucArr = this.f10232d;
            if (ucArr[i3] != null) {
                tc.f10232d[i3] = (Uc) ucArr[i3].clone();
            }
        }
        tc.f10233e = i2;
        return tc;
    }

    public final int d(int i2) {
        int i3 = this.f10233e - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = this.f10231c[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return i4 ^ -1;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tc)) {
            return false;
        }
        Tc tc = (Tc) obj;
        int i2 = this.f10233e;
        if (i2 != tc.f10233e) {
            return false;
        }
        int[] iArr = this.f10231c;
        int[] iArr2 = tc.f10231c;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                z = true;
                break;
            } else if (iArr[i3] != iArr2[i3]) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        if (z) {
            Uc[] ucArr = this.f10232d;
            Uc[] ucArr2 = tc.f10232d;
            int i4 = this.f10233e;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z2 = true;
                    break;
                } else if (!ucArr[i5].equals(ucArr2[i5])) {
                    z2 = false;
                    break;
                } else {
                    i5++;
                }
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = 17;
        for (int i3 = 0; i3 < this.f10233e; i3++) {
            i2 = (((i2 * 31) + this.f10231c[i3]) * 31) + this.f10232d[i3].hashCode();
        }
        return i2;
    }

    public Tc(int i2) {
        this.f10230b = false;
        int a2 = a(i2);
        this.f10231c = new int[a2];
        this.f10232d = new Uc[a2];
        this.f10233e = 0;
    }

    public final int b() {
        return this.f10233e;
    }

    public final boolean a() {
        return this.f10233e == 0;
    }

    public static int a(int i2) {
        int i3 = i2 << 2;
        int i4 = 4;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (i3 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        return i3 / 4;
    }
}
