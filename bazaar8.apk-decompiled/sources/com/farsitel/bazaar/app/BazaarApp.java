package com.farsitel.bazaar.app;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import b.b.a.o;
import c.c.a.b.d;
import c.c.a.d.g.b;
import c.c.a.h.a.C0559a;
import c.c.a.h.a.Ca;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.ui.splash.SplashActivity;
import d.a.a.f;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: BazaarApp.kt */
public final class BazaarApp extends f {

    /* renamed from: h  reason: collision with root package name */
    public static BazaarApp f12103h;

    /* renamed from: i  reason: collision with root package name */
    public static final a f12104i = new a(null);

    /* renamed from: j  reason: collision with root package name */
    public d f12105j;

    /* renamed from: k  reason: collision with root package name */
    public C0559a f12106k;

    /* compiled from: BazaarApp.kt */
    public static final class a {
        public a() {
        }

        public final BazaarApp a() {
            BazaarApp g2 = BazaarApp.f12103h;
            if (g2 != null) {
                return g2;
            }
            j.c("instance");
            throw null;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public final void a(boolean z) {
        a(new Intent(this, SplashActivity.class), z);
    }

    public void attachBaseContext(Context context) {
        j.b(context, "base");
        b.f4814b.a(context);
        super.attachBaseContext(b.f4814b.b(context));
        b.v.a.d(this);
    }

    public d.a.b<? extends f> d() {
        d.a.b<? extends f> a2 = Ca.a().a(this);
        if (a2 != null) {
            this.f12106k = (C0559a) a2;
            return a2;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.di.component.AppComponent");
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b.f4814b.b(this);
    }

    public void onCreate() {
        super.onCreate();
        f12103h = this;
        o.a(true);
        d dVar = this.f12105j;
        if (dVar != null) {
            dVar.a((Application) this);
        } else {
            j.c("bazaarHelper");
            throw null;
        }
    }

    public final void a(Intent intent, boolean z) {
        intent.addFlags(32768);
        intent.addFlags(268435456);
        startActivity(intent);
        if (z) {
            Intent intent2 = new Intent(this, DownloadService.class);
            intent2.setAction("STOP_ALL");
            startService(intent2);
            System.exit(2);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        }
    }
}
