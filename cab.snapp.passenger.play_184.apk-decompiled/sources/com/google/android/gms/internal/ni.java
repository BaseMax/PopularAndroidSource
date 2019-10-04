package com.google.android.gms.internal;

import java.io.IOException;

public final class ni extends sr<ni> {
    private Integer c = null;
    public String zzixs = null;
    public Long zzjkw = null;
    public nj[] zzjky = nj.zzbbf();
    public nh[] zzjkz = nh.zzbbe();
    public nb[] zzjla = nb.zzbba();

    public ni() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Long l = this.zzjkw;
        if (l != null) {
            a2 += sp.zzc(1, l.longValue());
        }
        String str = this.zzixs;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        Integer num = this.c;
        if (num != null) {
            a2 += sp.zzad(3, num.intValue());
        }
        nj[] njVarArr = this.zzjky;
        int i = 0;
        if (njVarArr != null && njVarArr.length > 0) {
            int i2 = a2;
            int i3 = 0;
            while (true) {
                nj[] njVarArr2 = this.zzjky;
                if (i3 >= njVarArr2.length) {
                    break;
                }
                nj njVar = njVarArr2[i3];
                if (njVar != null) {
                    i2 += sp.zzb(4, (sx) njVar);
                }
                i3++;
            }
            a2 = i2;
        }
        nh[] nhVarArr = this.zzjkz;
        if (nhVarArr != null && nhVarArr.length > 0) {
            int i4 = a2;
            int i5 = 0;
            while (true) {
                nh[] nhVarArr2 = this.zzjkz;
                if (i5 >= nhVarArr2.length) {
                    break;
                }
                nh nhVar = nhVarArr2[i5];
                if (nhVar != null) {
                    i4 += sp.zzb(5, (sx) nhVar);
                }
                i5++;
            }
            a2 = i4;
        }
        nb[] nbVarArr = this.zzjla;
        if (nbVarArr != null && nbVarArr.length > 0) {
            while (true) {
                nb[] nbVarArr2 = this.zzjla;
                if (i >= nbVarArr2.length) {
                    break;
                }
                nb nbVar = nbVarArr2[i];
                if (nbVar != null) {
                    a2 += sp.zzb(6, (sx) nbVar);
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
        if (!(obj instanceof ni)) {
            return false;
        }
        ni niVar = (ni) obj;
        Long l = this.zzjkw;
        if (l == null) {
            if (niVar.zzjkw != null) {
                return false;
            }
        } else if (!l.equals(niVar.zzjkw)) {
            return false;
        }
        String str = this.zzixs;
        if (str == null) {
            if (niVar.zzixs != null) {
                return false;
            }
        } else if (!str.equals(niVar.zzixs)) {
            return false;
        }
        Integer num = this.c;
        if (num == null) {
            if (niVar.c != null) {
                return false;
            }
        } else if (!num.equals(niVar.c)) {
            return false;
        }
        if (sv.equals((Object[]) this.zzjky, (Object[]) niVar.zzjky) && sv.equals((Object[]) this.zzjkz, (Object[]) niVar.zzjkz) && sv.equals((Object[]) this.zzjla, (Object[]) niVar.zzjla)) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? niVar.f3519a == null || niVar.f3519a.isEmpty() : this.f3519a.equals(niVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.zzjkw;
        int i = 0;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.zzixs;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.c;
        int hashCode4 = (((((((hashCode3 + (num == null ? 0 : num.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjky)) * 31) + sv.hashCode((Object[]) this.zzjkz)) * 31) + sv.hashCode((Object[]) this.zzjla)) * 31;
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
                this.zzjkw = Long.valueOf(soVar.zzcwn());
            } else if (zzcvt == 18) {
                this.zzixs = soVar.readString();
            } else if (zzcvt == 24) {
                this.c = Integer.valueOf(soVar.zzcwi());
            } else if (zzcvt == 34) {
                int zzb = ta.zzb(soVar, 34);
                nj[] njVarArr = this.zzjky;
                int length = njVarArr == null ? 0 : njVarArr.length;
                nj[] njVarArr2 = new nj[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjky, 0, njVarArr2, 0, length);
                }
                while (length < njVarArr2.length - 1) {
                    njVarArr2[length] = new nj();
                    soVar.zza(njVarArr2[length]);
                    soVar.zzcvt();
                    length++;
                }
                njVarArr2[length] = new nj();
                soVar.zza(njVarArr2[length]);
                this.zzjky = njVarArr2;
            } else if (zzcvt == 42) {
                int zzb2 = ta.zzb(soVar, 42);
                nh[] nhVarArr = this.zzjkz;
                int length2 = nhVarArr == null ? 0 : nhVarArr.length;
                nh[] nhVarArr2 = new nh[(zzb2 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.zzjkz, 0, nhVarArr2, 0, length2);
                }
                while (length2 < nhVarArr2.length - 1) {
                    nhVarArr2[length2] = new nh();
                    soVar.zza(nhVarArr2[length2]);
                    soVar.zzcvt();
                    length2++;
                }
                nhVarArr2[length2] = new nh();
                soVar.zza(nhVarArr2[length2]);
                this.zzjkz = nhVarArr2;
            } else if (zzcvt == 50) {
                int zzb3 = ta.zzb(soVar, 50);
                nb[] nbVarArr = this.zzjla;
                int length3 = nbVarArr == null ? 0 : nbVarArr.length;
                nb[] nbVarArr2 = new nb[(zzb3 + length3)];
                if (length3 != 0) {
                    System.arraycopy(this.zzjla, 0, nbVarArr2, 0, length3);
                }
                while (length3 < nbVarArr2.length - 1) {
                    nbVarArr2[length3] = new nb();
                    soVar.zza(nbVarArr2[length3]);
                    soVar.zzcvt();
                    length3++;
                }
                nbVarArr2[length3] = new nb();
                soVar.zza(nbVarArr2[length3]);
                this.zzjla = nbVarArr2;
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        Long l = this.zzjkw;
        if (l != null) {
            spVar.zzf(1, l.longValue());
        }
        String str = this.zzixs;
        if (str != null) {
            spVar.zzn(2, str);
        }
        Integer num = this.c;
        if (num != null) {
            spVar.zzaa(3, num.intValue());
        }
        nj[] njVarArr = this.zzjky;
        int i = 0;
        if (njVarArr != null && njVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                nj[] njVarArr2 = this.zzjky;
                if (i2 >= njVarArr2.length) {
                    break;
                }
                nj njVar = njVarArr2[i2];
                if (njVar != null) {
                    spVar.zza(4, (sx) njVar);
                }
                i2++;
            }
        }
        nh[] nhVarArr = this.zzjkz;
        if (nhVarArr != null && nhVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                nh[] nhVarArr2 = this.zzjkz;
                if (i3 >= nhVarArr2.length) {
                    break;
                }
                nh nhVar = nhVarArr2[i3];
                if (nhVar != null) {
                    spVar.zza(5, (sx) nhVar);
                }
                i3++;
            }
        }
        nb[] nbVarArr = this.zzjla;
        if (nbVarArr != null && nbVarArr.length > 0) {
            while (true) {
                nb[] nbVarArr2 = this.zzjla;
                if (i >= nbVarArr2.length) {
                    break;
                }
                nb nbVar = nbVarArr2[i];
                if (nbVar != null) {
                    spVar.zza(6, (sx) nbVar);
                }
                i++;
            }
        }
        super.zza(spVar);
    }
}
