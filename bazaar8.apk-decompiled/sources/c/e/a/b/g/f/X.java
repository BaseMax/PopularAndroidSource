package c.e.a.b.g.f;

public final class X extends Rc<X> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile X[] f10276c;

    /* renamed from: d  reason: collision with root package name */
    public Integer f10277d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f10278e = null;

    /* renamed from: f  reason: collision with root package name */
    public U f10279f = null;

    /* renamed from: g  reason: collision with root package name */
    public Boolean f10280g = null;

    /* renamed from: h  reason: collision with root package name */
    public Boolean f10281h = null;

    public X() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static X[] d() {
        if (f10276c == null) {
            synchronized (Vc.f10250c) {
                if (f10276c == null) {
                    f10276c = new X[0];
                }
            }
        }
        return f10276c;
    }

    public final void a(Qc qc) {
        Integer num = this.f10277d;
        if (num != null) {
            qc.b(1, num.intValue());
        }
        String str = this.f10278e;
        if (str != null) {
            qc.a(2, str);
        }
        U u = this.f10279f;
        if (u != null) {
            qc.a(3, (Wc) u);
        }
        Boolean bool = this.f10280g;
        if (bool != null) {
            qc.a(4, bool.booleanValue());
        }
        Boolean bool2 = this.f10281h;
        if (bool2 != null) {
            qc.a(5, bool2.booleanValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X)) {
            return false;
        }
        X x = (X) obj;
        Integer num = this.f10277d;
        if (num == null) {
            if (x.f10277d != null) {
                return false;
            }
        } else if (!num.equals(x.f10277d)) {
            return false;
        }
        String str = this.f10278e;
        if (str == null) {
            if (x.f10278e != null) {
                return false;
            }
        } else if (!str.equals(x.f10278e)) {
            return false;
        }
        U u = this.f10279f;
        if (u == null) {
            if (x.f10279f != null) {
                return false;
            }
        } else if (!u.equals(x.f10279f)) {
            return false;
        }
        Boolean bool = this.f10280g;
        if (bool == null) {
            if (x.f10280g != null) {
                return false;
            }
        } else if (!bool.equals(x.f10280g)) {
            return false;
        }
        Boolean bool2 = this.f10281h;
        if (bool2 == null) {
            if (x.f10281h != null) {
                return false;
            }
        } else if (!bool2.equals(x.f10281h)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(x.f10213b);
        }
        Tc tc2 = x.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int i2;
        int hashCode = (X.class.getName().hashCode() + 527) * 31;
        Integer num = this.f10277d;
        int i3 = 0;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f10278e;
        int hashCode3 = hashCode2 + (str == null ? 0 : str.hashCode());
        U u = this.f10279f;
        int i4 = hashCode3 * 31;
        if (u == null) {
            i2 = 0;
        } else {
            i2 = u.hashCode();
        }
        int i5 = (i4 + i2) * 31;
        Boolean bool = this.f10280g;
        int hashCode4 = (i5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f10281h;
        int hashCode5 = (hashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i3 = this.f10213b.hashCode();
        }
        return hashCode5 + i3;
    }

    public final int a() {
        int a2 = super.a();
        Integer num = this.f10277d;
        if (num != null) {
            a2 += Qc.c(1, num.intValue());
        }
        String str = this.f10278e;
        if (str != null) {
            a2 += Qc.b(2, str);
        }
        U u = this.f10279f;
        if (u != null) {
            a2 += Qc.b(3, (Wc) u);
        }
        Boolean bool = this.f10280g;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(4) + 1;
        }
        Boolean bool2 = this.f10281h;
        if (bool2 == null) {
            return a2;
        }
        bool2.booleanValue();
        return a2 + Qc.a(5) + 1;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                this.f10277d = Integer.valueOf(pc.e());
            } else if (c2 == 18) {
                this.f10278e = pc.b();
            } else if (c2 == 26) {
                if (this.f10279f == null) {
                    this.f10279f = new U();
                }
                pc.a((Wc) this.f10279f);
            } else if (c2 == 32) {
                this.f10280g = Boolean.valueOf(pc.d());
            } else if (c2 == 40) {
                this.f10281h = Boolean.valueOf(pc.d());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
