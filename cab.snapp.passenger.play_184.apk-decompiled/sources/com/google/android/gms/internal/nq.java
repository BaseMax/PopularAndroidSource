package com.google.android.gms.internal;

import java.io.IOException;

public final class nq extends sr<nq> {
    private static volatile nq[] c;
    private Float d = null;
    public String name = null;
    public String zzgcc = null;
    public Double zzjjl = null;
    public Long zzjll = null;
    public Long zzjms = null;

    public nq() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nq[] zzbbk() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nq[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Long l = this.zzjms;
        if (l != null) {
            a2 += sp.zzc(1, l.longValue());
        }
        String str = this.name;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        String str2 = this.zzgcc;
        if (str2 != null) {
            a2 += sp.zzo(3, str2);
        }
        Long l2 = this.zzjll;
        if (l2 != null) {
            a2 += sp.zzc(4, l2.longValue());
        }
        Float f = this.d;
        if (f != null) {
            f.floatValue();
            a2 += sp.zzlg(5) + 4;
        }
        Double d2 = this.zzjjl;
        if (d2 == null) {
            return a2;
        }
        d2.doubleValue();
        return a2 + sp.zzlg(6) + 8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nq)) {
            return false;
        }
        nq nqVar = (nq) obj;
        Long l = this.zzjms;
        if (l == null) {
            if (nqVar.zzjms != null) {
                return false;
            }
        } else if (!l.equals(nqVar.zzjms)) {
            return false;
        }
        String str = this.name;
        if (str == null) {
            if (nqVar.name != null) {
                return false;
            }
        } else if (!str.equals(nqVar.name)) {
            return false;
        }
        String str2 = this.zzgcc;
        if (str2 == null) {
            if (nqVar.zzgcc != null) {
                return false;
            }
        } else if (!str2.equals(nqVar.zzgcc)) {
            return false;
        }
        Long l2 = this.zzjll;
        if (l2 == null) {
            if (nqVar.zzjll != null) {
                return false;
            }
        } else if (!l2.equals(nqVar.zzjll)) {
            return false;
        }
        Float f = this.d;
        if (f == null) {
            if (nqVar.d != null) {
                return false;
            }
        } else if (!f.equals(nqVar.d)) {
            return false;
        }
        Double d2 = this.zzjjl;
        if (d2 == null) {
            if (nqVar.zzjjl != null) {
                return false;
            }
        } else if (!d2.equals(nqVar.zzjjl)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nqVar.f3519a == null || nqVar.f3519a.isEmpty() : this.f3519a.equals(nqVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.zzjms;
        int i = 0;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.name;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzgcc;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l2 = this.zzjll;
        int hashCode5 = (hashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Float f = this.d;
        int hashCode6 = (hashCode5 + (f == null ? 0 : f.hashCode())) * 31;
        Double d2 = this.zzjjl;
        int hashCode7 = (hashCode6 + (d2 == null ? 0 : d2.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode7 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                this.zzjms = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 18) {
                this.name = soVar.readString();
            } else if (zzcvt == 26) {
                this.zzgcc = soVar.readString();
            } else if (zzcvt == 32) {
                this.zzjll = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 45) {
                this.d = Float.valueOf(Float.intBitsToFloat(soVar.zzcwo()));
            } else if (zzcvt == 49) {
                this.zzjjl = Double.valueOf(Double.longBitsToDouble(soVar.zzcwp()));
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        Long l = this.zzjms;
        if (l != null) {
            spVar.zzf(1, l.longValue());
        }
        String str = this.name;
        if (str != null) {
            spVar.zzn(2, str);
        }
        String str2 = this.zzgcc;
        if (str2 != null) {
            spVar.zzn(3, str2);
        }
        Long l2 = this.zzjll;
        if (l2 != null) {
            spVar.zzf(4, l2.longValue());
        }
        Float f = this.d;
        if (f != null) {
            spVar.zzc(5, f.floatValue());
        }
        Double d2 = this.zzjjl;
        if (d2 != null) {
            spVar.zza(6, d2.doubleValue());
        }
        super.zza(spVar);
    }
}
