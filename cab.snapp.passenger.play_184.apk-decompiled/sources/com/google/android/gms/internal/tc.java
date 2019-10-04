package com.google.android.gms.internal;

import java.io.IOException;

public final class tc extends sr<tc> implements Cloneable {
    private int c = 0;
    private String d = "";
    private String e = "";

    public tc() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public tc clone() {
        try {
            return (tc) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        int i = this.c;
        if (i != 0) {
            a2 += sp.zzad(1, i);
        }
        String str = this.d;
        if (str != null && !str.equals("")) {
            a2 += sp.zzo(2, this.d);
        }
        String str2 = this.e;
        return (str2 == null || str2.equals("")) ? a2 : a2 + sp.zzo(3, this.e);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tc)) {
            return false;
        }
        tc tcVar = (tc) obj;
        if (this.c != tcVar.c) {
            return false;
        }
        String str = this.d;
        if (str == null) {
            if (tcVar.d != null) {
                return false;
            }
        } else if (!str.equals(tcVar.d)) {
            return false;
        }
        String str2 = this.e;
        if (str2 == null) {
            if (tcVar.e != null) {
                return false;
            }
        } else if (!str2.equals(tcVar.e)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? tcVar.f3519a == null || tcVar.f3519a.isEmpty() : this.f3519a.equals(tcVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + this.c) * 31;
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
            if (zzcvt == 8) {
                this.c = soVar.zzcvw();
            } else if (zzcvt == 18) {
                this.d = soVar.readString();
            } else if (zzcvt == 26) {
                this.e = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        int i = this.c;
        if (i != 0) {
            spVar.zzaa(1, i);
        }
        String str = this.d;
        if (str != null && !str.equals("")) {
            spVar.zzn(2, this.d);
        }
        String str2 = this.e;
        if (str2 != null && !str2.equals("")) {
            spVar.zzn(3, this.e);
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (tc) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (tc) clone();
    }
}
