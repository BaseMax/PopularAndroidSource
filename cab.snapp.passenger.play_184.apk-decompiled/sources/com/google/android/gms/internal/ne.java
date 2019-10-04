package com.google.android.gms.internal;

import java.io.IOException;

public final class ne extends sr<ne> {
    public Integer zzjkg = null;
    public Boolean zzjkh = null;
    public String zzjki = null;
    public String zzjkj = null;
    public String zzjkk = null;

    public ne() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public final ne zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                try {
                    int zzcwi = soVar.zzcwi();
                    if (!(zzcwi == 0 || zzcwi == 1 || zzcwi == 2 || zzcwi == 3)) {
                        if (zzcwi != 4) {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append(zzcwi);
                            sb.append(" is not a valid enum ComparisonType");
                            throw new IllegalArgumentException(sb.toString());
                        }
                    }
                    this.zzjkg = Integer.valueOf(zzcwi);
                } catch (IllegalArgumentException unused) {
                    soVar.zzmg(soVar.getPosition());
                    a(soVar, zzcvt);
                }
            } else if (zzcvt == 16) {
                this.zzjkh = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 26) {
                this.zzjki = soVar.readString();
            } else if (zzcvt == 34) {
                this.zzjkj = soVar.readString();
            } else if (zzcvt == 42) {
                this.zzjkk = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Integer num = this.zzjkg;
        if (num != null) {
            a2 += sp.zzad(1, num.intValue());
        }
        Boolean bool = this.zzjkh;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(2) + 1;
        }
        String str = this.zzjki;
        if (str != null) {
            a2 += sp.zzo(3, str);
        }
        String str2 = this.zzjkj;
        if (str2 != null) {
            a2 += sp.zzo(4, str2);
        }
        String str3 = this.zzjkk;
        return str3 != null ? a2 + sp.zzo(5, str3) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ne)) {
            return false;
        }
        ne neVar = (ne) obj;
        Integer num = this.zzjkg;
        if (num == null) {
            if (neVar.zzjkg != null) {
                return false;
            }
        } else if (!num.equals(neVar.zzjkg)) {
            return false;
        }
        Boolean bool = this.zzjkh;
        if (bool == null) {
            if (neVar.zzjkh != null) {
                return false;
            }
        } else if (!bool.equals(neVar.zzjkh)) {
            return false;
        }
        String str = this.zzjki;
        if (str == null) {
            if (neVar.zzjki != null) {
                return false;
            }
        } else if (!str.equals(neVar.zzjki)) {
            return false;
        }
        String str2 = this.zzjkj;
        if (str2 == null) {
            if (neVar.zzjkj != null) {
                return false;
            }
        } else if (!str2.equals(neVar.zzjkj)) {
            return false;
        }
        String str3 = this.zzjkk;
        if (str3 == null) {
            if (neVar.zzjkk != null) {
                return false;
            }
        } else if (!str3.equals(neVar.zzjkk)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? neVar.f3519a == null || neVar.f3519a.isEmpty() : this.f3519a.equals(neVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjkg;
        int i = 0;
        int intValue = (hashCode + (num == null ? 0 : num.intValue())) * 31;
        Boolean bool = this.zzjkh;
        int hashCode2 = (intValue + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzjki;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzjkj;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.zzjkk;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode5 + i;
    }

    public final void zza(sp spVar) throws IOException {
        Integer num = this.zzjkg;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        Boolean bool = this.zzjkh;
        if (bool != null) {
            spVar.zzl(2, bool.booleanValue());
        }
        String str = this.zzjki;
        if (str != null) {
            spVar.zzn(3, str);
        }
        String str2 = this.zzjkj;
        if (str2 != null) {
            spVar.zzn(4, str2);
        }
        String str3 = this.zzjkk;
        if (str3 != null) {
            spVar.zzn(5, str3);
        }
        super.zza(spVar);
    }
}
