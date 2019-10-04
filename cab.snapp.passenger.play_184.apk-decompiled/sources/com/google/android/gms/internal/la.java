package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement;

final class la implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AppMeasurement.ConditionalUserProperty f3323a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3324b;

    la(ky kyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.f3324b = kyVar;
        this.f3323a = conditionalUserProperty;
    }

    public final void run() {
        ky.a(this.f3324b, this.f3323a);
    }
}
