package com.google.android.gms.internal;

import com.google.android.gms.analytics.r;

final class ae extends az {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ad f3051a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ae(ad adVar, z zVar) {
        super(zVar);
        this.f3051a = adVar;
    }

    public final void run() {
        ad adVar = this.f3051a;
        r.zzve();
        if (adVar.isConnected()) {
            adVar.zzdu("Inactivity, disconnecting from device AnalyticsService");
            adVar.disconnect();
        }
    }
}
