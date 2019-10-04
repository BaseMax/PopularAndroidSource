package com.google.android.gms.internal;

import java.io.IOException;

public final class th extends sr<th> {
    private static volatile th[] c;
    public String zzpri = "";

    public th() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static th[] zzdbd() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new th[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        String str = this.zzpri;
        return (str == null || str.equals("")) ? a2 : a2 + sp.zzo(1, this.zzpri);
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                this.zzpri = soVar.readString();
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String str = this.zzpri;
        if (str != null && !str.equals("")) {
            spVar.zzn(1, this.zzpri);
        }
        super.zza(spVar);
    }
}
