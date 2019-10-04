package c.e.a.b.h.b;

import android.os.Handler;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.ad;

/* renamed from: c.e.a.b.h.b.c  reason: case insensitive filesystem */
public abstract class C0907c {

    /* renamed from: a  reason: collision with root package name */
    public static volatile Handler f10835a;

    /* renamed from: b  reason: collision with root package name */
    public final C0967wa f10836b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f10837c;

    /* renamed from: d  reason: collision with root package name */
    public volatile long f10838d;

    public C0907c(C0967wa waVar) {
        r.a(waVar);
        this.f10836b = waVar;
        this.f10837c = new C0910d(this, waVar);
    }

    public final void a(long j2) {
        a();
        if (j2 >= 0) {
            this.f10838d = this.f10836b.c().c();
            if (!b().postDelayed(this.f10837c, j2)) {
                this.f10836b.e().t().a("Failed to schedule delayed post. time", Long.valueOf(j2));
            }
        }
    }

    public final Handler b() {
        Handler handler;
        if (f10835a != null) {
            return f10835a;
        }
        synchronized (C0907c.class) {
            if (f10835a == null) {
                f10835a = new ad(this.f10836b.b().getMainLooper());
            }
            handler = f10835a;
        }
        return handler;
    }

    public abstract void c();

    public final boolean d() {
        return this.f10838d != 0;
    }

    public final void a() {
        this.f10838d = 0;
        b().removeCallbacks(this.f10837c);
    }
}
