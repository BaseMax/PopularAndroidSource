package c.e.a.b.h.b;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import c.e.a.b.g.f.ad;

public final class Jb extends C0977zb {

    /* renamed from: c  reason: collision with root package name */
    public Handler f10668c;

    /* renamed from: d  reason: collision with root package name */
    public long f10669d = c().a();

    /* renamed from: e  reason: collision with root package name */
    public long f10670e = this.f10669d;

    /* renamed from: f  reason: collision with root package name */
    public final C0907c f10671f = new Kb(this, this.f11077a);

    /* renamed from: g  reason: collision with root package name */
    public final C0907c f10672g = new Lb(this, this.f11077a);

    public Jb(Y y) {
        super(y);
    }

    public final void B() {
        synchronized (this) {
            if (this.f10668c == null) {
                this.f10668c = new ad(Looper.getMainLooper());
            }
        }
    }

    public final void C() {
        l();
        this.f10671f.a();
        this.f10672g.a();
        this.f10669d = 0;
        this.f10670e = this.f10669d;
    }

    public final void D() {
        l();
        d(c().c());
    }

    public final long E() {
        long a2 = c().a();
        long j2 = a2 - this.f10670e;
        this.f10670e = a2;
        return j2;
    }

    public final void F() {
        l();
        a(false, false);
        o().a(c().a());
    }

    public final void a(long j2) {
        l();
        B();
        if (i().e(q().C(), C0931k.sa)) {
            h().z.a(false);
        }
        e().B().a("Activity resumed, time", Long.valueOf(j2));
        this.f10669d = j2;
        this.f10670e = this.f10669d;
        if (i().a(q().C())) {
            b(c().c());
            return;
        }
        this.f10671f.a();
        this.f10672g.a();
        if (h().a(c().c())) {
            h().s.a(true);
            h().x.a(0);
        }
        if (h().s.a()) {
            this.f10671f.a(Math.max(0, h().q.a() - h().x.a()));
        } else {
            this.f10672g.a(Math.max(0, 3600000 - h().x.a()));
        }
    }

    public final void b(long j2) {
        l();
        B();
        a(j2, false);
    }

    public final void c(long j2) {
        l();
        B();
        if (i().e(q().C(), C0931k.sa)) {
            h().z.a(true);
        }
        this.f10671f.a();
        this.f10672g.a();
        e().B().a("Activity paused, time", Long.valueOf(j2));
        if (this.f10669d != 0) {
            h().x.a(h().x.a() + (j2 - this.f10669d));
        }
    }

    public final void d(long j2) {
        l();
        e().B().a("Session started, time", Long.valueOf(c().a()));
        Long valueOf = i().t(q().C()) ? Long.valueOf(j2 / 1000) : null;
        p().a("auto", "_sid", (Object) valueOf, j2);
        h().s.a(false);
        Bundle bundle = new Bundle();
        if (i().t(q().C())) {
            bundle.putLong("_sid", valueOf.longValue());
        }
        p().a("auto", "_s", j2, bundle);
        h().w.a(j2);
    }

    public final boolean z() {
        return false;
    }

    public final void a(long j2, boolean z) {
        l();
        B();
        this.f10671f.a();
        this.f10672g.a();
        if (h().a(j2)) {
            h().s.a(true);
            h().x.a(0);
        }
        if (z && i().b(q().C())) {
            h().w.a(j2);
        }
        if (h().s.a()) {
            d(j2);
        } else {
            this.f10672g.a(Math.max(0, 3600000 - h().x.a()));
        }
    }

    public final boolean a(boolean z, boolean z2) {
        l();
        w();
        long a2 = c().a();
        h().w.a(c().c());
        long j2 = a2 - this.f10669d;
        if (z || j2 >= 1000) {
            h().x.a(j2);
            e().B().a("Recording user engagement, ms", Long.valueOf(j2));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j2);
            C0912db.a(s().B(), bundle, true);
            if (i().c(q().C())) {
                if (i().e(q().C(), C0931k.xa)) {
                    if (!z2) {
                        E();
                    }
                } else if (z2) {
                    bundle.putLong("_fr", 1);
                } else {
                    E();
                }
            }
            if (!i().e(q().C(), C0931k.xa) || !z2) {
                p().b("auto", "_e", bundle);
            }
            this.f10669d = a2;
            this.f10672g.a();
            this.f10672g.a(Math.max(0, 3600000 - h().x.a()));
            return true;
        }
        e().B().a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
        return false;
    }
}
