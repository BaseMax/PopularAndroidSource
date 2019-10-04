package com.google.android.gms.internal;

import java.io.IOException;

public final class ng extends sr<ng> {
    public Integer zzjko = null;
    public String zzjkp = null;
    public Boolean zzjkq = null;
    public String[] zzjkr = ta.EMPTY_STRING_ARRAY;

    public ng() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public final ng zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                try {
                    int zzcwi = soVar.zzcwi();
                    switch (zzcwi) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.zzjko = Integer.valueOf(zzcwi);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(41);
                            sb.append(zzcwi);
                            sb.append(" is not a valid enum MatchType");
                            throw new IllegalArgumentException(sb.toString());
                    }
                } catch (IllegalArgumentException unused) {
                    soVar.zzmg(soVar.getPosition());
                    a(soVar, zzcvt);
                }
            } else if (zzcvt == 18) {
                this.zzjkp = soVar.readString();
            } else if (zzcvt == 24) {
                this.zzjkq = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 34) {
                int zzb = ta.zzb(soVar, 34);
                String[] strArr = this.zzjkr;
                int length = strArr == null ? 0 : strArr.length;
                String[] strArr2 = new String[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjkr, 0, strArr2, 0, length);
                }
                while (length < strArr2.length - 1) {
                    strArr2[length] = soVar.readString();
                    soVar.zzcvt();
                    length++;
                }
                strArr2[length] = soVar.readString();
                this.zzjkr = strArr2;
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Integer num = this.zzjko;
        if (num != null) {
            a2 += sp.zzad(1, num.intValue());
        }
        String str = this.zzjkp;
        if (str != null) {
            a2 += sp.zzo(2, str);
        }
        Boolean bool = this.zzjkq;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(3) + 1;
        }
        String[] strArr = this.zzjkr;
        if (strArr == null || strArr.length <= 0) {
            return a2;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr2 = this.zzjkr;
            if (i >= strArr2.length) {
                return a2 + i2 + (i3 * 1);
            }
            String str2 = strArr2[i];
            if (str2 != null) {
                i3++;
                i2 += sp.zztt(str2);
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ng)) {
            return false;
        }
        ng ngVar = (ng) obj;
        Integer num = this.zzjko;
        if (num == null) {
            if (ngVar.zzjko != null) {
                return false;
            }
        } else if (!num.equals(ngVar.zzjko)) {
            return false;
        }
        String str = this.zzjkp;
        if (str == null) {
            if (ngVar.zzjkp != null) {
                return false;
            }
        } else if (!str.equals(ngVar.zzjkp)) {
            return false;
        }
        Boolean bool = this.zzjkq;
        if (bool == null) {
            if (ngVar.zzjkq != null) {
                return false;
            }
        } else if (!bool.equals(ngVar.zzjkq)) {
            return false;
        }
        if (!sv.equals((Object[]) this.zzjkr, (Object[]) ngVar.zzjkr)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? ngVar.f3519a == null || ngVar.f3519a.isEmpty() : this.f3519a.equals(ngVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjko;
        int i = 0;
        int intValue = (hashCode + (num == null ? 0 : num.intValue())) * 31;
        String str = this.zzjkp;
        int hashCode2 = (intValue + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzjkq;
        int hashCode3 = (((hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjkr)) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode3 + i;
    }

    public final void zza(sp spVar) throws IOException {
        Integer num = this.zzjko;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        String str = this.zzjkp;
        if (str != null) {
            spVar.zzn(2, str);
        }
        Boolean bool = this.zzjkq;
        if (bool != null) {
            spVar.zzl(3, bool.booleanValue());
        }
        String[] strArr = this.zzjkr;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.zzjkr;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    spVar.zzn(4, str2);
                }
                i++;
            }
        }
        super.zza(spVar);
    }
}
