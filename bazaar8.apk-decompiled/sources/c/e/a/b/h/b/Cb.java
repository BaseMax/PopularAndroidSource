package c.e.a.b.h.b;

import android.content.ComponentName;
import android.content.Context;

public final class Cb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0971xb f10594a;

    public Cb(C0971xb xbVar) {
        this.f10594a = xbVar;
    }

    public final void run() {
        C0921gb gbVar = this.f10594a.f11106c;
        Context b2 = gbVar.b();
        this.f10594a.f11106c.a();
        gbVar.a(new ComponentName(b2, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
