package com.google.android.gms.internal;

import java.io.IOException;

public final class nf extends sr<nf> {
    private static volatile nf[] c;
    public Integer zzjjw = null;
    public String zzjkm = null;
    public nd zzjkn = null;

    public nf() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nf[] zzbbd() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nf[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Integer num = this.zzjjw;
        if (num != null) {
            a2 += sp.zzad(1, num.intValue());
        }
        String str = this.zzjkm;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        nd ndVar = this.zzjkn;
        return ndVar != null ? a2 + sp.zzb(3, (sx) ndVar) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nf)) {
            return false;
        }
        nf nfVar = (nf) obj;
        Integer num = this.zzjjw;
        if (num == null) {
            if (nfVar.zzjjw != null) {
                return false;
            }
        } else if (!num.equals(nfVar.zzjjw)) {
            return false;
        }
        String str = this.zzjkm;
        if (str == null) {
            if (nfVar.zzjkm != null) {
                return false;
            }
        } else if (!str.equals(nfVar.zzjkm)) {
            return false;
        }
        nd ndVar = this.zzjkn;
        if (ndVar == null) {
            if (nfVar.zzjkn != null) {
                return false;
            }
        } else if (!ndVar.equals(nfVar.zzjkn)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nfVar.f3519a == null || nfVar.f3519a.isEmpty() : this.f3519a.equals(nfVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjjw;
        int i = 0;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.zzjkm;
        int hashCode3 = hashCode2 + (str == null ? 0 : str.hashCode());
        nd ndVar = this.zzjkn;
        int hashCode4 = ((hashCode3 * 31) + (ndVar == null ? 0 : ndVar.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode4 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                this.zzjjw = Integer.valueOf(soVar.zzcwi());
            } else if (zzcvt == 18) {
                this.zzjkm = soVar.readString();
            } else if (zzcvt == 26) {
                if (this.zzjkn == null) {
                    this.zzjkn = new nd();
                }
                soVar.zza(this.zzjkn);
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        Integer num = this.zzjjw;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        String str = this.zzjkm;
        if (str != null) {
            spVar.zzn(2, str);
        }
        nd ndVar = this.zzjkn;
        if (ndVar != null) {
            spVar.zza(3, (sx) ndVar);
        }
        super.zza(spVar);
    }
}
