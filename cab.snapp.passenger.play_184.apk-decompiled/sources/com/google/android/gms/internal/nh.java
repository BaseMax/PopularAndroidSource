package com.google.android.gms.internal;

import java.io.IOException;

public final class nh extends sr<nh> {
    private static volatile nh[] c;
    public String name = null;
    public Boolean zzjkt = null;
    public Boolean zzjku = null;
    public Integer zzjkv = null;

    public nh() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nh[] zzbbe() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nh[0];
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
        Boolean bool = this.zzjkt;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(2) + 1;
        }
        Boolean bool2 = this.zzjku;
        if (bool2 != null) {
            bool2.booleanValue();
            a2 += sp.zzlg(3) + 1;
        }
        Integer num = this.zzjkv;
        return num != null ? a2 + sp.zzad(4, num.intValue()) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nh)) {
            return false;
        }
        nh nhVar = (nh) obj;
        String str = this.name;
        if (str == null) {
            if (nhVar.name != null) {
                return false;
            }
        } else if (!str.equals(nhVar.name)) {
            return false;
        }
        Boolean bool = this.zzjkt;
        if (bool == null) {
            if (nhVar.zzjkt != null) {
                return false;
            }
        } else if (!bool.equals(nhVar.zzjkt)) {
            return false;
        }
        Boolean bool2 = this.zzjku;
        if (bool2 == null) {
            if (nhVar.zzjku != null) {
                return false;
            }
        } else if (!bool2.equals(nhVar.zzjku)) {
            return false;
        }
        Integer num = this.zzjkv;
        if (num == null) {
            if (nhVar.zzjkv != null) {
                return false;
            }
        } else if (!num.equals(nhVar.zzjkv)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nhVar.f3519a == null || nhVar.f3519a.isEmpty() : this.f3519a.equals(nhVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.name;
        int i = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzjkt;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzjku;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.zzjkv;
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
                this.name = soVar.readString();
            } else if (zzcvt == 16) {
                this.zzjkt = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 24) {
                this.zzjku = Boolean.valueOf(soVar.zzcvz());
            } else if (zzcvt == 32) {
                this.zzjkv = Integer.valueOf(soVar.zzcwi());
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
        Boolean bool = this.zzjkt;
        if (bool != null) {
            spVar.zzl(2, bool.booleanValue());
        }
        Boolean bool2 = this.zzjku;
        if (bool2 != null) {
            spVar.zzl(3, bool2.booleanValue());
        }
        Integer num = this.zzjkv;
        if (num != null) {
            spVar.zzaa(4, num.intValue());
        }
        super.zza(spVar);
    }
}
