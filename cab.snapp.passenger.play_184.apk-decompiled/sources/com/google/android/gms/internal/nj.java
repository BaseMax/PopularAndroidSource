package com.google.android.gms.internal;

import java.io.IOException;

public final class nj extends sr<nj> {
    private static volatile nj[] c;
    public String key = null;
    public String value = null;

    public nj() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static nj[] zzbbf() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new nj[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        String str = this.key;
        if (str != null) {
            a2 += sp.zzo(1, str);
        }
        String str2 = this.value;
        return str2 != null ? a2 + sp.zzo(2, str2) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nj)) {
            return false;
        }
        nj njVar = (nj) obj;
        String str = this.key;
        if (str == null) {
            if (njVar.key != null) {
                return false;
            }
        } else if (!str.equals(njVar.key)) {
            return false;
        }
        String str2 = this.value;
        if (str2 == null) {
            if (njVar.value != null) {
                return false;
            }
        } else if (!str2.equals(njVar.value)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? njVar.f3519a == null || njVar.f3519a.isEmpty() : this.f3519a.equals(njVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.key;
        int i = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode3 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                this.key = soVar.readString();
            } else if (zzcvt == 18) {
                this.value = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String str = this.key;
        if (str != null) {
            spVar.zzn(1, str);
        }
        String str2 = this.value;
        if (str2 != null) {
            spVar.zzn(2, str2);
        }
        super.zza(spVar);
    }
}
