package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement;

final class lp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ lq f3350a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ln f3351b;

    lp(ln lnVar, lq lqVar) {
        this.f3351b = lnVar;
        this.f3350a = lqVar;
    }

    public final void run() {
        ln.a(this.f3351b, this.f3350a);
        ln lnVar = this.f3351b;
        lnVar.f3346a = null;
        lnVar.zzawp().a((AppMeasurement.g) null);
    }
}
