package com.google.android.gms.internal;

import java.io.IOException;

public final class nc extends sr<nc> {
    private static volatile nc[] c;
    private Boolean d = null;
    public Integer zzjjw = null;
    public String zzjjx = null;
    public nd[] zzjjy = nd.zzbbc();
    public ne zzjka = null;

    public nc() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nc[] zzbbb() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nc[0];
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
        String str = this.zzjjx;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        nd[] ndVarArr = this.zzjjy;
        if (ndVarArr != null && ndVarArr.length > 0) {
            int i = 0;
            while (true) {
                nd[] ndVarArr2 = this.zzjjy;
                if (i >= ndVarArr2.length) {
                    break;
                }
                nd ndVar = ndVarArr2[i];
                if (ndVar != null) {
                    a2 += sp.zzb(3, (sx) ndVar);
                }
                i++;
            }
        }
        Boolean bool = this.d;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(4) + 1;
        }
        ne neVar = this.zzjka;
        return neVar != null ? a2 + sp.zzb(5, (sx) neVar) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nc)) {
            return false;
        }
        nc ncVar = (nc) obj;
        Integer num = this.zzjjw;
        if (num == null) {
            if (ncVar.zzjjw != null) {
                return false;
            }
        } else if (!num.equals(ncVar.zzjjw)) {
            return false;
        }
        String str = this.zzjjx;
        if (str == null) {
            if (ncVar.zzjjx != null) {
                return false;
            }
        } else if (!str.equals(ncVar.zzjjx)) {
            return false;
        }
        if (!sv.equals((Object[]) this.zzjjy, (Object[]) ncVar.zzjjy)) {
            return false;
        }
        Boolean bool = this.d;
        if (bool == null) {
            if (ncVar.d != null) {
                return false;
            }
        } else if (!bool.equals(ncVar.d)) {
            return false;
        }
        ne neVar = this.zzjka;
        if (neVar == null) {
            if (ncVar.zzjka != null) {
                return false;
            }
        } else if (!neVar.equals(ncVar.zzjka)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? ncVar.f3519a == null || ncVar.f3519a.isEmpty() : this.f3519a.equals(ncVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjjw;
        int i = 0;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.zzjjx;
        int hashCode3 = (((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjjy)) * 31;
        Boolean bool = this.d;
        int hashCode4 = hashCode3 + (bool == null ? 0 : bool.hashCode());
        ne neVar = this.zzjka;
        int hashCode5 = ((hashCode4 * 31) + (neVar == null ? 0 : neVar.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode5 + i;
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
                this.zzjjx = soVar.readString();
            } else if (zzcvt == 26) {
                int zzb = ta.zzb(soVar, 26);
                nd[] ndVarArr = this.zzjjy;
                int length = ndVarArr == null ? 0 : ndVarArr.length;
                nd[] ndVarArr2 = new nd[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjjy, 0, ndVarArr2, 0, length);
                }
                while (length < ndVarArr2.length - 1) {
                    ndVarArr2[length] = new nd();
                    soVar.zza(ndVarArr2[length]);
                    soVar.zzcvt();
                    length++;
                }
                ndVarArr2[length] = new nd();
                soVar.zza(ndVarArr2[length]);
                this.zzjjy = ndVarArr2;
            } else if (zzcvt == 32) {
                this.d = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 42) {
                if (this.zzjka == null) {
                    this.zzjka = new ne();
                }
                soVar.zza(this.zzjka);
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
        String str = this.zzjjx;
        if (str != null) {
            spVar.zzn(2, str);
        }
        nd[] ndVarArr = this.zzjjy;
        if (ndVarArr != null && ndVarArr.length > 0) {
            int i = 0;
            while (true) {
                nd[] ndVarArr2 = this.zzjjy;
                if (i >= ndVarArr2.length) {
                    break;
                }
                nd ndVar = ndVarArr2[i];
                if (ndVar != null) {
                    spVar.zza(3, (sx) ndVar);
                }
                i++;
            }
        }
        Boolean bool = this.d;
        if (bool != null) {
            spVar.zzl(4, bool.booleanValue());
        }
        ne neVar = this.zzjka;
        if (neVar != null) {
            spVar.zza(5, (sx) neVar);
        }
        super.zza(spVar);
    }
}
