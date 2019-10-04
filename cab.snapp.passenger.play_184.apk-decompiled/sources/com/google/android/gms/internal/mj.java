package com.google.android.gms.internal;

import android.content.ComponentName;

final class mj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ mf f3386a;

    mj(mf mfVar) {
        this.f3386a = mfVar;
    }

    public final void run() {
        lr.a(this.f3386a.f3378a, new ComponentName(this.f3386a.f3378a.getContext(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
