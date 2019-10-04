package c.e.a.b.h.b;

import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

public final class ic implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ fd f10931a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10932b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10933c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f10934d;

    public ic(AppMeasurementDynamiteService appMeasurementDynamiteService, fd fdVar, String str, String str2) {
        this.f10934d = appMeasurementDynamiteService;
        this.f10931a = fdVar;
        this.f10932b = str;
        this.f10933c = str2;
    }

    public final void run() {
        this.f10934d.f13225a.D().a(this.f10931a, this.f10932b, this.f10933c);
    }
}
