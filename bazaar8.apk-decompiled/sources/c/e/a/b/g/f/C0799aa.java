package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzeg;

/* renamed from: c.e.a.b.g.f.aa  reason: case insensitive filesystem */
public final class C0799aa extends Rc<C0799aa> {

    /* renamed from: c  reason: collision with root package name */
    public Long f10315c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f10316d = null;

    /* renamed from: e  reason: collision with root package name */
    public Integer f10317e = null;

    /* renamed from: f  reason: collision with root package name */
    public F[] f10318f = new F[0];

    /* renamed from: g  reason: collision with root package name */
    public Z[] f10319g = Z.d();

    /* renamed from: h  reason: collision with root package name */
    public S[] f10320h = S.d();

    /* renamed from: i  reason: collision with root package name */
    public String f10321i = null;

    /* renamed from: j  reason: collision with root package name */
    public Boolean f10322j = null;

    public C0799aa() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public final void a(Qc qc) {
        Long l2 = this.f10315c;
        if (l2 != null) {
            qc.b(1, l2.longValue());
        }
        String str = this.f10316d;
        if (str != null) {
            qc.a(2, str);
        }
        Integer num = this.f10317e;
        if (num != null) {
            qc.b(3, num.intValue());
        }
        F[] fArr = this.f10318f;
        int i2 = 0;
        if (fArr != null && fArr.length > 0) {
            int i3 = 0;
            while (true) {
                F[] fArr2 = this.f10318f;
                if (i3 >= fArr2.length) {
                    break;
                }
                F f2 = fArr2[i3];
                if (f2 != null) {
                    qc.a(4, (Sb) f2);
                }
                i3++;
            }
        }
        Z[] zArr = this.f10319g;
        if (zArr != null && zArr.length > 0) {
            int i4 = 0;
            while (true) {
                Z[] zArr2 = this.f10319g;
                if (i4 >= zArr2.length) {
                    break;
                }
                Z z = zArr2[i4];
                if (z != null) {
                    qc.a(5, (Wc) z);
                }
                i4++;
            }
        }
        S[] sArr = this.f10320h;
        if (sArr != null && sArr.length > 0) {
            while (true) {
                S[] sArr2 = this.f10320h;
                if (i2 >= sArr2.length) {
                    break;
                }
                S s = sArr2[i2];
                if (s != null) {
                    qc.a(6, (Wc) s);
                }
                i2++;
            }
        }
        String str2 = this.f10321i;
        if (str2 != null) {
            qc.a(7, str2);
        }
        Boolean bool = this.f10322j;
        if (bool != null) {
            qc.a(8, bool.booleanValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0799aa)) {
            return false;
        }
        C0799aa aaVar = (C0799aa) obj;
        Long l2 = this.f10315c;
        if (l2 == null) {
            if (aaVar.f10315c != null) {
                return false;
            }
        } else if (!l2.equals(aaVar.f10315c)) {
            return false;
        }
        String str = this.f10316d;
        if (str == null) {
            if (aaVar.f10316d != null) {
                return false;
            }
        } else if (!str.equals(aaVar.f10316d)) {
            return false;
        }
        Integer num = this.f10317e;
        if (num == null) {
            if (aaVar.f10317e != null) {
                return false;
            }
        } else if (!num.equals(aaVar.f10317e)) {
            return false;
        }
        if (!Vc.a((Object[]) this.f10318f, (Object[]) aaVar.f10318f) || !Vc.a((Object[]) this.f10319g, (Object[]) aaVar.f10319g) || !Vc.a((Object[]) this.f10320h, (Object[]) aaVar.f10320h)) {
            return false;
        }
        String str2 = this.f10321i;
        if (str2 == null) {
            if (aaVar.f10321i != null) {
                return false;
            }
        } else if (!str2.equals(aaVar.f10321i)) {
            return false;
        }
        Boolean bool = this.f10322j;
        if (bool == null) {
            if (aaVar.f10322j != null) {
                return false;
            }
        } else if (!bool.equals(aaVar.f10322j)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(aaVar.f10213b);
        }
        Tc tc2 = aaVar.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (C0799aa.class.getName().hashCode() + 527) * 31;
        Long l2 = this.f10315c;
        int i2 = 0;
        int hashCode2 = (hashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.f10316d;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.f10317e;
        int hashCode4 = (((((((hashCode3 + (num == null ? 0 : num.hashCode())) * 31) + Vc.a((Object[]) this.f10318f)) * 31) + Vc.a((Object[]) this.f10319g)) * 31) + Vc.a((Object[]) this.f10320h)) * 31;
        String str2 = this.f10321i;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.f10322j;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode6 + i2;
    }

    public final int a() {
        int a2 = super.a();
        Long l2 = this.f10315c;
        if (l2 != null) {
            a2 += Qc.a(1, l2.longValue());
        }
        String str = this.f10316d;
        if (str != null) {
            a2 += Qc.b(2, str);
        }
        Integer num = this.f10317e;
        if (num != null) {
            a2 += Qc.c(3, num.intValue());
        }
        F[] fArr = this.f10318f;
        int i2 = 0;
        if (fArr != null && fArr.length > 0) {
            int i3 = a2;
            int i4 = 0;
            while (true) {
                F[] fArr2 = this.f10318f;
                if (i4 >= fArr2.length) {
                    break;
                }
                F f2 = fArr2[i4];
                if (f2 != null) {
                    i3 += zzeg.c(4, (Sb) f2);
                }
                i4++;
            }
            a2 = i3;
        }
        Z[] zArr = this.f10319g;
        if (zArr != null && zArr.length > 0) {
            int i5 = a2;
            int i6 = 0;
            while (true) {
                Z[] zArr2 = this.f10319g;
                if (i6 >= zArr2.length) {
                    break;
                }
                Z z = zArr2[i6];
                if (z != null) {
                    i5 += Qc.b(5, (Wc) z);
                }
                i6++;
            }
            a2 = i5;
        }
        S[] sArr = this.f10320h;
        if (sArr != null && sArr.length > 0) {
            while (true) {
                S[] sArr2 = this.f10320h;
                if (i2 >= sArr2.length) {
                    break;
                }
                S s = sArr2[i2];
                if (s != null) {
                    a2 += Qc.b(6, (Wc) s);
                }
                i2++;
            }
        }
        String str2 = this.f10321i;
        if (str2 != null) {
            a2 += Qc.b(7, str2);
        }
        Boolean bool = this.f10322j;
        if (bool == null) {
            return a2;
        }
        bool.booleanValue();
        return a2 + Qc.a(8) + 1;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                this.f10315c = Long.valueOf(pc.f());
            } else if (c2 == 18) {
                this.f10316d = pc.b();
            } else if (c2 == 24) {
                this.f10317e = Integer.valueOf(pc.e());
            } else if (c2 == 34) {
                int a2 = Zc.a(pc, 34);
                F[] fArr = this.f10318f;
                int length = fArr == null ? 0 : fArr.length;
                F[] fArr2 = new F[(a2 + length)];
                if (length != 0) {
                    System.arraycopy(this.f10318f, 0, fArr2, 0, length);
                }
                while (length < fArr2.length - 1) {
                    fArr2[length] = (F) pc.a(F.s());
                    pc.c();
                    length++;
                }
                fArr2[length] = (F) pc.a(F.s());
                this.f10318f = fArr2;
            } else if (c2 == 42) {
                int a3 = Zc.a(pc, 42);
                Z[] zArr = this.f10319g;
                int length2 = zArr == null ? 0 : zArr.length;
                Z[] zArr2 = new Z[(a3 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.f10319g, 0, zArr2, 0, length2);
                }
                while (length2 < zArr2.length - 1) {
                    zArr2[length2] = new Z();
                    pc.a((Wc) zArr2[length2]);
                    pc.c();
                    length2++;
                }
                zArr2[length2] = new Z();
                pc.a((Wc) zArr2[length2]);
                this.f10319g = zArr2;
            } else if (c2 == 50) {
                int a4 = Zc.a(pc, 50);
                S[] sArr = this.f10320h;
                int length3 = sArr == null ? 0 : sArr.length;
                S[] sArr2 = new S[(a4 + length3)];
                if (length3 != 0) {
                    System.arraycopy(this.f10320h, 0, sArr2, 0, length3);
                }
                while (length3 < sArr2.length - 1) {
                    sArr2[length3] = new S();
                    pc.a((Wc) sArr2[length3]);
                    pc.c();
                    length3++;
                }
                sArr2[length3] = new S();
                pc.a((Wc) sArr2[length3]);
                this.f10320h = sArr2;
            } else if (c2 == 58) {
                this.f10321i = pc.b();
            } else if (c2 == 64) {
                this.f10322j = Boolean.valueOf(pc.d());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
