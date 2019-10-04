package c.e.a.b.g.f;

public final class U extends Rc<U> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile U[] f10234c;

    /* renamed from: d  reason: collision with root package name */
    public Y f10235d = null;

    /* renamed from: e  reason: collision with root package name */
    public W f10236e = null;

    /* renamed from: f  reason: collision with root package name */
    public Boolean f10237f = null;

    /* renamed from: g  reason: collision with root package name */
    public String f10238g = null;

    public U() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static U[] d() {
        if (f10234c == null) {
            synchronized (Vc.f10250c) {
                if (f10234c == null) {
                    f10234c = new U[0];
                }
            }
        }
        return f10234c;
    }

    public final void a(Qc qc) {
        Y y = this.f10235d;
        if (y != null) {
            qc.a(1, (Wc) y);
        }
        W w = this.f10236e;
        if (w != null) {
            qc.a(2, (Wc) w);
        }
        Boolean bool = this.f10237f;
        if (bool != null) {
            qc.a(3, bool.booleanValue());
        }
        String str = this.f10238g;
        if (str != null) {
            qc.a(4, str);
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof U)) {
            return false;
        }
        U u = (U) obj;
        Y y = this.f10235d;
        if (y == null) {
            if (u.f10235d != null) {
                return false;
            }
        } else if (!y.equals(u.f10235d)) {
            return false;
        }
        W w = this.f10236e;
        if (w == null) {
            if (u.f10236e != null) {
                return false;
            }
        } else if (!w.equals(u.f10236e)) {
            return false;
        }
        Boolean bool = this.f10237f;
        if (bool == null) {
            if (u.f10237f != null) {
                return false;
            }
        } else if (!bool.equals(u.f10237f)) {
            return false;
        }
        String str = this.f10238g;
        if (str == null) {
            if (u.f10238g != null) {
                return false;
            }
        } else if (!str.equals(u.f10238g)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(u.f10213b);
        }
        Tc tc2 = u.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int i2;
        int i3;
        Y y = this.f10235d;
        int hashCode = (U.class.getName().hashCode() + 527) * 31;
        int i4 = 0;
        if (y == null) {
            i2 = 0;
        } else {
            i2 = y.hashCode();
        }
        int i5 = hashCode + i2;
        W w = this.f10236e;
        int i6 = i5 * 31;
        if (w == null) {
            i3 = 0;
        } else {
            i3 = w.hashCode();
        }
        int i7 = (i6 + i3) * 31;
        Boolean bool = this.f10237f;
        int hashCode2 = (i7 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.f10238g;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i4 = this.f10213b.hashCode();
        }
        return hashCode3 + i4;
    }

    public final int a() {
        int a2 = super.a();
        Y y = this.f10235d;
        if (y != null) {
            a2 += Qc.b(1, (Wc) y);
        }
        W w = this.f10236e;
        if (w != null) {
            a2 += Qc.b(2, (Wc) w);
        }
        Boolean bool = this.f10237f;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(3) + 1;
        }
        String str = this.f10238g;
        return str != null ? a2 + Qc.b(4, str) : a2;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 10) {
                if (this.f10235d == null) {
                    this.f10235d = new Y();
                }
                pc.a((Wc) this.f10235d);
            } else if (c2 == 18) {
                if (this.f10236e == null) {
                    this.f10236e = new W();
                }
                pc.a((Wc) this.f10236e);
            } else if (c2 == 24) {
                this.f10237f = Boolean.valueOf(pc.d());
            } else if (c2 == 34) {
                this.f10238g = pc.b();
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
