package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;

public final class db implements f.b, f.c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f2844a;

    /* renamed from: b  reason: collision with root package name */
    private dc f2845b;
    public final a<?> zzfin;

    public db(a<?> aVar, boolean z) {
        this.zzfin = aVar;
        this.f2844a = z;
    }

    private final void a() {
        ap.checkNotNull(this.f2845b, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    public final void onConnected(Bundle bundle) {
        a();
        this.f2845b.onConnected(bundle);
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        a();
        this.f2845b.zza(connectionResult, this.zzfin, this.f2844a);
    }

    public final void onConnectionSuspended(int i) {
        a();
        this.f2845b.onConnectionSuspended(i);
    }

    public final void zza(dc dcVar) {
        this.f2845b = dcVar;
    }
}
