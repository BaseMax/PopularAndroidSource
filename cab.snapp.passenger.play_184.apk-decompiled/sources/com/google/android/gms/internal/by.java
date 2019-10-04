package com.google.android.gms.internal;

import android.os.Build;

final class by implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bx f3112a;

    by(bx bxVar) {
        this.f3112a = bxVar;
    }

    public final void run() {
        if (this.f3112a.f3110a != null) {
            if (((bz) this.f3112a.d.f3109b).callServiceStopSelfResult(this.f3112a.f3110a.intValue())) {
                this.f3112a.f3111b.zzdu("Local AnalyticsService processed last dispatch request");
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f3112a.f3111b.zzdu("AnalyticsJobService processed last dispatch request");
            ((bz) this.f3112a.d.f3109b).zza(this.f3112a.c, false);
        }
    }
}
