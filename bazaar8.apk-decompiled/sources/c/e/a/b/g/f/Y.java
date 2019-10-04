package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzbl$zzb$zzb;

public final class Y extends Rc<Y> {

    /* renamed from: c  reason: collision with root package name */
    public zzbl$zzb$zzb f10290c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f10291d = null;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f10292e = null;

    /* renamed from: f  reason: collision with root package name */
    public String[] f10293f = Zc.f10307f;

    public Y() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public final void a(Qc qc) {
        zzbl$zzb$zzb zzbl_zzb_zzb = this.f10290c;
        if (!(zzbl_zzb_zzb == null || zzbl_zzb_zzb == null)) {
            qc.b(1, zzbl_zzb_zzb.a());
        }
        String str = this.f10291d;
        if (str != null) {
            qc.a(2, str);
        }
        Boolean bool = this.f10292e;
        if (bool != null) {
            qc.a(3, bool.booleanValue());
        }
        String[] strArr = this.f10293f;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f10293f;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i2];
                if (str2 != null) {
                    qc.a(4, str2);
                }
                i2++;
            }
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Y)) {
            return false;
        }
        Y y = (Y) obj;
        zzbl$zzb$zzb zzbl_zzb_zzb = this.f10290c;
        if (zzbl_zzb_zzb == null) {
            if (y.f10290c != null) {
                return false;
            }
        } else if (!zzbl_zzb_zzb.equals(y.f10290c)) {
            return false;
        }
        String str = this.f10291d;
        if (str == null) {
            if (y.f10291d != null) {
                return false;
            }
        } else if (!str.equals(y.f10291d)) {
            return false;
        }
        Boolean bool = this.f10292e;
        if (bool == null) {
            if (y.f10292e != null) {
                return false;
            }
        } else if (!bool.equals(y.f10292e)) {
            return false;
        }
        if (!Vc.a((Object[]) this.f10293f, (Object[]) y.f10293f)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(y.f10213b);
        }
        Tc tc2 = y.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (Y.class.getName().hashCode() + 527) * 31;
        zzbl$zzb$zzb zzbl_zzb_zzb = this.f10290c;
        int i2 = 0;
        int hashCode2 = (hashCode + (zzbl_zzb_zzb == null ? 0 : zzbl_zzb_zzb.hashCode())) * 31;
        String str = this.f10291d;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f10292e;
        int hashCode4 = (((hashCode3 + (bool == null ? 0 : bool.hashCode())) * 31) + Vc.a((Object[]) this.f10293f)) * 31;
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            i2 = this.f10213b.hashCode();
        }
        return hashCode4 + i2;
    }

    public final int a() {
        int a2 = super.a();
        zzbl$zzb$zzb zzbl_zzb_zzb = this.f10290c;
        if (!(zzbl_zzb_zzb == null || zzbl_zzb_zzb == null)) {
            a2 += Qc.c(1, zzbl_zzb_zzb.a());
        }
        String str = this.f10291d;
        if (str != null) {
            a2 += Qc.b(2, str);
        }
        Boolean bool = this.f10292e;
        if (bool != null) {
            bool.booleanValue();
            a2 += Qc.a(3) + 1;
        }
        String[] strArr = this.f10293f;
        if (strArr == null || strArr.length <= 0) {
            return a2;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            String[] strArr2 = this.f10293f;
            if (i2 >= strArr2.length) {
                return a2 + i3 + (i4 * 1);
            }
            String str2 = strArr2[i2];
            if (str2 != null) {
                i4++;
                i3 += Qc.a(str2);
            }
            i2++;
        }
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 != 0) {
                if (c2 == 8) {
                    int a2 = pc.a();
                    int e2 = pc.e();
                    switch (e2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.f10290c = zzbl$zzb$zzb.a(e2);
                            break;
                        default:
                            pc.a(a2);
                            a(pc, c2);
                            break;
                    }
                } else if (c2 == 18) {
                    this.f10291d = pc.b();
                } else if (c2 == 24) {
                    this.f10292e = Boolean.valueOf(pc.d());
                } else if (c2 == 34) {
                    int a3 = Zc.a(pc, 34);
                    String[] strArr = this.f10293f;
                    int length = strArr == null ? 0 : strArr.length;
                    String[] strArr2 = new String[(a3 + length)];
                    if (length != 0) {
                        System.arraycopy(this.f10293f, 0, strArr2, 0, length);
                    }
                    while (length < strArr2.length - 1) {
                        strArr2[length] = pc.b();
                        pc.c();
                        length++;
                    }
                    strArr2[length] = pc.b();
                    this.f10293f = strArr2;
                } else if (!super.a(pc, c2)) {
                    return this;
                }
            } else {
                return this;
            }
        }
    }
}
