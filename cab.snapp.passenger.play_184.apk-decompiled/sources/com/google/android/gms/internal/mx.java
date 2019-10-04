package com.google.android.gms.internal;

import android.content.Intent;

final class mx extends ih {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ mw f3407a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    mx(mw mwVar, jx jxVar) {
        super(jxVar);
        this.f3407a = mwVar;
    }

    public final void run() {
        this.f3407a.cancel();
        this.f3407a.zzawy().zzazj().log("Sending upload intent from DelayedRunnable");
        Intent className = new Intent().setClassName(this.f3407a.getContext(), "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        this.f3407a.getContext().sendBroadcast(className);
    }
}
