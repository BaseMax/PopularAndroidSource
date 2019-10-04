package c.e.a.b.g.f;

public final class T extends Rc<T> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile T[] f10221c;

    /* renamed from: d  reason: collision with root package name */
    public Integer f10222d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f10223e = null;

    /* renamed from: f  reason: collision with root package name */
    public U[] f10224f = U.d();

    /* renamed from: g  reason: collision with root package name */
    public Boolean f10225g = null;

    /* renamed from: h  reason: collision with root package name */
    public W f10226h = null;

    /* renamed from: i  reason: collision with root package name */
    public Boolean f10227i = null;

    /* renamed from: j  reason: collision with root package name */
    public Boolean f10228j = null;

    public T() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static T[] d() {
        if (f10221c == null) {
            synchronized (Vc.f10250c) {
                if (f10221c == null) {
                    f10221c = new T[0];
                }
            }
        }
        return f10221c;
    }

    public final void a(Qc qc) {
        Integer num = this.f10222d;
        if (num != null) {
            qc.b(1, num.intValue());
        }
        String str = this.f10223e;
        if (str != null) {
            qc.a(2, str);
        }
        U[] uArr = this.f10224f;
        if (uArr != null && uArr.length > 0) {
            int i2 = 0;
            while (true) {
                U[] uArr2 = this.f10224f;
                if (i2 >= uArr2.length) {
                    break;
                }
                U u = uArr2[i2];
                if (u != null) {
                    qc.a(3, (Wc) u);
                }
                i2++;
            }
        }
        Boolean bool = this.f10225g;
        if (bool != null) {
            qc.a(4, bool.booleanValue());
        }
        W w = this.f10226h;
        if (w != null) {
            qc.a(5, (Wc) w);
        }
        Boolean bool2 = this.f10227i;
        if (bool2 != null) {
            qc.a(6, bool2.booleanValue());
        }
        Boolean bool3 = this.f10228j;
        if (bool3 != null) {
            qc.a(7, bool3.booleanValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof T)) {
            return false;
        }
        T t = (T) obj;
        Integer num = this.f10222d;
        if (num == null) {
            if (t.f10222d != null) {
                return false;
            }
        } else if (!num.equals(t.f10222d)) {
            return false;
        }
        String str = this.f10223e;
        if (str == null) {
            if (t.f10223e != null) {
                return false;
            }
        } else if (!str.equals(t.f10223e)) {
            return false;
        }
        if (!Vc.a((Object[]) this.f10224f, (Object[]) t.f10224f)) {
            return false;
        }
        Boolean bool = this.f10225g;
        if (bool == null) {
            if (t.f10225g != null) {
                return false;
            }
        } else if (!bool.equals(t.f10225g)) {
            return false;
        }
        W w = this.f10226h;
        if (w == null) {
            if (t.f10226h != null) {
                return false;
            }
        } else if (!w.equals(t.f10226h)) {
            return false;
        }
        Boolean bool2 = this.f10227i;
        if (bool2 == null) {
            if (t.f10227i != null) {
                return false;
            }
        } else if (!bool2.equals(t.f10227i)) {
            return false;
        }
        Boolean bool3 = this.f10228j;
        if (bool3 == null) {
            if (t.f10228j != null) {
                return false;
            }
        } else if (!bool3.equals(t.f10228j)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(t.f10213b);
        }
        Tc tc2 = t.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int i2;
        int hashCode = (T.class.getName().hashCode() + 527) * 31;
        Integer num = this.f10222d;
        int i3 = 0;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f10223e;
        int hashCode3 = (((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + Vc.a((Object[]) this.f10224f)) * 31;
        Boolean bool = this.f10225g;
        int hashCode4 = hashCode3 + (bool == null ? 0 : bool.hashCode());
        W w = this.f10226h;
        int i4 = hashCode4 * 31;
        if (w == null) {
            i2 = 0;
        } else {
            i2 = w.hashCode();
        }
        int i5 = (i4 + i2) * 31;
        Boolean bool2 = this.f10227i;
        int hashCode5 = (i5 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f10228j;
        int hashCode6 = (hashCode5 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i3 = this.f10213b.hashCode();
        }
        return hashCode6 + i3;
    }

    public final int a() {
        int a2 = super.a();
        Integer num = this.f10222d;
        if (num != null) {
            a2 += Qc.c(1, num.intValue());
        }
        String str = this.f10223e;
        if (str != null) {
            a2 += Qc.b(2, str);
        }
        U[] uArr = this.f10224f;
        if (uArr != null && uArr.length > 0) {
            int i2 = 0;
            while (true) {
                U[] uArr2 = this.f10224f;
                if (i2 >= uArr2.length) {
                    break;
                }
                U u = uArr2[i2];
                if (u != null) {
                    a2 += Qc.b(3, (Wc) u);
                }
                i2++;
            }
        }
        Boolean bool = this.f10225g;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(4) + 1;
        }
        W w = this.f10226h;
        if (w != null) {
            a2 += Qc.b(5, (Wc) w);
        }
        Boolean bool2 = this.f10227i;
        if (bool2 != null) {
            bool2.booleanValue();
            a2 += Qc.a(6) + 1;
        }
        Boolean bool3 = this.f10228j;
        if (bool3 == null) {
            return a2;
        }
        bool3.booleanValue();
        return a2 + Qc.a(7) + 1;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                this.f10222d = Integer.valueOf(pc.e());
            } else if (c2 == 18) {
                this.f10223e = pc.b();
            } else if (c2 == 26) {
                int a2 = Zc.a(pc, 26);
                U[] uArr = this.f10224f;
                int length = uArr == null ? 0 : uArr.length;
                U[] uArr2 = new U[(a2 + length)];
                if (length != 0) {
                    System.arraycopy(this.f10224f, 0, uArr2, 0, length);
                }
                while (length < uArr2.length - 1) {
                    uArr2[length] = new U();
                    pc.a((Wc) uArr2[length]);
                    pc.c();
                    length++;
                }
                uArr2[length] = new U();
                pc.a((Wc) uArr2[length]);
                this.f10224f = uArr2;
            } else if (c2 == 32) {
                this.f10225g = Boolean.valueOf(pc.d());
            } else if (c2 == 42) {
                if (this.f10226h == null) {
                    this.f10226h = new W();
                }
                pc.a((Wc) this.f10226h);
            } else if (c2 == 48) {
                this.f10227i = Boolean.valueOf(pc.d());
            } else if (c2 == 56) {
                this.f10228j = Boolean.valueOf(pc.d());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
