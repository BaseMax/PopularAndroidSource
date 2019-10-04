package com.google.android.gms.internal;

import java.io.IOException;

public final class nm extends sr<nm> {
    private static volatile nm[] c;
    private Float d = null;
    public String name = null;
    public String zzgcc = null;
    public Double zzjjl = null;
    public Long zzjll = null;

    public nm() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nm[] zzbbi() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nm[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        String str = this.name;
        if (str != null) {
            a2 += sp.zzo(1, str);
        }
        String str2 = this.zzgcc;
        if (str2 != null) {
            a2 += sp.zzo(2, str2);
        }
        Long l = this.zzjll;
        if (l != null) {
            a2 += sp.zzc(3, l.longValue());
        }
        Float f = this.d;
        if (f != null) {
            f.floatValue();
            a2 += sp.zzlg(4) + 4;
        }
        Double d2 = this.zzjjl;
        if (d2 == null) {
            return a2;
        }
        d2.doubleValue();
        return a2 + sp.zzlg(5) + 8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nm)) {
            return false;
        }
        nm nmVar = (nm) obj;
        String str = this.name;
        if (str == null) {
            if (nmVar.name != null) {
                return false;
            }
        } else if (!str.equals(nmVar.name)) {
            return false;
        }
        String str2 = this.zzgcc;
        if (str2 == null) {
            if (nmVar.zzgcc != null) {
                return false;
            }
        } else if (!str2.equals(nmVar.zzgcc)) {
            return false;
        }
        Long l = this.zzjll;
        if (l == null) {
            if (nmVar.zzjll != null) {
                return false;
            }
        } else if (!l.equals(nmVar.zzjll)) {
            return false;
        }
        Float f = this.d;
        if (f == null) {
            if (nmVar.d != null) {
                return false;
            }
        } else if (!f.equals(nmVar.d)) {
            return false;
        }
        Double d2 = this.zzjjl;
        if (d2 == null) {
            if (nmVar.zzjjl != null) {
                return false;
            }
        } else if (!d2.equals(nmVar.zzjjl)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nmVar.f3519a == null || nmVar.f3519a.isEmpty() : this.f3519a.equals(nmVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.name;
        int i = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzgcc;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.zzjll;
        int hashCode4 = (hashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Float f = this.d;
        int hashCode5 = (hashCode4 + (f == null ? 0 : f.hashCode())) * 31;
        Double d2 = this.zzjjl;
        int hashCode6 = (hashCode5 + (d2 == null ? 0 : d2.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode6 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                this.name = soVar.readString();
            } else if (zzcvt == 18) {
                this.zzgcc = soVar.readString();
            } else if (zzcvt == 24) {
                this.zzjll = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 37) {
                this.d = Float.valueOf(Float.intBitsToFloat(soVar.zzcwo()));
            } else if (zzcvt == 41) {
                this.zzjjl = Double.valueOf(Double.longBitsToDouble(soVar.zzcwp()));
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String str = this.name;
        if (str != null) {
            spVar.zzn(1, str);
        }
        String str2 = this.zzgcc;
        if (str2 != null) {
            spVar.zzn(2, str2);
        }
        Long l = this.zzjll;
        if (l != null) {
            spVar.zzf(3, l.longValue());
        }
        Float f = this.d;
        if (f != null) {
            spVar.zzc(4, f.floatValue());
        }
        Double d2 = this.zzjjl;
        if (d2 != null) {
            spVar.zza(5, d2.doubleValue());
        }
        super.zza(spVar);
    }
}
