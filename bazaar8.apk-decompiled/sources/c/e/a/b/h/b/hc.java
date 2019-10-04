package c.e.a.b.h.b;

import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

public final class hc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ fd f10918a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10919b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10920c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f10921d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f10922e;

    public hc(AppMeasurementDynamiteService appMeasurementDynamiteService, fd fdVar, String str, String str2, boolean z) {
        this.f10922e = appMeasurementDynamiteService;
        this.f10918a = fdVar;
        this.f10919b = str;
        this.f10920c = str2;
        this.f10921d = z;
    }

    public final void run() {
        this.f10922e.f13225a.D().a(this.f10918a, this.f10919b, this.f10920c, this.f10921d);
    }
}
