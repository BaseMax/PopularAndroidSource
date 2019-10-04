package com.google.android.gms.internal;

import android.content.ComponentName;
import com.google.android.gms.analytics.r;

final class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ComponentName f3056a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ af f3057b;

    ah(af afVar, ComponentName componentName) {
        this.f3057b = afVar;
        this.f3056a = componentName;
    }

    public final void run() {
        ad adVar = this.f3057b.f3052a;
        ComponentName componentName = this.f3056a;
        r.zzve();
        if (adVar.f3050b != null) {
            adVar.f3050b = null;
            adVar.zza("Disconnected from device AnalyticsService", componentName);
            adVar.zzdta.zzwx().zzwp();
        }
    }
}
