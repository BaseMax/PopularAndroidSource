package c.e.a.b.g.f;

public final class Z extends Rc<Z> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile Z[] f10296c;

    /* renamed from: d  reason: collision with root package name */
    public String f10297d = null;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f10298e = null;

    /* renamed from: f  reason: collision with root package name */
    public Boolean f10299f = null;

    /* renamed from: g  reason: collision with root package name */
    public Integer f10300g = null;

    public Z() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static Z[] d() {
        if (f10296c == null) {
            synchronized (Vc.f10250c) {
                if (f10296c == null) {
                    f10296c = new Z[0];
                }
            }
        }
        return f10296c;
    }

    public final void a(Qc qc) {
        String str = this.f10297d;
        if (str != null) {
            qc.a(1, str);
        }
        Boolean bool = this.f10298e;
        if (bool != null) {
            qc.a(2, bool.booleanValue());
        }
        Boolean bool2 = this.f10299f;
        if (bool2 != null) {
            qc.a(3, bool2.booleanValue());
        }
        Integer num = this.f10300g;
        if (num != null) {
            qc.b(4, num.intValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z = (Z) obj;
        String str = this.f10297d;
        if (str == null) {
            if (z.f10297d != null) {
                return false;
            }
        } else if (!str.equals(z.f10297d)) {
            return false;
        }
        Boolean bool = this.f10298e;
        if (bool == null) {
            if (z.f10298e != null) {
                return false;
            }
        } else if (!bool.equals(z.f10298e)) {
            return false;
        }
        Boolean bool2 = this.f10299f;
        if (bool2 == null) {
            if (z.f10299f != null) {
                return false;
            }
        } else if (!bool2.equals(z.f10299f)) {
            return false;
        }
        Integer num = this.f10300g;
        if (num == null) {
            if (z.f10300g != null) {
                return false;
            }
        } else if (!num.equals(z.f10300g)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(z.f10213b);
        }
        Tc tc2 = z.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (Z.class.getName().hashCode() + 527) * 31;
        String str = this.f10297d;
        int i2 = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f10298e;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f10299f;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.f10300g;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode5 + i2;
    }

    public final int a() {
        int a2 = super.a();
        String str = this.f10297d;
        if (str != null) {
            a2 += Qc.b(1, str);
        }
        Boolean bool = this.f10298e;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(2) + 1;
        }
        Boolean bool2 = this.f10299f;
        if (bool2 != null) {
            bool2.booleanValue();
            a2 += Qc.a(3) + 1;
        }
        Integer num = this.f10300g;
        return num != null ? a2 + Qc.c(4, num.intValue()) : a2;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 10) {
                this.f10297d = pc.b();
            } else if (c2 == 16) {
                this.f10298e = Boolean.valueOf(pc.d());
            } else if (c2 == 24) {
                this.f10299f = Boolean.valueOf(pc.d());
            } else if (c2 == 32) {
                this.f10300g = Integer.valueOf(pc.e());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
