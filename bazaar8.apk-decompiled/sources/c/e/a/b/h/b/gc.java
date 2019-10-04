package c.e.a.b.h.b;

import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzaj;

public final class gc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ fd f10907a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ zzaj f10908b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10909c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f10910d;

    public gc(AppMeasurementDynamiteService appMeasurementDynamiteService, fd fdVar, zzaj zzaj, String str) {
        this.f10910d = appMeasurementDynamiteService;
        this.f10907a = fdVar;
        this.f10908b = zzaj;
        this.f10909c = str;
    }

    public final void run() {
        this.f10910d.f13225a.D().a(this.f10907a, this.f10908b, this.f10909c);
    }
}
