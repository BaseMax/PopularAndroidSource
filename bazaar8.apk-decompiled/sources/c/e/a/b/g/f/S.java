package c.e.a.b.g.f;

public final class S extends Rc<S> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile S[] f10214c;

    /* renamed from: d  reason: collision with root package name */
    public Integer f10215d = null;

    /* renamed from: e  reason: collision with root package name */
    public X[] f10216e = X.d();

    /* renamed from: f  reason: collision with root package name */
    public T[] f10217f = T.d();

    /* renamed from: g  reason: collision with root package name */
    public Boolean f10218g = null;

    /* renamed from: h  reason: collision with root package name */
    public Boolean f10219h = null;

    public S() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static S[] d() {
        if (f10214c == null) {
            synchronized (Vc.f10250c) {
                if (f10214c == null) {
                    f10214c = new S[0];
                }
            }
        }
        return f10214c;
    }

    public final void a(Qc qc) {
        Integer num = this.f10215d;
        if (num != null) {
            qc.b(1, num.intValue());
        }
        X[] xArr = this.f10216e;
        int i2 = 0;
        if (xArr != null && xArr.length > 0) {
            int i3 = 0;
            while (true) {
                X[] xArr2 = this.f10216e;
                if (i3 >= xArr2.length) {
                    break;
                }
                X x = xArr2[i3];
                if (x != null) {
                    qc.a(2, (Wc) x);
                }
                i3++;
            }
        }
        T[] tArr = this.f10217f;
        if (tArr != null && tArr.length > 0) {
            while (true) {
                T[] tArr2 = this.f10217f;
                if (i2 >= tArr2.length) {
                    break;
                }
                T t = tArr2[i2];
                if (t != null) {
                    qc.a(3, (Wc) t);
                }
                i2++;
            }
        }
        Boolean bool = this.f10218g;
        if (bool != null) {
            qc.a(4, bool.booleanValue());
        }
        Boolean bool2 = this.f10219h;
        if (bool2 != null) {
            qc.a(5, bool2.booleanValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof S)) {
            return false;
        }
        S s = (S) obj;
        Integer num = this.f10215d;
        if (num == null) {
            if (s.f10215d != null) {
                return false;
            }
        } else if (!num.equals(s.f10215d)) {
            return false;
        }
        if (!Vc.a((Object[]) this.f10216e, (Object[]) s.f10216e) || !Vc.a((Object[]) this.f10217f, (Object[]) s.f10217f)) {
            return false;
        }
        Boolean bool = this.f10218g;
        if (bool == null) {
            if (s.f10218g != null) {
                return false;
            }
        } else if (!bool.equals(s.f10218g)) {
            return false;
        }
        Boolean bool2 = this.f10219h;
        if (bool2 == null) {
            if (s.f10219h != null) {
                return false;
            }
        } else if (!bool2.equals(s.f10219h)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(s.f10213b);
        }
        Tc tc2 = s.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (S.class.getName().hashCode() + 527) * 31;
        Integer num = this.f10215d;
        int i2 = 0;
        int hashCode2 = (((((hashCode + (num == null ? 0 : num.hashCode())) * 31) + Vc.a((Object[]) this.f10216e)) * 31) + Vc.a((Object[]) this.f10217f)) * 31;
        Boolean bool = this.f10218g;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f10219h;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode4 + i2;
    }

    public final int a() {
        int a2 = super.a();
        Integer num = this.f10215d;
        if (num != null) {
            a2 += Qc.c(1, num.intValue());
        }
        X[] xArr = this.f10216e;
        int i2 = 0;
        if (xArr != null && xArr.length > 0) {
            int i3 = a2;
            int i4 = 0;
            while (true) {
                X[] xArr2 = this.f10216e;
                if (i4 >= xArr2.length) {
                    break;
                }
                X x = xArr2[i4];
                if (x != null) {
                    i3 += Qc.b(2, (Wc) x);
                }
                i4++;
            }
            a2 = i3;
        }
        T[] tArr = this.f10217f;
        if (tArr != null && tArr.length > 0) {
            while (true) {
                T[] tArr2 = this.f10217f;
                if (i2 >= tArr2.length) {
                    break;
                }
                T t = tArr2[i2];
                if (t != null) {
                    a2 += Qc.b(3, (Wc) t);
                }
                i2++;
            }
        }
        Boolean bool = this.f10218g;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(4) + 1;
        }
        Boolean bool2 = this.f10219h;
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
                this.f10215d = Integer.valueOf(pc.e());
            } else if (c2 == 18) {
                int a2 = Zc.a(pc, 18);
                X[] xArr = this.f10216e;
                int length = xArr == null ? 0 : xArr.length;
                X[] xArr2 = new X[(a2 + length)];
                if (length != 0) {
                    System.arraycopy(this.f10216e, 0, xArr2, 0, length);
                }
                while (length < xArr2.length - 1) {
                    xArr2[length] = new X();
                    pc.a((Wc) xArr2[length]);
                    pc.c();
                    length++;
                }
                xArr2[length] = new X();
                pc.a((Wc) xArr2[length]);
                this.f10216e = xArr2;
            } else if (c2 == 26) {
                int a3 = Zc.a(pc, 26);
                T[] tArr = this.f10217f;
                int length2 = tArr == null ? 0 : tArr.length;
                T[] tArr2 = new T[(a3 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.f10217f, 0, tArr2, 0, length2);
                }
                while (length2 < tArr2.length - 1) {
                    tArr2[length2] = new T();
                    pc.a((Wc) tArr2[length2]);
                    pc.c();
                    length2++;
                }
                tArr2[length2] = new T();
                pc.a((Wc) tArr2[length2]);
                this.f10217f = tArr2;
            } else if (c2 == 32) {
                this.f10218g = Boolean.valueOf(pc.d());
            } else if (c2 == 40) {
                this.f10219h = Boolean.valueOf(pc.d());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
