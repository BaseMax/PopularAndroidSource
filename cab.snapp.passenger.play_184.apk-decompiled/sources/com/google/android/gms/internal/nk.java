package com.google.android.gms.internal;

import java.io.IOException;

public final class nk extends sr<nk> {
    private static volatile nk[] c;
    public Integer zzjjs = null;
    public np zzjld = null;
    public np zzjle = null;
    public Boolean zzjlf = null;

    public nk() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nk[] zzbbg() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nk[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Integer num = this.zzjjs;
        if (num != null) {
            a2 += sp.zzad(1, num.intValue());
        }
        np npVar = this.zzjld;
        if (npVar != null) {
            a2 += sp.zzb(2, (sx) npVar);
        }
        np npVar2 = this.zzjle;
        if (npVar2 != null) {
            a2 += sp.zzb(3, (sx) npVar2);
        }
        Boolean bool = this.zzjlf;
        if (bool == null) {
            return a2;
        }
        bool.booleanValue();
        return a2 + sp.zzlg(4) + 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nk)) {
            return false;
        }
        nk nkVar = (nk) obj;
        Integer num = this.zzjjs;
        if (num == null) {
            if (nkVar.zzjjs != null) {
                return false;
            }
        } else if (!num.equals(nkVar.zzjjs)) {
            return false;
        }
        np npVar = this.zzjld;
        if (npVar == null) {
            if (nkVar.zzjld != null) {
                return false;
            }
        } else if (!npVar.equals(nkVar.zzjld)) {
            return false;
        }
        np npVar2 = this.zzjle;
        if (npVar2 == null) {
            if (nkVar.zzjle != null) {
                return false;
            }
        } else if (!npVar2.equals(nkVar.zzjle)) {
            return false;
        }
        Boolean bool = this.zzjlf;
        if (bool == null) {
            if (nkVar.zzjlf != null) {
                return false;
            }
        } else if (!bool.equals(nkVar.zzjlf)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nkVar.f3519a == null || nkVar.f3519a.isEmpty() : this.f3519a.equals(nkVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjjs;
        int i = 0;
        int hashCode2 = hashCode + (num == null ? 0 : num.hashCode());
        np npVar = this.zzjld;
        int hashCode3 = (hashCode2 * 31) + (npVar == null ? 0 : npVar.hashCode());
        np npVar2 = this.zzjle;
        int hashCode4 = ((hashCode3 * 31) + (npVar2 == null ? 0 : npVar2.hashCode())) * 31;
        Boolean bool = this.zzjlf;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode5 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        np npVar;
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt != 8) {
                if (zzcvt == 18) {
                    if (this.zzjld == null) {
                        this.zzjld = new np();
                    }
                    npVar = this.zzjld;
                } else if (zzcvt == 26) {
                    if (this.zzjle == null) {
                        this.zzjle = new np();
                    }
                    npVar = this.zzjle;
                } else if (zzcvt == 32) {
                    this.zzjlf = Boolean.valueOf(soVar.zzcvz());
                } else if (!super.a(soVar, zzcvt)) {
                    return this;
                }
                soVar.zza(npVar);
            } else {
                this.zzjjs = Integer.valueOf(soVar.zzcwi());
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        Integer num = this.zzjjs;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        np npVar = this.zzjld;
        if (npVar != null) {
            spVar.zza(2, (sx) npVar);
        }
        np npVar2 = this.zzjle;
        if (npVar2 != null) {
            spVar.zza(3, (sx) npVar2);
        }
        Boolean bool = this.zzjlf;
        if (bool != null) {
            spVar.zzl(4, bool.booleanValue());
        }
        super.zza(spVar);
    }
}
