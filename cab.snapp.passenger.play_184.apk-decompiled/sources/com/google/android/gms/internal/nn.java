package com.google.android.gms.internal;

import java.io.IOException;

public final class nn extends sr<nn> {
    public no[] zzjlm = no.zzbbj();

    public nn() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        no[] noVarArr = this.zzjlm;
        if (noVarArr != null && noVarArr.length > 0) {
            int i = 0;
            while (true) {
                no[] noVarArr2 = this.zzjlm;
                if (i >= noVarArr2.length) {
                    break;
                }
                no noVar = noVarArr2[i];
                if (noVar != null) {
                    a2 += sp.zzb(1, (sx) noVar);
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
        if (!(obj instanceof nn)) {
            return false;
        }
        nn nnVar = (nn) obj;
        if (!sv.equals((Object[]) this.zzjlm, (Object[]) nnVar.zzjlm)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? nnVar.f3519a == null || nnVar.f3519a.isEmpty() : this.f3519a.equals(nnVar.f3519a);
    }

    public final int hashCode() {
        return ((((getClass().getName().hashCode() + 527) * 31) + sv.hashCode((Object[]) this.zzjlm)) * 31) + ((this.f3519a == null || this.f3519a.isEmpty()) ? 0 : this.f3519a.hashCode());
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                int zzb = ta.zzb(soVar, 10);
                no[] noVarArr = this.zzjlm;
                int length = noVarArr == null ? 0 : noVarArr.length;
                no[] noVarArr2 = new no[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzjlm, 0, noVarArr2, 0, length);
                }
                while (length < noVarArr2.length - 1) {
                    noVarArr2[length] = new no();
                    soVar.zza(noVarArr2[length]);
                    soVar.zzcvt();
                    length++;
                }
                noVarArr2[length] = new no();
                soVar.zza(noVarArr2[length]);
                this.zzjlm = noVarArr2;
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        no[] noVarArr = this.zzjlm;
        if (noVarArr != null && noVarArr.length > 0) {
            int i = 0;
            while (true) {
                no[] noVarArr2 = this.zzjlm;
                if (i >= noVarArr2.length) {
                    break;
                }
                no noVar = noVarArr2[i];
                if (noVar != null) {
                    spVar.zza(1, (sx) noVar);
                }
                i++;
            }
        }
        super.zza(spVar);
    }
}
