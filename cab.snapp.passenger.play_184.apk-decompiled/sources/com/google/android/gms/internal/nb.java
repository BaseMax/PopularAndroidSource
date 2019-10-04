package com.google.android.gms.internal;

import java.io.IOException;

public final class nb extends sr<nb> {
    private static volatile nb[] c;
    public Integer zzjjs = null;
    public nf[] zzjjt = nf.zzbbd();
    public nc[] zzjju = nc.zzbbb();

    public nb() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nb[] zzbba() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nb[0];
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
        nf[] nfVarArr = this.zzjjt;
        int i = 0;
        if (nfVarArr != null && nfVarArr.length > 0) {
            int i2 = a2;
            int i3 = 0;
            while (true) {
                nf[] nfVarArr2 = this.zzjjt;
                if (i3 >= nfVarArr2.length) {
                    break;
                }
                nf nfVar = nfVarArr2[i3];
                if (nfVar != null) {
                    i2 += sp.zzb(2, (sx) nfVar);
                }
                i3++;
            }
            a2 = i2;
        }
        nc[] ncVarArr = this.zzjju;
        if (ncVarArr != null && ncVarArr.length > 0) {
            while (true) {
                nc[] ncVarArr2 = this.zzjju;
                if (i >= ncVarArr2.length) {
                    break;
                }
                nc ncVar = ncVarArr2[i];
                if (ncVar != null) {
                    a2 += sp.zzb(3, (sx) ncVar);
                }
                i++;
            }
        }
        return a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nb)) {
            return false;
        }
        nb nbVar = (nb) obj;
        Integer num = this.zzjjs;
        if (num == null) {
            if (nbVar.zzjjs != null) {
                return false;
            }
        } else if (!num.equals(nbVar.zzjjs)) {
            return false;
        }
        if (sv.equals((Object[]) this.zzjjt, (Object[]) nbVar.zzjjt) && sv.equals((Object[]) this.zzjju, (Object[]) nbVar.zzjju)) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? nbVar.f3519a == null || nbVar.f3519a.isEmpty() : this.f3519a.equals(nbVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjjs;
        int i = 0;
        int hashCode2 = (((((hashCode + (num == null ? 0 : num.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjjt)) * 31) + sv.hashCode((Object[]) this.zzjju)) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode2 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                this.zzjjs = Integer.valueOf(soVar.zzcwi());
            } else if (zzcvt == 18) {
                int zzb = ta.zzb(soVar, 18);
                nf[] nfVarArr = this.zzjjt;
                int length = nfVarArr == null ? 0 : nfVarArr.length;
                nf[] nfVarArr2 = new nf[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjjt, 0, nfVarArr2, 0, length);
                }
                while (length < nfVarArr2.length - 1) {
                    nfVarArr2[length] = new nf();
                    soVar.zza(nfVarArr2[length]);
                    soVar.zzcvt();
                    length++;
                }
                nfVarArr2[length] = new nf();
                soVar.zza(nfVarArr2[length]);
                this.zzjjt = nfVarArr2;
            } else if (zzcvt == 26) {
                int zzb2 = ta.zzb(soVar, 26);
                nc[] ncVarArr = this.zzjju;
                int length2 = ncVarArr == null ? 0 : ncVarArr.length;
                nc[] ncVarArr2 = new nc[(zzb2 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.zzjju, 0, ncVarArr2, 0, length2);
                }
                while (length2 < ncVarArr2.length - 1) {
                    ncVarArr2[length2] = new nc();
                    soVar.zza(ncVarArr2[length2]);
                    soVar.zzcvt();
                    length2++;
                }
                ncVarArr2[length2] = new nc();
                soVar.zza(ncVarArr2[length2]);
                this.zzjju = ncVarArr2;
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        Integer num = this.zzjjs;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        nf[] nfVarArr = this.zzjjt;
        int i = 0;
        if (nfVarArr != null && nfVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                nf[] nfVarArr2 = this.zzjjt;
                if (i2 >= nfVarArr2.length) {
                    break;
                }
                nf nfVar = nfVarArr2[i2];
                if (nfVar != null) {
                    spVar.zza(2, (sx) nfVar);
                }
                i2++;
            }
        }
        nc[] ncVarArr = this.zzjju;
        if (ncVarArr != null && ncVarArr.length > 0) {
            while (true) {
                nc[] ncVarArr2 = this.zzjju;
                if (i >= ncVarArr2.length) {
                    break;
                }
                nc ncVar = ncVarArr2[i];
                if (ncVar != null) {
                    spVar.zza(3, (sx) ncVar);
                }
                i++;
            }
        }
        super.zza(spVar);
    }
}
