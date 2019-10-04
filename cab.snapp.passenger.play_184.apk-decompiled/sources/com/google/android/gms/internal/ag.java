package com.google.android.gms.internal;

import com.google.android.gms.analytics.r;

final class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bl f3054a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ af f3055b;

    ag(af afVar, bl blVar) {
        this.f3055b = afVar;
        this.f3054a = blVar;
    }

    public final void run() {
        if (!this.f3055b.f3052a.isConnected()) {
            this.f3055b.f3052a.zzdv("Connected to service after a timeout");
            ad adVar = this.f3055b.f3052a;
            bl blVar = this.f3054a;
            r.zzve();
            adVar.f3050b = blVar;
            adVar.a();
            adVar.zzdta.zzwx().a();
        }
    }
}
