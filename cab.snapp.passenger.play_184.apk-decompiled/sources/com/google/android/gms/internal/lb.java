package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement;

final class lb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AppMeasurement.ConditionalUserProperty f3325a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3326b;

    lb(ky kyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.f3326b = kyVar;
        this.f3325a = conditionalUserProperty;
    }

    public final void run() {
        ky.b(this.f3326b, this.f3325a);
    }
}
