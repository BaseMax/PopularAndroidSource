package com.google.android.gms.internal;

import java.io.IOException;

public final class tf extends sr<tf> implements Cloneable {
    private static volatile tf[] c;
    private String d = "";
    private String e = "";

    public tf() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public tf clone() {
        try {
            return (tf) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public static tf[] zzdba() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new tf[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        String str = this.d;
        if (str != null && !str.equals("")) {
            a2 += sp.zzo(1, this.d);
        }
        String str2 = this.e;
        return (str2 == null || str2.equals("")) ? a2 : a2 + sp.zzo(2, this.e);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tf)) {
            return false;
        }
        tf tfVar = (tf) obj;
        String str = this.d;
        if (str == null) {
            if (tfVar.d != null) {
                return false;
            }
        } else if (!str.equals(tfVar.d)) {
            return false;
        }
        String str2 = this.e;
        if (str2 == null) {
            if (tfVar.e != null) {
                return false;
            }
        } else if (!str2.equals(tfVar.e)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? tfVar.f3519a == null || tfVar.f3519a.isEmpty() : this.f3519a.equals(tfVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.d;
        int i = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
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
                this.d = soVar.readString();
            } else if (zzcvt == 18) {
                this.e = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String str = this.d;
        if (str != null && !str.equals("")) {
            spVar.zzn(1, this.d);
        }
        String str2 = this.e;
        if (str2 != null && !str2.equals("")) {
            spVar.zzn(2, this.e);
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (tf) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (tf) clone();
    }
}
