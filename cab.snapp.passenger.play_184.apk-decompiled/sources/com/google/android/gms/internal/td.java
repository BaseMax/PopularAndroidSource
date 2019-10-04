package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class td extends sr<td> implements Cloneable {
    private byte[] c = ta.zzpnv;
    private String d = "";
    private byte[][] e = ta.zzpnu;
    private boolean f = false;

    public td() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public td clone() {
        try {
            td tdVar = (td) super.clone();
            byte[][] bArr = this.e;
            if (bArr != null && bArr.length > 0) {
                tdVar.e = (byte[][]) bArr.clone();
            }
            return tdVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        if (!Arrays.equals(this.c, ta.zzpnv)) {
            a2 += sp.zzd(1, this.c);
        }
        byte[][] bArr = this.e;
        if (bArr != null && bArr.length > 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte[][] bArr2 = this.e;
                if (i >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    i3++;
                    i2 += sp.zzbg(bArr3);
                }
                i++;
            }
            a2 = a2 + i2 + (i3 * 1);
        }
        if (this.f) {
            a2 += sp.zzlg(3) + 1;
        }
        String str = this.d;
        return (str == null || str.equals("")) ? a2 : a2 + sp.zzo(4, this.d);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof td)) {
            return false;
        }
        td tdVar = (td) obj;
        if (!Arrays.equals(this.c, tdVar.c)) {
            return false;
        }
        String str = this.d;
        if (str == null) {
            if (tdVar.d != null) {
                return false;
            }
        } else if (!str.equals(tdVar.d)) {
            return false;
        }
        if (sv.zza(this.e, tdVar.e) && this.f == tdVar.f) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? tdVar.f3519a == null || tdVar.f3519a.isEmpty() : this.f3519a.equals(tdVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.c)) * 31;
        String str = this.d;
        int i = 0;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + sv.zzd(this.e)) * 31) + (this.f ? 1231 : 1237)) * 31;
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
            if (zzcvt == 10) {
                this.c = soVar.readBytes();
            } else if (zzcvt == 18) {
                int zzb = ta.zzb(soVar, 18);
                byte[][] bArr = this.e;
                int length = bArr == null ? 0 : bArr.length;
                byte[][] bArr2 = new byte[(zzb + length)][];
                if (length != 0) {
                    System.arraycopy(this.e, 0, bArr2, 0, length);
                }
                while (length < bArr2.length - 1) {
                    bArr2[length] = soVar.readBytes();
                    soVar.zzcvt();
                    length++;
                }
                bArr2[length] = soVar.readBytes();
                this.e = bArr2;
            } else if (zzcvt == 24) {
                this.f = soVar.zzcvz();
            } else if (zzcvt == 34) {
                this.d = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        if (!Arrays.equals(this.c, ta.zzpnv)) {
            spVar.zzc(1, this.c);
        }
        byte[][] bArr = this.e;
        if (bArr != null && bArr.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr2 = this.e;
                if (i >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    spVar.zzc(2, bArr3);
                }
                i++;
            }
        }
        boolean z = this.f;
        if (z) {
            spVar.zzl(3, z);
        }
        String str = this.d;
        if (str != null && !str.equals("")) {
            spVar.zzn(4, this.d);
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (td) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (td) clone();
    }
}
