package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import c.e.a.b.j.j;
import c.e.c.c.b;
import c.e.c.c.d;
import c.e.c.d.B;
import c.e.c.d.C0981a;
import c.e.c.d.C0982b;
import c.e.c.d.C0995o;
import c.e.c.d.C0999t;
import c.e.c.d.C1004y;
import c.e.c.d.C1005z;
import c.e.c.d.D;
import c.e.c.d.J;
import c.e.c.d.O;
import c.e.c.d.P;
import c.e.c.d.Q;
import c.e.c.d.S;
import c.e.c.d.T;
import c.e.c.d.aa;
import c.e.c.h.g;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class FirebaseInstanceId {

    /* renamed from: a  reason: collision with root package name */
    public static final long f13501a = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: b  reason: collision with root package name */
    public static C1005z f13502b;

    /* renamed from: c  reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f13503c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f13504d;

    /* renamed from: e  reason: collision with root package name */
    public final FirebaseApp f13505e;

    /* renamed from: f  reason: collision with root package name */
    public final C0995o f13506f;

    /* renamed from: g  reason: collision with root package name */
    public C0982b f13507g;

    /* renamed from: h  reason: collision with root package name */
    public final C0999t f13508h;

    /* renamed from: i  reason: collision with root package name */
    public final D f13509i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f13510j;

    /* renamed from: k  reason: collision with root package name */
    public final a f13511k;

    private class a {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f13512a = c();

        /* renamed from: b  reason: collision with root package name */
        public final d f13513b;

        /* renamed from: c  reason: collision with root package name */
        public b<c.e.c.a> f13514c;

        /* renamed from: d  reason: collision with root package name */
        public Boolean f13515d = b();

        public a(d dVar) {
            this.f13513b = dVar;
            if (this.f13515d == null && this.f13512a) {
                this.f13514c = new S(this);
                dVar.a(c.e.c.a.class, this.f13514c);
            }
        }

        public final synchronized boolean a() {
            if (this.f13515d == null) {
                return this.f13512a && FirebaseInstanceId.this.f13505e.isDataCollectionDefaultEnabled();
            }
            return this.f13515d.booleanValue();
        }

        public final Boolean b() {
            Context c2 = FirebaseInstanceId.this.f13505e.c();
            SharedPreferences sharedPreferences = c2.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = c2.getPackageManager();
                if (packageManager != null) {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(c2.getPackageName(), 128);
                    if (!(applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled"))) {
                        return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return null;
        }

        public final boolean c() {
            try {
                Class.forName("c.e.c.g.a");
                return true;
            } catch (ClassNotFoundException unused) {
                Context c2 = FirebaseInstanceId.this.f13505e.c();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(c2.getPackageName());
                ResolveInfo resolveService = c2.getPackageManager().resolveService(intent, 0);
                if (resolveService == null || resolveService.serviceInfo == null) {
                    return false;
                }
                return true;
            }
        }
    }

    public FirebaseInstanceId(FirebaseApp firebaseApp, d dVar, g gVar) {
        this(firebaseApp, new C0995o(firebaseApp.c()), J.b(), J.b(), dVar, gVar);
    }

    public static FirebaseInstanceId b() {
        return getInstance(FirebaseApp.getInstance());
    }

    public static String f() {
        return C0995o.a(f13502b.b("").a());
    }

    @Keep
    public static FirebaseInstanceId getInstance(FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.a(FirebaseInstanceId.class);
    }

    public static boolean i() {
        return Log.isLoggable("FirebaseInstanceId", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3));
    }

    public final synchronized void a(boolean z) {
        this.f13510j = z;
    }

    public final synchronized void c() {
        if (!this.f13510j) {
            a(0);
        }
    }

    public final void d() {
        C1004y g2 = g();
        if (m() || a(g2) || this.f13509i.a()) {
            c();
        }
    }

    public final FirebaseApp e() {
        return this.f13505e;
    }

    public final C1004y g() {
        return c(C0995o.a(this.f13505e), "*");
    }

    public final String h() {
        return a(C0995o.a(this.f13505e), "*");
    }

    public final synchronized void j() {
        f13502b.c();
        if (this.f13511k.a()) {
            c();
        }
    }

    public final boolean k() {
        return this.f13507g.b();
    }

    public final void l() {
        f13502b.c("");
        c();
    }

    public final boolean m() {
        return this.f13507g.a();
    }

    public final c.e.a.b.j.g<C0981a> b(String str, String str2) {
        return j.a(null).b(this.f13504d, new P(this, str, c(str2)));
    }

    public final synchronized void a(long j2) {
        B b2 = new B(this, this.f13506f, this.f13509i, Math.min(Math.max(30, j2 << 1), f13501a));
        a((Runnable) b2, j2);
        this.f13510j = true;
    }

    public static C1004y c(String str, String str2) {
        return f13502b.b("", str, str2);
    }

    public static String c(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    public FirebaseInstanceId(FirebaseApp firebaseApp, C0995o oVar, Executor executor, Executor executor2, d dVar, g gVar) {
        this.f13510j = false;
        if (C0995o.a(firebaseApp) != null) {
            synchronized (FirebaseInstanceId.class) {
                if (f13502b == null) {
                    f13502b = new C1005z(firebaseApp.c());
                }
            }
            this.f13505e = firebaseApp;
            this.f13506f = oVar;
            if (this.f13507g == null) {
                C0982b bVar = (C0982b) firebaseApp.a(C0982b.class);
                if (bVar == null || !bVar.b()) {
                    this.f13507g = new T(firebaseApp, oVar, executor, gVar);
                } else {
                    this.f13507g = bVar;
                }
            }
            this.f13507g = this.f13507g;
            this.f13504d = executor2;
            this.f13509i = new D(f13502b);
            this.f13511k = new a(dVar);
            this.f13508h = new C0999t(executor);
            if (this.f13511k.a()) {
                d();
                return;
            }
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    public final void b(String str) {
        C1004y g2 = g();
        if (!a(g2)) {
            a(this.f13507g.a(f(), g2.f11691b, str));
            return;
        }
        throw new IOException("token not available");
    }

    public static void a(Runnable runnable, long j2) {
        synchronized (FirebaseInstanceId.class) {
            if (f13503c == null) {
                f13503c = new ScheduledThreadPoolExecutor(1, new c.e.a.b.d.g.a.a("FirebaseInstanceId"));
            }
            f13503c.schedule(runnable, j2, TimeUnit.SECONDS);
        }
    }

    public final /* synthetic */ c.e.a.b.j.g b(String str, String str2, String str3, String str4) {
        f13502b.a("", str, str2, str4, this.f13506f.b());
        return j.a(new aa(str3, str4));
    }

    public String a() {
        d();
        return f();
    }

    public String a(String str, String str2) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((C0981a) a(b(str, str2))).a();
        }
        throw new IOException("MAIN_THREAD");
    }

    public final <T> T a(c.e.a.b.j.g<T> gVar) {
        try {
            return j.a(gVar, 30000, TimeUnit.MILLISECONDS);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    j();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e2);
            }
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    public final void a(String str) {
        C1004y g2 = g();
        if (!a(g2)) {
            a(this.f13507g.b(f(), g2.f11691b, str));
            return;
        }
        throw new IOException("token not available");
    }

    public final boolean a(C1004y yVar) {
        return yVar == null || yVar.b(this.f13506f.b());
    }

    public final /* synthetic */ c.e.a.b.j.g a(String str, String str2, c.e.a.b.j.g gVar) {
        String f2 = f();
        C1004y c2 = c(str, str2);
        if (!this.f13507g.a() && !a(c2)) {
            return j.a(new aa(f2, c2.f11691b));
        }
        String a2 = C1004y.a(c2);
        C0999t tVar = this.f13508h;
        O o = new O(this, f2, a2, str, str2);
        return tVar.a(str, str2, o);
    }

    public final /* synthetic */ c.e.a.b.j.g a(String str, String str2, String str3, String str4) {
        return this.f13507g.a(str, str2, str3, str4).a(this.f13504d, new Q(this, str3, str4, str));
    }
}
