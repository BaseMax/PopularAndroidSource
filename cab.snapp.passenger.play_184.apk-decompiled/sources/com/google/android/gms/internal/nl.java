package com.google.android.gms.internal;

import java.io.IOException;

public final class nl extends sr<nl> {
    private static volatile nl[] c;
    public Integer count = null;
    public String name = null;
    public nm[] zzjlh = nm.zzbbi();
    public Long zzjli = null;
    public Long zzjlj = null;

    public nl() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nl[] zzbbh() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nl[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        nm[] nmVarArr = this.zzjlh;
        if (nmVarArr != null && nmVarArr.length > 0) {
            int i = 0;
            while (true) {
                nm[] nmVarArr2 = this.zzjlh;
                if (i >= nmVarArr2.length) {
                    break;
                }
                nm nmVar = nmVarArr2[i];
                if (nmVar != null) {
                    a2 += sp.zzb(1, (sx) nmVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        Long l = this.zzjli;
        if (l != null) {
            a2 += sp.zzc(3, l.longValue());
        }
        Long l2 = this.zzjlj;
        if (l2 != null) {
            a2 += sp.zzc(4, l2.longValue());
        }
        Integer num = this.count;
        return num != null ? a2 + sp.zzad(5, num.intValue()) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nl)) {
            return false;
        }
        nl nlVar = (nl) obj;
        if (!sv.equals((Object[]) this.zzjlh, (Object[]) nlVar.zzjlh)) {
            return false;
        }
        String str = this.name;
        if (str == null) {
            if (nlVar.name != null) {
                return false;
            }
        } else if (!str.equals(nlVar.name)) {
            return false;
        }
        Long l = this.zzjli;
        if (l == null) {
            if (nlVar.zzjli != null) {
                return false;
            }
        } else if (!l.equals(nlVar.zzjli)) {
            return false;
        }
        Long l2 = this.zzjlj;
        if (l2 == null) {
            if (nlVar.zzjlj != null) {
                return false;
            }
        } else if (!l2.equals(nlVar.zzjlj)) {
            return false;
        }
        Integer num = this.count;
        if (num == null) {
            if (nlVar.count != null) {
                return false;
            }
        } else if (!num.equals(nlVar.count)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nlVar.f3519a == null || nlVar.f3519a.isEmpty() : this.f3519a.equals(nlVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + sv.hashCode((Object[]) this.zzjlh)) * 31;
        String str = this.name;
        int i = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.zzjli;
        int hashCode3 = (hashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.zzjlj;
        int hashCode4 = (hashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.count;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
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
            if (zzcvt == 10) {
                int zzb = ta.zzb(soVar, 10);
                nm[] nmVarArr = this.zzjlh;
                int length = nmVarArr == null ? 0 : nmVarArr.length;
                nm[] nmVarArr2 = new nm[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjlh, 0, nmVarArr2, 0, length);
                }
                while (length < nmVarArr2.length - 1) {
                    nmVarArr2[length] = new nm();
                    soVar.zza(nmVarArr2[length]);
                    soVar.zzcvt();
                    length++;
                }
                nmVarArr2[length] = new nm();
                soVar.zza(nmVarArr2[length]);
                this.zzjlh = nmVarArr2;
            } else if (zzcvt == 18) {
                this.name = soVar.readString();
            } else if (zzcvt == 24) {
                this.zzjli = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 32) {
                this.zzjlj = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 40) {
                this.count = Integer.valueOf(soVar.zzcwi());
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        nm[] nmVarArr = this.zzjlh;
        if (nmVarArr != null && nmVarArr.length > 0) {
            int i = 0;
            while (true) {
                nm[] nmVarArr2 = this.zzjlh;
                if (i >= nmVarArr2.length) {
                    break;
                }
                nm nmVar = nmVarArr2[i];
                if (nmVar != null) {
                    spVar.zza(1, (sx) nmVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            spVar.zzn(2, str);
        }
        Long l = this.zzjli;
        if (l != null) {
            spVar.zzf(3, l.longValue());
        }
        Long l2 = this.zzjlj;
        if (l2 != null) {
            spVar.zzf(4, l2.longValue());
        }
        Integer num = this.count;
        if (num != null) {
            spVar.zzaa(5, num.intValue());
        }
        super.zza(spVar);
    }
}
