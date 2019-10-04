package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

public final class bg implements bd {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ax f2945a;

    public bg(ax axVar) {
        this.f2945a = axVar;
    }

    public final void zzf(ConnectionResult connectionResult) {
        if (connectionResult.isSuccess()) {
            ax axVar = this.f2945a;
            axVar.zza(null, axVar.a());
            return;
        }
        if (this.f2945a.v != null) {
            this.f2945a.v.onConnectionFailed(connectionResult);
        }
    }
}
