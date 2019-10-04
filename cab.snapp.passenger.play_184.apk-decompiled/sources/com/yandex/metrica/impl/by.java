package com.yandex.metrica.impl;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.b;
import com.yandex.metrica.c;
import com.yandex.metrica.e;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.j;
import com.yandex.metrica.impl.k;
import com.yandex.metrica.impl.ob.fq;
import com.yandex.metrica.impl.ob.gc;
import com.yandex.metrica.impl.ob.lv;
import com.yandex.metrica.impl.ob.lw;
import com.yandex.metrica.impl.ob.ng;
import com.yandex.metrica.impl.ob.ni;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.u;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class by implements k.a {

    /* renamed from: a  reason: collision with root package name */
    private static by f5805a;

    /* renamed from: b  reason: collision with root package name */
    private static o f5806b = new o();
    private static volatile boolean c;
    /* access modifiers changed from: private */
    public static final EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason> d = new EnumMap<>(IIdentifierCallback.Reason.class);
    private static final Executor e = Executors.newSingleThreadExecutor(new ni("YMM-APT"));
    private final Context f;
    private final bg g;
    /* access modifiers changed from: private */
    public ad h;
    private al i;
    private final ExecutorService j = Executors.newSingleThreadExecutor(new ni("YMM-RH"));
    private final lv k;
    private final ba l;
    private j m;
    private final u n;
    private Executor o = Executors.newSingleThreadExecutor(new ni("YMM-YM"));
    /* access modifiers changed from: private */
    public IIdentifierCallback p;

    static {
        d.put(IIdentifierCallback.Reason.UNKNOWN, AppMetricaDeviceIDListener.Reason.UNKNOWN);
        d.put(IIdentifierCallback.Reason.INVALID_RESPONSE, AppMetricaDeviceIDListener.Reason.INVALID_RESPONSE);
        d.put(IIdentifierCallback.Reason.NETWORK, AppMetricaDeviceIDListener.Reason.NETWORK);
    }

    private by(Context context) {
        StringBuilder sb = new StringBuilder("Initializing of Metrica");
        sb.append(", Release type");
        sb.append(", Version 3.2.2");
        sb.append(", API Level 70");
        sb.append(", Dated 09.08.2018.");
        nk.f().d();
        nk.a(context.getApplicationContext());
        this.f = context.getApplicationContext();
        this.n = new u(this.f);
        GoogleAdvertisingIdGetter.b().a(this.f);
        Handler handler = new Handler(Looper.getMainLooper());
        bi biVar = new bi(this.n, this.j, this.f, handler);
        f5806b.a(biVar);
        gc gcVar = new gc(fq.a(this.f).f());
        new f(gcVar).a(this.f);
        this.k = new lv(biVar, gcVar);
        biVar.a((lw) this.k);
        this.l = new ba(biVar, gcVar, this.o);
        k kVar = new k(handler);
        kVar.a(this);
        biVar.a(kVar);
        bg bgVar = new bg(this.f, this.n, biVar, kVar, handler, this.k);
        this.g = bgVar;
    }

    public static Executor a() {
        return e;
    }

    /* access modifiers changed from: package-private */
    public void b() {
        al alVar = new al(Thread.getDefaultUncaughtExceptionHandler());
        alVar.a(new be(this.g.b(c.a("20799a27-fa80-4b36-b2db-0f8141f24180").a()), new j.a() {
            public boolean a(Throwable th) {
                String a2 = bv.a(th);
                if (!TextUtils.isEmpty(a2)) {
                    if (a2.contains("at " + "com.yandex.metrica" + ".")) {
                        return true;
                    }
                }
                return false;
            }
        }));
        this.i = alVar;
        Thread.setDefaultUncaughtExceptionHandler(this.i);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0077, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void a(android.content.Context r4, com.yandex.metrica.e r5) {
        /*
            java.lang.Class<com.yandex.metrica.impl.by> r0 = com.yandex.metrica.impl.by.class
            monitor-enter(r0)
            com.yandex.metrica.impl.o r1 = f5806b     // Catch:{ all -> 0x0078 }
            boolean r1 = r1.d()     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.o r2 = f5806b     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.e r5 = r2.a((com.yandex.metrica.e) r5)     // Catch:{ all -> 0x0078 }
            b(r4, r5)     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.by r4 = f5805a     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.ad r4 = r4.h     // Catch:{ all -> 0x0078 }
            if (r4 != 0) goto L_0x0063
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch:{ all -> 0x0078 }
            java.lang.Boolean r2 = r5.logs     // Catch:{ all -> 0x0078 }
            boolean r4 = r4.equals(r2)     // Catch:{ all -> 0x0078 }
            if (r4 == 0) goto L_0x0029
            com.yandex.metrica.impl.ob.nk r4 = com.yandex.metrica.impl.ob.nk.f()     // Catch:{ all -> 0x0078 }
            r4.a()     // Catch:{ all -> 0x0078 }
        L_0x0029:
            com.yandex.metrica.impl.by r4 = f5805a     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.bg r2 = r4.g     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.ad r5 = r2.a(r5, r1)     // Catch:{ all -> 0x0078 }
            r4.h = r5     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.ad r5 = r4.h     // Catch:{ all -> 0x0078 }
            boolean r5 = r5.f()     // Catch:{ all -> 0x0078 }
            if (r5 == 0) goto L_0x0055
            com.yandex.metrica.impl.j r1 = r4.m     // Catch:{ all -> 0x0078 }
            if (r1 != 0) goto L_0x004d
            com.yandex.metrica.impl.be r1 = new com.yandex.metrica.impl.be     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.ad r2 = r4.h     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.by$1 r3 = new com.yandex.metrica.impl.by$1     // Catch:{ all -> 0x0078 }
            r3.<init>()     // Catch:{ all -> 0x0078 }
            r1.<init>(r2, r3)     // Catch:{ all -> 0x0078 }
            r4.m = r1     // Catch:{ all -> 0x0078 }
        L_0x004d:
            com.yandex.metrica.impl.al r1 = r4.i     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.j r2 = r4.m     // Catch:{ all -> 0x0078 }
            r1.a(r2)     // Catch:{ all -> 0x0078 }
            goto L_0x005c
        L_0x0055:
            com.yandex.metrica.impl.al r1 = r4.i     // Catch:{ all -> 0x0078 }
            com.yandex.metrica.impl.j r2 = r4.m     // Catch:{ all -> 0x0078 }
            r1.b(r2)     // Catch:{ all -> 0x0078 }
        L_0x005c:
            com.yandex.metrica.impl.ad r4 = r4.h     // Catch:{ all -> 0x0078 }
            r4.b((boolean) r5)     // Catch:{ all -> 0x0078 }
            monitor-exit(r0)
            return
        L_0x0063:
            com.yandex.metrica.impl.ob.nk r4 = com.yandex.metrica.impl.ob.nk.f()     // Catch:{ all -> 0x0078 }
            boolean r4 = r4.b()     // Catch:{ all -> 0x0078 }
            if (r4 == 0) goto L_0x0076
            com.yandex.metrica.impl.ob.nk r4 = com.yandex.metrica.impl.ob.nk.f()     // Catch:{ all -> 0x0078 }
            java.lang.String r5 = "Appmetrica already has been activated!"
            r4.b(r5)     // Catch:{ all -> 0x0078 }
        L_0x0076:
            monitor-exit(r0)
            return
        L_0x0078:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.by.a(android.content.Context, com.yandex.metrica.e):void");
    }

    public static synchronized void a(Context context) {
        synchronized (by.class) {
            b(context, null);
        }
    }

    public static synchronized void b(Context context, e eVar) {
        synchronized (by.class) {
            if (f5805a == null) {
                by byVar = new by(context.getApplicationContext());
                f5805a = byVar;
                z.a(byVar.f);
                if (eVar != null) {
                    byVar.k.a(eVar.d);
                    byVar.k.a(eVar.f5649b);
                    byVar.k.a(eVar.c);
                }
                byVar.k.c();
                byVar.n.a(eVar);
                byVar.j.execute(new ng.a(byVar.f));
                f5805a.b();
            }
        }
    }

    public static void c() {
        c = true;
    }

    public static boolean d() {
        return c;
    }

    public static synchronized by e() {
        by byVar;
        synchronized (by.class) {
            byVar = f5805a;
        }
        return byVar;
    }

    public static by b(Context context) {
        a(context.getApplicationContext());
        return e();
    }

    public static by f() {
        return e();
    }

    public static synchronized ad g() {
        ad adVar;
        synchronized (by.class) {
            adVar = e().h;
        }
        return adVar;
    }

    static synchronized boolean h() {
        boolean z;
        synchronized (by.class) {
            z = (f5805a == null || f5805a.h == null) ? false : true;
        }
        return z;
    }

    public void a(c cVar) {
        this.g.a(cVar);
    }

    public b b(c cVar) {
        return this.g.b(cVar);
    }

    public void a(String str) {
        this.l.a(str);
    }

    static ag i() {
        return h() ? e().h : f5806b;
    }

    public static void a(Location location) {
        i().a(location);
    }

    public static void a(boolean z) {
        i().a(z);
    }

    public void b(boolean z) {
        i().a(z);
    }

    public void c(boolean z) {
        i().setStatisticsSending(z);
    }

    public String j() {
        return this.k.b();
    }

    public String k() {
        return this.k.a();
    }

    public void a(IIdentifierCallback iIdentifierCallback) {
        this.k.a(iIdentifierCallback);
    }

    public void a(int i2, Bundle bundle) {
        if (i2 != 1) {
            if (i2 == 2) {
                this.k.b(bundle);
            }
            return;
        }
        this.k.a(bundle);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.l.a(deferredDeeplinkParametersListener);
    }

    public void a(final AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        this.p = new IIdentifierCallback() {
            public void onReceive(final Map<String, String> map) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        IIdentifierCallback unused = by.this.p = null;
                        appMetricaDeviceIDListener.onLoaded((String) map.get(IIdentifierCallback.APP_METRICA_DEVICE_ID_HASH));
                    }
                });
            }

            public void onRequestError(IIdentifierCallback.Reason reason) {
                IIdentifierCallback unused = by.this.p = null;
                appMetricaDeviceIDListener.onError((AppMetricaDeviceIDListener.Reason) by.d.get(reason));
            }
        };
        this.k.a(this.p);
    }
}
