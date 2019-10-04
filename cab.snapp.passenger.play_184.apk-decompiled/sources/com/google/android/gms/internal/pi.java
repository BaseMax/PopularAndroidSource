package com.google.android.gms.internal;

import com.google.android.gms.internal.ps;
import java.io.IOException;

final class pi implements sn {

    /* renamed from: a  reason: collision with root package name */
    private final ph f3439a;

    private pi(ph phVar) {
        this.f3439a = (ph) pu.a(phVar, "output");
        this.f3439a.f3438b = this;
    }

    public static pi zzb(ph phVar) {
        return phVar.f3438b != null ? phVar.f3438b : new pi(phVar);
    }

    public final void zzb(int i, Object obj) {
        try {
            if (obj instanceof ou) {
                this.f3439a.zzb(i, (ou) obj);
            } else {
                this.f3439a.zzb(i, (qr) obj);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public final int zzcwv() {
        return ps.f.zzphn;
    }
}
