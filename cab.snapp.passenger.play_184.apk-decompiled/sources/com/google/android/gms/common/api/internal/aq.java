package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

final class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ConnectionResult f2770a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ an f2771b;

    aq(an anVar, ConnectionResult connectionResult) {
        this.f2771b = anVar;
        this.f2770a = connectionResult;
    }

    public final void run() {
        this.f2771b.onConnectionFailed(this.f2770a);
    }
}
