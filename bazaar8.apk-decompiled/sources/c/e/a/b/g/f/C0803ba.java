package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzeg;

/* renamed from: c.e.a.b.g.f.ba  reason: case insensitive filesystem */
public final class C0803ba extends Rc<C0803ba> {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C0803ba[] f10343c;

    /* renamed from: d  reason: collision with root package name */
    public K[] f10344d = new K[0];

    /* renamed from: e  reason: collision with root package name */
    public String f10345e = null;

    /* renamed from: f  reason: collision with root package name */
    public Long f10346f = null;

    /* renamed from: g  reason: collision with root package name */
    public Long f10347g = null;

    /* renamed from: h  reason: collision with root package name */
    public Integer f10348h = null;

    public C0803ba() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public static C0803ba[] d() {
        if (f10343c == null) {
            synchronized (Vc.f10250c) {
                if (f10343c == null) {
                    f10343c = new C0803ba[0];
                }
            }
        }
        return f10343c;
    }

    public final void a(Qc qc) {
        K[] kArr = this.f10344d;
        if (kArr != null && kArr.length > 0) {
            int i2 = 0;
            while (true) {
                K[] kArr2 = this.f10344d;
                if (i2 >= kArr2.length) {
                    break;
                }
                K k2 = kArr2[i2];
                if (k2 != null) {
                    qc.a(1, (Sb) k2);
                }
                i2++;
            }
        }
        String str = this.f10345e;
        if (str != null) {
            qc.a(2, str);
        }
        Long l2 = this.f10346f;
        if (l2 != null) {
            qc.b(3, l2.longValue());
        }
        Long l3 = this.f10347g;
        if (l3 != null) {
            qc.b(4, l3.longValue());
        }
        Integer num = this.f10348h;
        if (num != null) {
            qc.b(5, num.intValue());
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0803ba)) {
            return false;
        }
        C0803ba baVar = (C0803ba) obj;
        if (!Vc.a((Object[]) this.f10344d, (Object[]) baVar.f10344d)) {
            return false;
        }
        String str = this.f10345e;
        if (str == null) {
            if (baVar.f10345e != null) {
                return false;
            }
        } else if (!str.equals(baVar.f10345e)) {
            return false;
        }
        Long l2 = this.f10346f;
        if (l2 == null) {
            if (baVar.f10346f != null) {
                return false;
            }
        } else if (!l2.equals(baVar.f10346f)) {
            return false;
        }
        Long l3 = this.f10347g;
        if (l3 == null) {
            if (baVar.f10347g != null) {
                return false;
            }
        } else if (!l3.equals(baVar.f10347g)) {
            return false;
        }
        Integer num = this.f10348h;
        if (num == null) {
            if (baVar.f10348h != null) {
                return false;
            }
        } else if (!num.equals(baVar.f10348h)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(baVar.f10213b);
        }
        Tc tc2 = baVar.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (((C0803ba.class.getName().hashCode() + 527) * 31) + Vc.a((Object[]) this.f10344d)) * 31;
        String str = this.f10345e;
        int i2 = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l2 = this.f10346f;
        int hashCode3 = (hashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.f10347g;
        int hashCode4 = (hashCode3 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Integer num = this.f10348h;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode5 + i2;
    }

    public final int a() {
        int a2 = super.a();
        K[] kArr = this.f10344d;
        if (kArr != null && kArr.length > 0) {
            int i2 = 0;
            while (true) {
                K[] kArr2 = this.f10344d;
                if (i2 >= kArr2.length) {
                    break;
                }
                K k2 = kArr2[i2];
                if (k2 != null) {
                    a2 += zzeg.c(1, (Sb) k2);
                }
                i2++;
            }
        }
        String str = this.f10345e;
        if (str != null) {
            a2 += Qc.b(2, str);
        }
        Long l2 = this.f10346f;
        if (l2 != null) {
            a2 += Qc.a(3, l2.longValue());
        }
        Long l3 = this.f10347g;
        if (l3 != null) {
            a2 += Qc.a(4, l3.longValue());
        }
        Integer num = this.f10348h;
        return num != null ? a2 + Qc.c(5, num.intValue()) : a2;
    }

    public static C0803ba a(byte[] bArr) {
        C0803ba baVar = new C0803ba();
        Wc.a(baVar, bArr);
        return baVar;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 10) {
                int a2 = Zc.a(pc, 10);
                K[] kArr = this.f10344d;
                int length = kArr == null ? 0 : kArr.length;
                K[] kArr2 = new K[(a2 + length)];
                if (length != 0) {
                    System.arraycopy(this.f10344d, 0, kArr2, 0, length);
                }
                while (length < kArr2.length - 1) {
                    kArr2[length] = (K) pc.a(K.r());
                    pc.c();
                    length++;
                }
                kArr2[length] = (K) pc.a(K.r());
                this.f10344d = kArr2;
            } else if (c2 == 18) {
                this.f10345e = pc.b();
            } else if (c2 == 24) {
                this.f10346f = Long.valueOf(pc.f());
            } else if (c2 == 32) {
                this.f10347g = Long.valueOf(pc.f());
            } else if (c2 == 40) {
                this.f10348h = Integer.valueOf(pc.e());
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
