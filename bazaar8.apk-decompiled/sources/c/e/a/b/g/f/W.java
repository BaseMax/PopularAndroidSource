package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzbl$zza$zzb;

public final class W extends Rc<W> {

    /* renamed from: c  reason: collision with root package name */
    public zzbl$zza$zzb f10251c = null;

    /* renamed from: d  reason: collision with root package name */
    public Boolean f10252d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f10253e = null;

    /* renamed from: f  reason: collision with root package name */
    public String f10254f = null;

    /* renamed from: g  reason: collision with root package name */
    public String f10255g = null;

    public W() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public final void a(Qc qc) {
        zzbl$zza$zzb zzbl_zza_zzb = this.f10251c;
        if (!(zzbl_zza_zzb == null || zzbl_zza_zzb == null)) {
            qc.b(1, zzbl_zza_zzb.a());
        }
        Boolean bool = this.f10252d;
        if (bool != null) {
            qc.a(2, bool.booleanValue());
        }
        String str = this.f10253e;
        if (str != null) {
            qc.a(3, str);
        }
        String str2 = this.f10254f;
        if (str2 != null) {
            qc.a(4, str2);
        }
        String str3 = this.f10255g;
        if (str3 != null) {
            qc.a(5, str3);
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof W)) {
            return false;
        }
        W w = (W) obj;
        zzbl$zza$zzb zzbl_zza_zzb = this.f10251c;
        if (zzbl_zza_zzb == null) {
            if (w.f10251c != null) {
                return false;
            }
        } else if (!zzbl_zza_zzb.equals(w.f10251c)) {
            return false;
        }
        Boolean bool = this.f10252d;
        if (bool == null) {
            if (w.f10252d != null) {
                return false;
            }
        } else if (!bool.equals(w.f10252d)) {
            return false;
        }
        String str = this.f10253e;
        if (str == null) {
            if (w.f10253e != null) {
                return false;
            }
        } else if (!str.equals(w.f10253e)) {
            return false;
        }
        String str2 = this.f10254f;
        if (str2 == null) {
            if (w.f10254f != null) {
                return false;
            }
        } else if (!str2.equals(w.f10254f)) {
            return false;
        }
        String str3 = this.f10255g;
        if (str3 == null) {
            if (w.f10255g != null) {
                return false;
            }
        } else if (!str3.equals(w.f10255g)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(w.f10213b);
        }
        Tc tc2 = w.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (W.class.getName().hashCode() + 527) * 31;
        zzbl$zza$zzb zzbl_zza_zzb = this.f10251c;
        int i2 = 0;
        int hashCode2 = (hashCode + (zzbl_zza_zzb == null ? 0 : zzbl_zza_zzb.hashCode())) * 31;
        Boolean bool = this.f10252d;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.f10253e;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f10254f;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f10255g;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode6 + i2;
    }

    public final int a() {
        int a2 = super.a();
        zzbl$zza$zzb zzbl_zza_zzb = this.f10251c;
        if (!(zzbl_zza_zzb == null || zzbl_zza_zzb == null)) {
            a2 += Qc.c(1, zzbl_zza_zzb.a());
        }
        Boolean bool = this.f10252d;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(2) + 1;
        }
        String str = this.f10253e;
        if (str != null) {
            a2 += Qc.b(3, str);
        }
        String str2 = this.f10254f;
        if (str2 != null) {
            a2 += Qc.b(4, str2);
        }
        String str3 = this.f10255g;
        return str3 != null ? a2 + Qc.b(5, str3) : a2;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 8) {
                int a2 = pc.a();
                int e2 = pc.e();
                if (e2 == 0 || e2 == 1 || e2 == 2 || e2 == 3 || e2 == 4) {
                    this.f10251c = zzbl$zza$zzb.a(e2);
                } else {
                    pc.a(a2);
                    a(pc, c2);
                }
            } else if (c2 == 16) {
                this.f10252d = Boolean.valueOf(pc.d());
            } else if (c2 == 26) {
                this.f10253e = pc.b();
            } else if (c2 == 34) {
                this.f10254f = pc.b();
            } else if (c2 == 42) {
                this.f10255g = pc.b();
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
