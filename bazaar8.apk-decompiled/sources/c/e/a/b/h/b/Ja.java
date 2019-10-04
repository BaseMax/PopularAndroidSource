package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Ja implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f10666a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10667b;

    public Ja(Fa fa, long j2) {
        this.f10667b = fa;
        this.f10666a = j2;
    }

    public final void run() {
        Fa fa = this.f10667b;
        long j2 = this.f10666a;
        fa.l();
        fa.j();
        fa.w();
        fa.e().A().a("Resetting analytics data (FE)");
        fa.u().C();
        if (fa.i().p(fa.q().C())) {
            fa.h().f10618k.a(j2);
        }
        boolean f2 = fa.f11077a.f();
        if (!fa.i().q()) {
            fa.h().d(!f2);
        }
        fa.r().D();
        fa.f10625h = !f2;
        this.f10667b.r().a((AtomicReference<String>) new AtomicReference());
    }
}
