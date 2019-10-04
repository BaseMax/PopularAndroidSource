package c.e.a.b.h.b;

import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import b.f.C0243b;
import c.e.a.b.d.a.a.C0756d;
import c.e.a.b.d.d.r;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

public final class Fa extends C0977zb {

    /* renamed from: c  reason: collision with root package name */
    public Xa f10620c;

    /* renamed from: d  reason: collision with root package name */
    public Ca f10621d;

    /* renamed from: e  reason: collision with root package name */
    public final Set<Da> f10622e = new CopyOnWriteArraySet();

    /* renamed from: f  reason: collision with root package name */
    public boolean f10623f;

    /* renamed from: g  reason: collision with root package name */
    public final AtomicReference<String> f10624g = new AtomicReference<>();

    /* renamed from: h  reason: collision with root package name */
    public boolean f10625h = true;

    public Fa(Y y) {
        super(y);
    }

    public final String B() {
        C0909cb C = this.f11077a.E().C();
        if (C != null) {
            return C.f10842b;
        }
        return null;
    }

    public final String C() {
        C0909cb C = this.f11077a.E().C();
        if (C != null) {
            return C.f10841a;
        }
        return null;
    }

    public final String D() {
        if (this.f11077a.q() != null) {
            return this.f11077a.q();
        }
        try {
            return C0756d.a();
        } catch (IllegalStateException e2) {
            this.f11077a.e().t().a("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    public final void E() {
        if (b().getApplicationContext() instanceof Application) {
            ((Application) b().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f10620c);
        }
    }

    public final Boolean F() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) d().a(atomicReference, 15000, "boolean test flag value", new Ga(this, atomicReference));
    }

    public final String G() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) d().a(atomicReference, 15000, "String test flag value", new Oa(this, atomicReference));
    }

    public final Long H() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) d().a(atomicReference, 15000, "long test flag value", new Qa(this, atomicReference));
    }

    public final Integer I() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) d().a(atomicReference, 15000, "int test flag value", new Ra(this, atomicReference));
    }

    public final Double J() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) d().a(atomicReference, 15000, "double test flag value", new Sa(this, atomicReference));
    }

    public final void K() {
        if (i().e(q().C(), C0931k.ya)) {
            l();
            String a2 = h().t.a();
            if (a2 != null) {
                if ("unset".equals(a2)) {
                    a("app", "_npa", (Object) null, c().c());
                } else {
                    a("app", "_npa", (Object) Long.valueOf("true".equals(a2) ? 1 : 0), c().c());
                }
            }
        }
        if (!i().n(q().C()) || !this.f11077a.f() || !this.f10625h) {
            e().A().a("Updating Scion state (FE)");
            r().F();
            return;
        }
        e().A().a("Recording app launch after enabling measurement for the first time (FE)");
        L();
    }

    public final void L() {
        l();
        j();
        w();
        if (this.f11077a.x()) {
            r().E();
            this.f10625h = false;
            String z = h().z();
            if (!TextUtils.isEmpty(z)) {
                m().o();
                if (!z.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", z);
                    b("auto", "_ou", bundle);
                }
            }
        }
    }

    public final String M() {
        j();
        return this.f10624g.get();
    }

    public final void a(boolean z) {
        w();
        j();
        d().a((Runnable) new Ta(this, z));
    }

    public final void b(boolean z) {
        w();
        j();
        d().a((Runnable) new Ua(this, z));
    }

    public final void c(boolean z) {
        l();
        j();
        w();
        e().A().a("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        h().a(z);
        K();
    }

    public final void d(Bundle bundle) {
        Bundle bundle2 = bundle;
        l();
        w();
        r.a(bundle);
        r.b(bundle2.getString(DefaultAppMeasurementEventListenerRegistrar.NAME));
        if (!this.f11077a.f()) {
            e().A().a("Conditional property not cleared since collection is disabled");
            return;
        }
        zzga zzga = new zzga(bundle2.getString(DefaultAppMeasurementEventListenerRegistrar.NAME), 0, null, null);
        try {
            zzaj a2 = g().a(bundle2.getString("app_id"), bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), bundle2.getString("origin"), bundle2.getLong("creation_timestamp"), true, false);
            zzga zzga2 = zzga;
            zzr zzr = new zzr(bundle2.getString("app_id"), bundle2.getString("origin"), zzga2, bundle2.getLong("creation_timestamp"), bundle2.getBoolean("active"), bundle2.getString("trigger_event_name"), null, bundle2.getLong("trigger_timeout"), null, bundle2.getLong("time_to_live"), a2);
            r().a(zzr);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean z() {
        return false;
    }

    public final void a(String str, String str2, Bundle bundle, boolean z) {
        a(str, str2, bundle, false, true, c().c());
    }

    public final void b(long j2) {
        j();
        d().a((Runnable) new Va(this, j2));
    }

    public final void a(String str, String str2, long j2, Bundle bundle) {
        j();
        l();
        a(str, str2, j2, bundle, true, this.f10621d == null || cc.g(str2), false, null);
    }

    public final void c(long j2) {
        j();
        d().a((Runnable) new Wa(this, j2));
    }

    public final void b(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, true, c().c());
    }

    public final void b(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle b2 = cc.b(bundle);
        U d2 = d();
        Ha ha = new Ha(this, str, str2, j2, b2, z, z2, z3, str3);
        d2.a((Runnable) ha);
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00cd  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r28, java.lang.String r29, long r30, android.os.Bundle r32, boolean r33, boolean r34, boolean r35, java.lang.String r36) {
        /*
            r27 = this;
            r7 = r27
            r8 = r28
            r5 = r29
            r14 = r30
            r6 = r32
            r4 = r36
            c.e.a.b.d.d.r.b((java.lang.String) r28)
            c.e.a.b.h.b.pc r0 = r27.i()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r1 = c.e.a.b.h.b.C0931k.Da
            boolean r0 = r0.e(r4, r1)
            if (r0 != 0) goto L_0x001e
            c.e.a.b.d.d.r.b((java.lang.String) r29)
        L_0x001e:
            c.e.a.b.d.d.r.a(r32)
            r27.l()
            r27.w()
            c.e.a.b.h.b.Y r0 = r7.f11077a
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x003d
            c.e.a.b.h.b.t r0 = r27.e()
            c.e.a.b.h.b.v r0 = r0.A()
            java.lang.String r1 = "Event not sent since app measurement is disabled"
            r0.a(r1)
            return
        L_0x003d:
            boolean r0 = r7.f10623f
            r1 = 0
            r16 = 0
            r3 = 1
            if (r0 != 0) goto L_0x0098
            r7.f10623f = r3
            c.e.a.b.h.b.Y r0 = r7.f11077a     // Catch:{ ClassNotFoundException -> 0x008b }
            boolean r0 = r0.t()     // Catch:{ ClassNotFoundException -> 0x008b }
            if (r0 != 0) goto L_0x005e
            java.lang.String r0 = "com.google.android.gms.tagmanager.TagManagerService"
            android.content.Context r2 = r27.b()     // Catch:{ ClassNotFoundException -> 0x008b }
            java.lang.ClassLoader r2 = r2.getClassLoader()     // Catch:{ ClassNotFoundException -> 0x008b }
            java.lang.Class r0 = java.lang.Class.forName(r0, r3, r2)     // Catch:{ ClassNotFoundException -> 0x008b }
            goto L_0x0064
        L_0x005e:
            java.lang.String r0 = "com.google.android.gms.tagmanager.TagManagerService"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ ClassNotFoundException -> 0x008b }
        L_0x0064:
            java.lang.String r2 = "initialize"
            java.lang.Class[] r9 = new java.lang.Class[r3]     // Catch:{ Exception -> 0x007c }
            java.lang.Class<android.content.Context> r10 = android.content.Context.class
            r9[r16] = r10     // Catch:{ Exception -> 0x007c }
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r2, r9)     // Catch:{ Exception -> 0x007c }
            java.lang.Object[] r2 = new java.lang.Object[r3]     // Catch:{ Exception -> 0x007c }
            android.content.Context r9 = r27.b()     // Catch:{ Exception -> 0x007c }
            r2[r16] = r9     // Catch:{ Exception -> 0x007c }
            r0.invoke(r1, r2)     // Catch:{ Exception -> 0x007c }
            goto L_0x0098
        L_0x007c:
            r0 = move-exception
            c.e.a.b.h.b.t r2 = r27.e()     // Catch:{ ClassNotFoundException -> 0x008b }
            c.e.a.b.h.b.v r2 = r2.w()     // Catch:{ ClassNotFoundException -> 0x008b }
            java.lang.String r9 = "Failed to invoke Tag Manager's initialize() method"
            r2.a(r9, r0)     // Catch:{ ClassNotFoundException -> 0x008b }
            goto L_0x0098
        L_0x008b:
            c.e.a.b.h.b.t r0 = r27.e()
            c.e.a.b.h.b.v r0 = r0.z()
            java.lang.String r2 = "Tag Manager is not found and thus will not be used"
            r0.a(r2)
        L_0x0098:
            r0 = 40
            r2 = 2
            if (r35 == 0) goto L_0x0101
            r27.a()
            java.lang.String r9 = "_iap"
            boolean r9 = r9.equals(r5)
            if (r9 != 0) goto L_0x0101
            c.e.a.b.h.b.Y r9 = r7.f11077a
            c.e.a.b.h.b.cc r9 = r9.i()
            java.lang.String r10 = "event"
            boolean r11 = r9.b((java.lang.String) r10, (java.lang.String) r5)
            if (r11 != 0) goto L_0x00b8
        L_0x00b6:
            r9 = 2
            goto L_0x00cb
        L_0x00b8:
            java.lang.String[] r11 = c.e.a.b.h.b.C0973ya.f11107a
            boolean r11 = r9.a((java.lang.String) r10, (java.lang.String[]) r11, (java.lang.String) r5)
            if (r11 != 0) goto L_0x00c3
            r9 = 13
            goto L_0x00cb
        L_0x00c3:
            boolean r9 = r9.a((java.lang.String) r10, (int) r0, (java.lang.String) r5)
            if (r9 != 0) goto L_0x00ca
            goto L_0x00b6
        L_0x00ca:
            r9 = 0
        L_0x00cb:
            if (r9 == 0) goto L_0x0101
            c.e.a.b.h.b.t r1 = r27.e()
            c.e.a.b.h.b.v r1 = r1.v()
            c.e.a.b.h.b.r r2 = r27.f()
            java.lang.String r2 = r2.a((java.lang.String) r5)
            java.lang.String r4 = "Invalid public event name. Event will not be logged (FE)"
            r1.a(r4, r2)
            c.e.a.b.h.b.Y r1 = r7.f11077a
            r1.i()
            java.lang.String r0 = c.e.a.b.h.b.cc.a((java.lang.String) r5, (int) r0, (boolean) r3)
            if (r5 == 0) goto L_0x00f4
            int r16 = r29.length()
            r1 = r16
            goto L_0x00f5
        L_0x00f4:
            r1 = 0
        L_0x00f5:
            c.e.a.b.h.b.Y r2 = r7.f11077a
            c.e.a.b.h.b.cc r2 = r2.i()
            java.lang.String r3 = "_ev"
            r2.a((int) r9, (java.lang.String) r3, (java.lang.String) r0, (int) r1)
            return
        L_0x0101:
            r27.a()
            c.e.a.b.h.b.db r9 = r27.s()
            c.e.a.b.h.b.cb r13 = r9.B()
            java.lang.String r12 = "_sc"
            if (r13 == 0) goto L_0x0118
            boolean r9 = r6.containsKey(r12)
            if (r9 != 0) goto L_0x0118
            r13.f10844d = r3
        L_0x0118:
            if (r33 == 0) goto L_0x011e
            if (r35 == 0) goto L_0x011e
            r9 = 1
            goto L_0x011f
        L_0x011e:
            r9 = 0
        L_0x011f:
            c.e.a.b.h.b.C0912db.a((c.e.a.b.h.b.C0909cb) r13, (android.os.Bundle) r6, (boolean) r9)
            java.lang.String r9 = "am"
            boolean r17 = r9.equals(r8)
            boolean r9 = c.e.a.b.h.b.cc.g(r29)
            if (r33 == 0) goto L_0x0161
            c.e.a.b.h.b.Ca r10 = r7.f10621d
            if (r10 == 0) goto L_0x0161
            if (r9 != 0) goto L_0x0161
            if (r17 != 0) goto L_0x0161
            c.e.a.b.h.b.t r0 = r27.e()
            c.e.a.b.h.b.v r0 = r0.A()
            c.e.a.b.h.b.r r1 = r27.f()
            java.lang.String r1 = r1.a((java.lang.String) r5)
            c.e.a.b.h.b.r r2 = r27.f()
            java.lang.String r2 = r2.a((android.os.Bundle) r6)
            java.lang.String r3 = "Passing event to registered event handler (FE)"
            r0.a(r3, r1, r2)
            c.e.a.b.h.b.Ca r1 = r7.f10621d
            r2 = r28
            r3 = r29
            r4 = r32
            r5 = r30
            r1.a(r2, r3, r4, r5)
            return
        L_0x0161:
            c.e.a.b.h.b.Y r9 = r7.f11077a
            boolean r9 = r9.x()
            if (r9 != 0) goto L_0x016a
            return
        L_0x016a:
            c.e.a.b.h.b.cc r9 = r27.g()
            int r9 = r9.b((java.lang.String) r5)
            if (r9 == 0) goto L_0x01b0
            c.e.a.b.h.b.t r1 = r27.e()
            c.e.a.b.h.b.v r1 = r1.v()
            c.e.a.b.h.b.r r2 = r27.f()
            java.lang.String r2 = r2.a((java.lang.String) r5)
            java.lang.String r6 = "Invalid event name. Event will not be logged (FE)"
            r1.a(r6, r2)
            r27.g()
            java.lang.String r0 = c.e.a.b.h.b.cc.a((java.lang.String) r5, (int) r0, (boolean) r3)
            if (r5 == 0) goto L_0x0198
            int r1 = r29.length()
            r16 = r1
        L_0x0198:
            c.e.a.b.h.b.Y r1 = r7.f11077a
            c.e.a.b.h.b.cc r1 = r1.i()
            java.lang.String r2 = "_ev"
            r28 = r1
            r29 = r36
            r30 = r9
            r31 = r2
            r32 = r0
            r33 = r16
            r28.a((java.lang.String) r29, (int) r30, (java.lang.String) r31, (java.lang.String) r32, (int) r33)
            return
        L_0x01b0:
            r0 = 4
            java.lang.String[] r0 = new java.lang.String[r0]
            java.lang.String r11 = "_o"
            r0[r16] = r11
            java.lang.String r10 = "_sn"
            r0[r3] = r10
            r0[r2] = r12
            r2 = 3
            java.lang.String r9 = "_si"
            r0[r2] = r9
            java.util.List r0 = c.e.a.b.d.g.f.a((T[]) r0)
            c.e.a.b.h.b.cc r2 = r27.g()
            r18 = 1
            r1 = r9
            r9 = r2
            r2 = r10
            r10 = r36
            r20 = r11
            r11 = r29
            r3 = r12
            r12 = r32
            r21 = r13
            r13 = r0
            r7 = r14
            r14 = r35
            r15 = r18
            android.os.Bundle r15 = r9.a(r10, r11, r12, r13, r14, r15)
            if (r15 == 0) goto L_0x020e
            boolean r9 = r15.containsKey(r3)
            if (r9 == 0) goto L_0x020e
            boolean r9 = r15.containsKey(r1)
            if (r9 != 0) goto L_0x01f3
            goto L_0x020e
        L_0x01f3:
            java.lang.String r2 = r15.getString(r2)
            java.lang.String r3 = r15.getString(r3)
            long r9 = r15.getLong(r1)
            java.lang.Long r1 = java.lang.Long.valueOf(r9)
            c.e.a.b.h.b.cb r9 = new c.e.a.b.h.b.cb
            long r10 = r1.longValue()
            r9.<init>(r2, r3, r10)
            r13 = r9
            goto L_0x020f
        L_0x020e:
            r13 = 0
        L_0x020f:
            if (r13 != 0) goto L_0x0214
            r14 = r21
            goto L_0x0215
        L_0x0214:
            r14 = r13
        L_0x0215:
            c.e.a.b.h.b.pc r1 = r27.i()
            boolean r1 = r1.c(r4)
            java.lang.String r13 = "_ae"
            r9 = 0
            if (r1 == 0) goto L_0x0249
            r27.a()
            c.e.a.b.h.b.db r1 = r27.s()
            c.e.a.b.h.b.cb r1 = r1.B()
            if (r1 == 0) goto L_0x0249
            boolean r1 = r13.equals(r5)
            if (r1 == 0) goto L_0x0249
            c.e.a.b.h.b.Jb r1 = r27.u()
            long r1 = r1.E()
            int r3 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r3 <= 0) goto L_0x0249
            c.e.a.b.h.b.cc r3 = r27.g()
            r3.a((android.os.Bundle) r15, (long) r1)
        L_0x0249:
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            r12.add(r15)
            c.e.a.b.h.b.cc r1 = r27.g()
            java.security.SecureRandom r1 = r1.v()
            long r2 = r1.nextLong()
            c.e.a.b.h.b.pc r1 = r27.i()
            c.e.a.b.h.b.o r11 = r27.q()
            java.lang.String r11 = r11.C()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r9 = c.e.a.b.h.b.C0931k.sa
            boolean r1 = r1.e(r11, r9)
            if (r1 == 0) goto L_0x0302
            c.e.a.b.h.b.F r1 = r27.h()
            c.e.a.b.h.b.I r1 = r1.w
            long r9 = r1.a()
            r18 = 0
            int r1 = (r9 > r18 ? 1 : (r9 == r18 ? 0 : -1))
            if (r1 <= 0) goto L_0x0302
            c.e.a.b.h.b.F r1 = r27.h()
            boolean r1 = r1.a((long) r7)
            if (r1 == 0) goto L_0x0302
            c.e.a.b.h.b.F r1 = r27.h()
            c.e.a.b.h.b.H r1 = r1.z
            boolean r1 = r1.a()
            if (r1 == 0) goto L_0x0302
            c.e.a.b.h.b.t r1 = r27.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.String r9 = "Current session is expired, remove the session number and Id"
            r1.a(r9)
            c.e.a.b.h.b.pc r1 = r27.i()
            c.e.a.b.h.b.o r9 = r27.q()
            java.lang.String r9 = r9.C()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r10 = c.e.a.b.h.b.C0931k.oa
            boolean r1 = r1.e(r9, r10)
            if (r1 == 0) goto L_0x02d6
            r9 = 0
            c.e.a.b.d.g.e r1 = r27.c()
            long r10 = r1.c()
            java.lang.String r21 = "auto"
            java.lang.String r22 = "_sid"
            r1 = r27
            r23 = r2
            r2 = r21
            r7 = 1
            r3 = r22
            r8 = r4
            r4 = r9
            r9 = r5
            r5 = r10
            r1.a((java.lang.String) r2, (java.lang.String) r3, (java.lang.Object) r4, (long) r5)
            goto L_0x02db
        L_0x02d6:
            r23 = r2
            r8 = r4
            r9 = r5
            r7 = 1
        L_0x02db:
            c.e.a.b.h.b.pc r1 = r27.i()
            c.e.a.b.h.b.o r2 = r27.q()
            java.lang.String r2 = r2.C()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r3 = c.e.a.b.h.b.C0931k.pa
            boolean r1 = r1.e(r2, r3)
            if (r1 == 0) goto L_0x0307
            r4 = 0
            c.e.a.b.d.g.e r1 = r27.c()
            long r5 = r1.c()
            java.lang.String r2 = "auto"
            java.lang.String r3 = "_sno"
            r1 = r27
            r1.a((java.lang.String) r2, (java.lang.String) r3, (java.lang.Object) r4, (long) r5)
            goto L_0x0307
        L_0x0302:
            r23 = r2
            r8 = r4
            r9 = r5
            r7 = 1
        L_0x0307:
            c.e.a.b.h.b.pc r1 = r27.i()
            c.e.a.b.h.b.o r2 = r27.q()
            java.lang.String r2 = r2.C()
            boolean r1 = r1.b(r2)
            if (r1 == 0) goto L_0x0342
            java.lang.String r1 = "extend_session"
            r2 = 0
            long r1 = r15.getLong(r1, r2)
            r3 = 1
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L_0x0342
            c.e.a.b.h.b.t r1 = r27.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.String r2 = "EXTEND_SESSION param attached: initiate a new session or extend the current active session"
            r1.a(r2)
            r5 = r27
            r3 = r30
            c.e.a.b.h.b.Y r1 = r5.f11077a
            c.e.a.b.h.b.Jb r1 = r1.G()
            r1.a((long) r3, (boolean) r7)
            goto L_0x0346
        L_0x0342:
            r5 = r27
            r3 = r30
        L_0x0346:
            java.util.Set r1 = r15.keySet()
            int r2 = r32.size()
            java.lang.String[] r2 = new java.lang.String[r2]
            java.lang.Object[] r1 = r1.toArray(r2)
            java.lang.String[] r1 = (java.lang.String[]) r1
            java.util.Arrays.sort(r1)
            int r2 = r1.length
            r6 = 0
            r11 = 0
        L_0x035c:
            java.lang.String r10 = "_eid"
            if (r6 >= r2) goto L_0x0407
            r7 = r1[r6]
            java.lang.Object r18 = r15.get(r7)
            r27.g()
            r32 = r1
            android.os.Bundle[] r1 = c.e.a.b.h.b.cc.a((java.lang.Object) r18)
            if (r1 == 0) goto L_0x03e3
            r18 = r2
            int r2 = r1.length
            r15.putInt(r7, r2)
            r2 = 0
        L_0x0378:
            int r3 = r1.length
            if (r2 >= r3) goto L_0x03d2
            r3 = r1[r2]
            r4 = 1
            c.e.a.b.h.b.C0912db.a((c.e.a.b.h.b.C0909cb) r14, (android.os.Bundle) r3, (boolean) r4)
            c.e.a.b.h.b.cc r4 = r27.g()
            r19 = 0
            java.lang.String r21 = "_ep"
            r9 = r4
            r4 = r10
            r10 = r36
            r25 = r11
            r11 = r21
            r26 = r12
            r12 = r3
            r3 = r13
            r13 = r0
            r21 = r14
            r14 = r35
            r33 = r0
            r0 = r15
            r15 = r19
            android.os.Bundle r9 = r9.a(r10, r11, r12, r13, r14, r15)
            java.lang.String r10 = "_en"
            r11 = r29
            r9.putString(r10, r11)
            r12 = r23
            r9.putLong(r4, r12)
            java.lang.String r10 = "_gn"
            r9.putString(r10, r7)
            int r10 = r1.length
            java.lang.String r14 = "_ll"
            r9.putInt(r14, r10)
            java.lang.String r10 = "_i"
            r9.putInt(r10, r2)
            r10 = r26
            r10.add(r9)
            int r2 = r2 + 1
            r15 = r0
            r9 = r11
            r14 = r21
            r11 = r25
            r0 = r33
            r13 = r3
            r12 = r10
            r10 = r4
            goto L_0x0378
        L_0x03d2:
            r33 = r0
            r25 = r11
            r10 = r12
            r3 = r13
            r21 = r14
            r0 = r15
            r12 = r23
            r11 = r9
            int r1 = r1.length
            r2 = r25
            int r1 = r1 + r2
            goto L_0x03f1
        L_0x03e3:
            r33 = r0
            r18 = r2
            r2 = r11
            r10 = r12
            r3 = r13
            r21 = r14
            r0 = r15
            r12 = r23
            r11 = r9
            r1 = r2
        L_0x03f1:
            int r6 = r6 + 1
            r15 = r0
            r9 = r11
            r23 = r12
            r2 = r18
            r14 = r21
            r7 = 1
            r0 = r33
            r11 = r1
            r13 = r3
            r12 = r10
            r3 = r30
            r1 = r32
            goto L_0x035c
        L_0x0407:
            r4 = r10
            r2 = r11
            r10 = r12
            r3 = r13
            r0 = r15
            r12 = r23
            r11 = r9
            if (r2 == 0) goto L_0x0419
            r0.putLong(r4, r12)
            java.lang.String r1 = "_epc"
            r0.putInt(r1, r2)
        L_0x0419:
            r0 = 0
        L_0x041a:
            int r1 = r10.size()
            if (r0 >= r1) goto L_0x04a6
            java.lang.Object r1 = r10.get(r0)
            android.os.Bundle r1 = (android.os.Bundle) r1
            if (r0 == 0) goto L_0x042a
            r2 = 1
            goto L_0x042b
        L_0x042a:
            r2 = 0
        L_0x042b:
            if (r2 == 0) goto L_0x0432
            java.lang.String r2 = "_ep"
            r7 = r28
            goto L_0x0435
        L_0x0432:
            r7 = r28
            r2 = r11
        L_0x0435:
            r9 = r20
            r1.putString(r9, r7)
            if (r34 == 0) goto L_0x0444
            c.e.a.b.h.b.cc r4 = r27.g()
            android.os.Bundle r1 = r4.a((android.os.Bundle) r1)
        L_0x0444:
            r12 = r1
            c.e.a.b.h.b.t r1 = r27.e()
            c.e.a.b.h.b.v r1 = r1.A()
            c.e.a.b.h.b.r r4 = r27.f()
            java.lang.String r4 = r4.a((java.lang.String) r11)
            c.e.a.b.h.b.r r6 = r27.f()
            java.lang.String r6 = r6.a((android.os.Bundle) r12)
            java.lang.String r13 = "Logging event (FE)"
            r1.a(r13, r4, r6)
            com.google.android.gms.measurement.internal.zzaj r13 = new com.google.android.gms.measurement.internal.zzaj
            com.google.android.gms.measurement.internal.zzag r4 = new com.google.android.gms.measurement.internal.zzag
            r4.<init>(r12)
            r1 = r13
            r14 = r3
            r3 = r4
            r4 = r28
            r15 = r5
            r5 = r30
            r1.<init>(r2, r3, r4, r5)
            c.e.a.b.h.b.gb r1 = r27.r()
            r1.a((com.google.android.gms.measurement.internal.zzaj) r13, (java.lang.String) r8)
            if (r17 != 0) goto L_0x049e
            java.util.Set<c.e.a.b.h.b.Da> r1 = r15.f10622e
            java.util.Iterator r13 = r1.iterator()
        L_0x0483:
            boolean r1 = r13.hasNext()
            if (r1 == 0) goto L_0x049e
            java.lang.Object r1 = r13.next()
            c.e.a.b.h.b.Da r1 = (c.e.a.b.h.b.Da) r1
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>(r12)
            r2 = r28
            r3 = r29
            r5 = r30
            r1.onEvent(r2, r3, r4, r5)
            goto L_0x0483
        L_0x049e:
            int r0 = r0 + 1
            r20 = r9
            r3 = r14
            r5 = r15
            goto L_0x041a
        L_0x04a6:
            r14 = r3
            r15 = r5
            r27.a()
            c.e.a.b.h.b.db r0 = r27.s()
            c.e.a.b.h.b.cb r0 = r0.B()
            if (r0 == 0) goto L_0x04c3
            boolean r0 = r14.equals(r11)
            if (r0 == 0) goto L_0x04c3
            c.e.a.b.h.b.Jb r0 = r27.u()
            r1 = 1
            r0.a((boolean) r1, (boolean) r1)
        L_0x04c3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Fa.a(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void c(String str, String str2, Bundle bundle) {
        j();
        l();
        a(str, str2, c().c(), bundle);
    }

    public final void b(Da da) {
        j();
        w();
        r.a(da);
        if (!this.f10622e.remove(da)) {
            e().w().a("OnEventListener had not been registered");
        }
    }

    public final void c(Bundle bundle) {
        Bundle bundle2 = bundle;
        l();
        w();
        r.a(bundle);
        r.b(bundle2.getString(DefaultAppMeasurementEventListenerRegistrar.NAME));
        r.b(bundle2.getString("origin"));
        r.a(bundle2.get("value"));
        if (!this.f11077a.f()) {
            e().A().a("Conditional property not sent since collection is disabled");
            return;
        }
        zzga zzga = new zzga(bundle2.getString(DefaultAppMeasurementEventListenerRegistrar.NAME), bundle2.getLong("triggered_timestamp"), bundle2.get("value"), bundle2.getString("origin"));
        try {
            zzaj a2 = g().a(bundle2.getString("app_id"), bundle2.getString("triggered_event_name"), bundle2.getBundle("triggered_event_params"), bundle2.getString("origin"), 0, true, false);
            zzr zzr = new zzr(bundle2.getString("app_id"), bundle2.getString("origin"), zzga, bundle2.getLong("creation_timestamp"), false, bundle2.getString("trigger_event_name"), g().a(bundle2.getString("app_id"), bundle2.getString("timed_out_event_name"), bundle2.getBundle("timed_out_event_params"), bundle2.getString("origin"), 0, true, false), bundle2.getLong("trigger_timeout"), a2, bundle2.getLong("time_to_live"), g().a(bundle2.getString("app_id"), bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), bundle2.getString("origin"), 0, true, false));
            r().a(zzr);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void b(Bundle bundle) {
        r.a(bundle);
        r.b(bundle.getString("app_id"));
        n();
        throw null;
    }

    public final void b(Bundle bundle, long j2) {
        r.a(bundle);
        C0970xa.a(bundle, "app_id", String.class, null);
        C0970xa.a(bundle, "origin", String.class, null);
        C0970xa.a(bundle, DefaultAppMeasurementEventListenerRegistrar.NAME, String.class, null);
        C0970xa.a(bundle, "value", Object.class, null);
        C0970xa.a(bundle, "trigger_event_name", String.class, null);
        C0970xa.a(bundle, "trigger_timeout", Long.class, 0L);
        C0970xa.a(bundle, "timed_out_event_name", String.class, null);
        C0970xa.a(bundle, "timed_out_event_params", Bundle.class, null);
        C0970xa.a(bundle, "triggered_event_name", String.class, null);
        C0970xa.a(bundle, "triggered_event_params", Bundle.class, null);
        C0970xa.a(bundle, "time_to_live", Long.class, 0L);
        C0970xa.a(bundle, "expired_event_name", String.class, null);
        C0970xa.a(bundle, "expired_event_params", Bundle.class, null);
        r.b(bundle.getString(DefaultAppMeasurementEventListenerRegistrar.NAME));
        r.b(bundle.getString("origin"));
        r.a(bundle.get("value"));
        bundle.putLong("creation_timestamp", j2);
        String string = bundle.getString(DefaultAppMeasurementEventListenerRegistrar.NAME);
        Object obj = bundle.get("value");
        if (g().c(string) != 0) {
            e().t().a("Invalid conditional user property name", f().c(string));
        } else if (g().b(string, obj) != 0) {
            e().t().a("Invalid conditional user property value", f().c(string), obj);
        } else {
            Object c2 = g().c(string, obj);
            if (c2 == null) {
                e().t().a("Unable to normalize conditional user property value", f().c(string), obj);
                return;
            }
            C0970xa.a(bundle, c2);
            long j3 = bundle.getLong("trigger_timeout");
            if (TextUtils.isEmpty(bundle.getString("trigger_event_name")) || (j3 <= 15552000000L && j3 >= 1)) {
                long j4 = bundle.getLong("time_to_live");
                if (j4 > 15552000000L || j4 < 1) {
                    e().t().a("Invalid conditional user property time to live", f().c(string), Long.valueOf(j4));
                } else {
                    d().a((Runnable) new La(this, bundle));
                }
            } else {
                e().t().a("Invalid conditional user property timeout", f().c(string), Long.valueOf(j3));
            }
        }
    }

    public final void b(String str, String str2, String str3, Bundle bundle) {
        long c2 = c().c();
        r.b(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString(DefaultAppMeasurementEventListenerRegistrar.NAME, str2);
        bundle2.putLong("creation_timestamp", c2);
        if (str3 != null) {
            bundle2.putString("expired_event_name", str3);
            bundle2.putBundle("expired_event_params", bundle);
        }
        d().a((Runnable) new Ma(this, bundle2));
    }

    public final ArrayList<Bundle> b(String str, String str2) {
        j();
        return b((String) null, str, str2);
    }

    public final ArrayList<Bundle> b(String str, String str2, String str3) {
        if (d().t()) {
            e().t().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        } else if (nc.a()) {
            e().t().a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                U d2 = this.f11077a.d();
                Na na = new Na(this, atomicReference, str, str2, str3);
                d2.a((Runnable) na);
                try {
                    atomicReference.wait(5000);
                } catch (InterruptedException e2) {
                    e().w().a("Interrupted waiting for get conditional user properties", str, e2);
                }
            }
            List list = (List) atomicReference.get();
            if (list != null) {
                return cc.b((List<zzr>) list);
            }
            e().w().a("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
    }

    public final Map<String, Object> b(String str, String str2, String str3, boolean z) {
        if (d().t()) {
            e().t().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        } else if (nc.a()) {
            e().t().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                U d2 = this.f11077a.d();
                Pa pa = new Pa(this, atomicReference, str, str2, str3, z);
                d2.a((Runnable) pa);
                try {
                    atomicReference.wait(5000);
                } catch (InterruptedException e2) {
                    e().w().a("Interrupted waiting for get user properties", e2);
                }
            }
            List<zzga> list = (List) atomicReference.get();
            if (list == null) {
                e().w().a("Timed out waiting for get user properties");
                return Collections.emptyMap();
            }
            C0243b bVar = new C0243b(list.size());
            for (zzga zzga : list) {
                bVar.put(zzga.f13237b, zzga.x());
            }
            return bVar;
        }
    }

    public final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        boolean z3;
        j();
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (z2) {
            if (this.f10621d != null && !cc.g(str2)) {
                z3 = false;
                b(str3, str2, j2, bundle2, z2, z3, !z, null);
            }
        }
        z3 = true;
        b(str3, str2, j2, bundle2, z2, z3, !z, null);
    }

    public final void a(String str, String str2, Object obj, boolean z) {
        a(str, str2, obj, z, c().c());
    }

    public final void a(String str, String str2, Object obj, boolean z, long j2) {
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        int i2 = 6;
        int i3 = 0;
        if (z) {
            i2 = g().c(str2);
        } else {
            cc g2 = g();
            if (g2.b("user property", str2)) {
                if (!g2.a("user property", Aa.f10574a, str2)) {
                    i2 = 15;
                } else if (g2.a("user property", 24, str2)) {
                    i2 = 0;
                }
            }
        }
        if (i2 != 0) {
            g();
            String a2 = cc.a(str2, 24, true);
            if (str2 != null) {
                i3 = str2.length();
            }
            this.f11077a.i().a(i2, "_ev", a2, i3);
        } else if (obj != null) {
            int b2 = g().b(str2, obj);
            if (b2 != 0) {
                g();
                String a3 = cc.a(str2, 24, true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i3 = String.valueOf(obj).length();
                }
                this.f11077a.i().a(b2, "_ev", a3, i3);
                return;
            }
            Object c2 = g().c(str2, obj);
            if (c2 != null) {
                a(str3, str2, j2, c2);
            }
        } else {
            a(str3, str2, j2, (Object) null);
        }
    }

    public final void a(String str, String str2, long j2, Object obj) {
        U d2 = d();
        Ia ia = new Ia(this, str, str2, obj, j2);
        d2.a((Runnable) ia);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            c.e.a.b.d.d.r.b((java.lang.String) r9)
            c.e.a.b.d.d.r.b((java.lang.String) r10)
            r8.l()
            r8.j()
            r8.w()
            c.e.a.b.h.b.pc r0 = r8.i()
            c.e.a.b.h.b.o r1 = r8.q()
            java.lang.String r1 = r1.C()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r2 = c.e.a.b.h.b.C0931k.ya
            boolean r0 = r0.e(r1, r2)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L_0x0077
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x0077
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L_0x0067
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L_0x0067
            java.util.Locale r10 = java.util.Locale.ENGLISH
            java.lang.String r10 = r0.toLowerCase(r10)
            java.lang.String r11 = "false"
            boolean r10 = r11.equals(r10)
            r2 = 1
            if (r10 == 0) goto L_0x004c
            r4 = r2
            goto L_0x004e
        L_0x004c:
            r4 = 0
        L_0x004e:
            java.lang.Long r10 = java.lang.Long.valueOf(r4)
            c.e.a.b.h.b.F r0 = r8.h()
            c.e.a.b.h.b.K r0 = r0.t
            long r4 = r10.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L_0x0062
            java.lang.String r11 = "true"
        L_0x0062:
            r0.a(r11)
            r6 = r10
            goto L_0x0075
        L_0x0067:
            if (r11 != 0) goto L_0x0077
            c.e.a.b.h.b.F r10 = r8.h()
            c.e.a.b.h.b.K r10 = r10.t
            java.lang.String r0 = "unset"
            r10.a(r0)
            r6 = r11
        L_0x0075:
            r3 = r1
            goto L_0x0079
        L_0x0077:
            r3 = r10
            r6 = r11
        L_0x0079:
            c.e.a.b.h.b.Y r10 = r8.f11077a
            boolean r10 = r10.f()
            if (r10 != 0) goto L_0x008f
            c.e.a.b.h.b.t r9 = r8.e()
            c.e.a.b.h.b.v r9 = r9.A()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.a(r10)
            return
        L_0x008f:
            c.e.a.b.h.b.Y r10 = r8.f11077a
            boolean r10 = r10.x()
            if (r10 != 0) goto L_0x0098
            return
        L_0x0098:
            c.e.a.b.h.b.t r10 = r8.e()
            c.e.a.b.h.b.v r10 = r10.A()
            c.e.a.b.h.b.r r11 = r8.f()
            java.lang.String r11 = r11.a((java.lang.String) r3)
            java.lang.String r0 = "Setting user property (FE)"
            r10.a(r0, r11, r6)
            com.google.android.gms.measurement.internal.zzga r10 = new com.google.android.gms.measurement.internal.zzga
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            c.e.a.b.h.b.gb r9 = r8.r()
            r9.a((com.google.android.gms.measurement.internal.zzga) r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Fa.a(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void a(String str) {
        this.f10624g.set(str);
    }

    public final void a(long j2) {
        a((String) null);
        d().a((Runnable) new Ja(this, j2));
    }

    public final void a(Ca ca) {
        l();
        j();
        w();
        if (ca != null) {
            Ca ca2 = this.f10621d;
            if (ca != ca2) {
                r.b(ca2 == null, "EventInterceptor already set.");
            }
        }
        this.f10621d = ca;
    }

    public final void a(Da da) {
        j();
        w();
        r.a(da);
        if (!this.f10622e.add(da)) {
            e().w().a("OnEventListener already registered");
        }
    }

    public final void a(Bundle bundle) {
        a(bundle, c().c());
    }

    public final void a(Bundle bundle, long j2) {
        r.a(bundle);
        j();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            e().w().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        b(bundle2, j2);
    }

    public final void a(String str, String str2, Bundle bundle) {
        j();
        b((String) null, str, str2, bundle);
    }

    public final void a(String str, String str2, String str3, Bundle bundle) {
        r.b(str);
        n();
        throw null;
    }

    public final ArrayList<Bundle> a(String str, String str2, String str3) {
        r.b(str);
        n();
        throw null;
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        j();
        return b((String) null, str, str2, z);
    }

    public final Map<String, Object> a(String str, String str2, String str3, boolean z) {
        r.b(str);
        n();
        throw null;
    }
}
