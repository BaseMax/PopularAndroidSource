package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;

final class lo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3348a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ AppMeasurement.g f3349b;
    private /* synthetic */ lq c;
    private /* synthetic */ ln d;

    lo(ln lnVar, boolean z, AppMeasurement.g gVar, lq lqVar) {
        this.d = lnVar;
        this.f3348a = z;
        this.f3349b = gVar;
        this.c = lqVar;
    }

    public final void run() {
        if (this.f3348a && this.d.f3346a != null) {
            ln lnVar = this.d;
            ln.a(lnVar, lnVar.f3346a);
        }
        AppMeasurement.g gVar = this.f3349b;
        if (gVar == null || gVar.zziwm != this.c.zziwm || !na.zzas(this.f3349b.zziwl, this.c.zziwl) || !na.zzas(this.f3349b.zziwk, this.c.zziwk)) {
            Bundle bundle = new Bundle();
            ln.zza((AppMeasurement.g) this.c, bundle);
            AppMeasurement.g gVar2 = this.f3349b;
            if (gVar2 != null) {
                if (gVar2.zziwk != null) {
                    bundle.putString("_pn", this.f3349b.zziwk);
                }
                bundle.putString("_pc", this.f3349b.zziwl);
                bundle.putLong("_pi", this.f3349b.zziwm);
            }
            this.d.zzawm().zzc("auto", "_vs", bundle);
        }
        ln lnVar2 = this.d;
        lnVar2.f3346a = this.c;
        lnVar2.zzawp().a((AppMeasurement.g) this.c);
    }
}
