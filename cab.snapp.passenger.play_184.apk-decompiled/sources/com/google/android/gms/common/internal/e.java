package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;

final class e implements ba {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f.c f2962a;

    e(f.c cVar) {
        this.f2962a = cVar;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f2962a.onConnectionFailed(connectionResult);
    }
}
