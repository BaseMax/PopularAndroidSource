package com.google.android.gms.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

final class cu extends cq {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ct f3123a;

    cu(ct ctVar) {
        this.f3123a = ctVar;
    }

    public final void zza(Status status, Credential credential) {
        this.f3123a.setResult(new cr(status, credential));
    }

    public final void zze(Status status) {
        this.f3123a.setResult(cr.zzf(status));
    }
}
