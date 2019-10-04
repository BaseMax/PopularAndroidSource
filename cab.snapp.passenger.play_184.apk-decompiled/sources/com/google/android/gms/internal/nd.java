package com.google.android.gms.internal;

import java.io.IOException;

public final class nd extends sr<nd> {
    private static volatile nd[] c;
    public ng zzjkc = null;
    public ne zzjkd = null;
    public Boolean zzjke = null;
    public String zzjkf = null;

    public nd() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nd[] zzbbc() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nd[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        ng ngVar = this.zzjkc;
        if (ngVar != null) {
            a2 += sp.zzb(1, (sx) ngVar);
        }
        ne neVar = this.zzjkd;
        if (neVar != null) {
            a2 += sp.zzb(2, (sx) neVar);
        }
        Boolean bool = this.zzjke;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(3) + 1;
        }
        String str = this.zzjkf;
        return str != null ? a2 + sp.zzo(4, str) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nd)) {
            return false;
        }
        nd ndVar = (nd) obj;
        ng ngVar = this.zzjkc;
        if (ngVar == null) {
            if (ndVar.zzjkc != null) {
                return false;
            }
        } else if (!ngVar.equals(ndVar.zzjkc)) {
            return false;
        }
        ne neVar = this.zzjkd;
        if (neVar == null) {
            if (ndVar.zzjkd != null) {
                return false;
            }
        } else if (!neVar.equals(ndVar.zzjkd)) {
            return false;
        }
        Boolean bool = this.zzjke;
        if (bool == null) {
            if (ndVar.zzjke != null) {
                return false;
            }
        } else if (!bool.equals(ndVar.zzjke)) {
            return false;
        }
        String str = this.zzjkf;
        if (str == null) {
            if (ndVar.zzjkf != null) {
                return false;
            }
        } else if (!str.equals(ndVar.zzjkf)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? ndVar.f3519a == null || ndVar.f3519a.isEmpty() : this.f3519a.equals(ndVar.f3519a);
    }

    public final int hashCode() {
        ng ngVar = this.zzjkc;
        int i = 0;
        int hashCode = ((getClass().getName().hashCode() + 527) * 31) + (ngVar == null ? 0 : ngVar.hashCode());
        ne neVar = this.zzjkd;
        int hashCode2 = ((hashCode * 31) + (neVar == null ? 0 : neVar.hashCode())) * 31;
        Boolean bool = this.zzjke;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzjkf;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode4 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        sx sxVar;
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                if (this.zzjkc == null) {
                    this.zzjkc = new ng();
                }
                sxVar = this.zzjkc;
            } else if (zzcvt == 18) {
                if (this.zzjkd == null) {
                    this.zzjkd = new ne();
                }
                sxVar = this.zzjkd;
            } else if (zzcvt == 24) {
                this.zzjke = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 34) {
                this.zzjkf = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
            soVar.zza(sxVar);
        }
    }

    public final void zza(sp spVar) throws IOException {
        ng ngVar = this.zzjkc;
        if (ngVar != null) {
            spVar.zza(1, (sx) ngVar);
        }
        ne neVar = this.zzjkd;
        if (neVar != null) {
            spVar.zza(2, (sx) neVar);
        }
        Boolean bool = this.zzjke;
        if (bool != null) {
            spVar.zzl(3, bool.booleanValue());
        }
        String str = this.zzjkf;
        if (str != null) {
            spVar.zzn(4, str);
        }
        super.zza(spVar);
    }
}
