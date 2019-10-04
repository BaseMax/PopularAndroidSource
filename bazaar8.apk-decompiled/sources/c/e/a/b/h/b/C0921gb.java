package c.e.a.b.h.b;

import android.content.ComponentName;
import c.e.a.b.d.d.r;
import c.e.a.b.d.e;
import c.e.a.b.d.f.a;
import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: c.e.a.b.h.b.gb  reason: case insensitive filesystem */
public final class C0921gb extends C0977zb {

    /* renamed from: c  reason: collision with root package name */
    public final C0971xb f10900c;

    /* renamed from: d  reason: collision with root package name */
    public C0934l f10901d;

    /* renamed from: e  reason: collision with root package name */
    public volatile Boolean f10902e;

    /* renamed from: f  reason: collision with root package name */
    public final C0907c f10903f;

    /* renamed from: g  reason: collision with root package name */
    public final Ob f10904g;

    /* renamed from: h  reason: collision with root package name */
    public final List<Runnable> f10905h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public final C0907c f10906i;

    public C0921gb(Y y) {
        super(y);
        this.f10904g = new Ob(y.c());
        this.f10900c = new C0971xb(this);
        this.f10903f = new C0924hb(this, y);
        this.f10906i = new C0948pb(this, y);
    }

    public final void B() {
        l();
        w();
        this.f10900c.a();
        try {
            a.a().a(b(), this.f10900c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f10901d = null;
    }

    public final boolean C() {
        l();
        w();
        return this.f10901d != null;
    }

    public final void D() {
        l();
        j();
        w();
        zzm a2 = a(false);
        if (G()) {
            t().C();
        }
        a((Runnable) new C0930jb(this, a2));
    }

    public final void E() {
        l();
        w();
        a((Runnable) new C0939mb(this, a(true)));
    }

    public final void F() {
        l();
        w();
        a((Runnable) new C0951qb(this, a(true)));
    }

    public final boolean G() {
        a();
        return true;
    }

    public final void H() {
        l();
        this.f10904g.b();
        this.f10903f.a(C0931k.U.a(null).longValue());
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x010d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void I() {
        /*
            r6 = this;
            r6.l()
            r6.w()
            boolean r0 = r6.C()
            if (r0 == 0) goto L_0x000d
            return
        L_0x000d:
            java.lang.Boolean r0 = r6.f10902e
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x011a
            r6.l()
            r6.w()
            c.e.a.b.h.b.F r0 = r6.h()
            java.lang.Boolean r0 = r0.w()
            if (r0 == 0) goto L_0x002c
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x002c
            r0 = 1
            goto L_0x0114
        L_0x002c:
            r6.a()
            c.e.a.b.h.b.o r0 = r6.q()
            int r0 = r0.G()
            if (r0 != r2) goto L_0x003d
        L_0x0039:
            r0 = 1
        L_0x003a:
            r3 = 1
            goto L_0x00f1
        L_0x003d:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.B()
            java.lang.String r3 = "Checking service availability"
            r0.a(r3)
            c.e.a.b.h.b.cc r0 = r6.g()
            r3 = 12451000(0xbdfcb8, float:1.7447567E-38)
            int r0 = r0.a((int) r3)
            if (r0 == 0) goto L_0x00e2
            if (r0 == r2) goto L_0x00d2
            r3 = 2
            if (r0 == r3) goto L_0x00a6
            r3 = 3
            if (r0 == r3) goto L_0x0098
            r3 = 9
            if (r0 == r3) goto L_0x008a
            r3 = 18
            if (r0 == r3) goto L_0x007c
            c.e.a.b.h.b.t r3 = r6.e()
            c.e.a.b.h.b.v r3 = r3.w()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r4 = "Unexpected service status"
            r3.a(r4, r0)
        L_0x0078:
            r0 = 0
        L_0x0079:
            r3 = 0
            goto L_0x00f1
        L_0x007c:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.String r3 = "Service updating"
            r0.a(r3)
            goto L_0x0039
        L_0x008a:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.String r3 = "Service invalid"
            r0.a(r3)
            goto L_0x0078
        L_0x0098:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.String r3 = "Service disabled"
            r0.a(r3)
            goto L_0x0078
        L_0x00a6:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.A()
            java.lang.String r3 = "Service container out of date"
            r0.a(r3)
            c.e.a.b.h.b.cc r0 = r6.g()
            int r0 = r0.w()
            r3 = 15000(0x3a98, float:2.102E-41)
            if (r0 >= r3) goto L_0x00c0
            goto L_0x00df
        L_0x00c0:
            c.e.a.b.h.b.F r0 = r6.h()
            java.lang.Boolean r0 = r0.w()
            if (r0 == 0) goto L_0x00d0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0078
        L_0x00d0:
            r0 = 1
            goto L_0x0079
        L_0x00d2:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.B()
            java.lang.String r3 = "Service missing"
            r0.a(r3)
        L_0x00df:
            r0 = 0
            goto L_0x003a
        L_0x00e2:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.B()
            java.lang.String r3 = "Service available"
            r0.a(r3)
            goto L_0x0039
        L_0x00f1:
            if (r0 != 0) goto L_0x010b
            c.e.a.b.h.b.pc r4 = r6.i()
            boolean r4 = r4.w()
            if (r4 == 0) goto L_0x010b
            c.e.a.b.h.b.t r3 = r6.e()
            c.e.a.b.h.b.v r3 = r3.t()
            java.lang.String r4 = "No way to upload. Consider using the full version of Analytics"
            r3.a(r4)
            r3 = 0
        L_0x010b:
            if (r3 == 0) goto L_0x0114
            c.e.a.b.h.b.F r3 = r6.h()
            r3.b((boolean) r0)
        L_0x0114:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r6.f10902e = r0
        L_0x011a:
            java.lang.Boolean r0 = r6.f10902e
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0128
            c.e.a.b.h.b.xb r0 = r6.f10900c
            r0.b()
            return
        L_0x0128:
            c.e.a.b.h.b.pc r0 = r6.i()
            boolean r0 = r0.w()
            if (r0 != 0) goto L_0x0186
            r6.a()
            android.content.Context r0 = r6.b()
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            android.content.Intent r3 = new android.content.Intent
            r3.<init>()
            android.content.Context r4 = r6.b()
            java.lang.String r5 = "com.google.android.gms.measurement.AppMeasurementService"
            android.content.Intent r3 = r3.setClassName(r4, r5)
            r4 = 65536(0x10000, float:9.18355E-41)
            java.util.List r0 = r0.queryIntentServices(r3, r4)
            if (r0 == 0) goto L_0x015b
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x015b
            r1 = 1
        L_0x015b:
            if (r1 == 0) goto L_0x0179
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "com.google.android.gms.measurement.START"
            r0.<init>(r1)
            android.content.ComponentName r1 = new android.content.ComponentName
            android.content.Context r2 = r6.b()
            r6.a()
            r1.<init>(r2, r5)
            r0.setComponent(r1)
            c.e.a.b.h.b.xb r1 = r6.f10900c
            r1.a((android.content.Intent) r0)
            return
        L_0x0179:
            c.e.a.b.h.b.t r0 = r6.e()
            c.e.a.b.h.b.v r0 = r0.t()
            java.lang.String r1 = "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"
            r0.a(r1)
        L_0x0186:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.C0921gb.I():void");
    }

    public final Boolean J() {
        return this.f10902e;
    }

    public final void K() {
        l();
        if (C()) {
            e().B().a("Inactivity, disconnecting from the service");
            B();
        }
    }

    public final void L() {
        l();
        e().B().a("Processing queued up service tasks", Integer.valueOf(this.f10905h.size()));
        for (Runnable run : this.f10905h) {
            try {
                run.run();
            } catch (Exception e2) {
                e().t().a("Task exception while flushing queue", e2);
            }
        }
        this.f10905h.clear();
        this.f10906i.a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.b.h.b.C0934l r12, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r13, com.google.android.gms.measurement.internal.zzm r14) {
        /*
            r11 = this;
            r11.l()
            r11.j()
            r11.w()
            boolean r0 = r11.G()
            r1 = 0
            r2 = 100
            r3 = 0
            r4 = 100
        L_0x0013:
            r5 = 1001(0x3e9, float:1.403E-42)
            if (r3 >= r5) goto L_0x00a7
            if (r4 != r2) goto L_0x00a7
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            if (r0 == 0) goto L_0x0032
            c.e.a.b.h.b.p r5 = r11.t()
            java.util.List r5 = r5.a((int) r2)
            if (r5 == 0) goto L_0x0032
            r4.addAll(r5)
            int r5 = r5.size()
            goto L_0x0033
        L_0x0032:
            r5 = 0
        L_0x0033:
            if (r13 == 0) goto L_0x003a
            if (r5 >= r2) goto L_0x003a
            r4.add(r13)
        L_0x003a:
            int r6 = r4.size()
            r7 = 0
        L_0x003f:
            if (r7 >= r6) goto L_0x00a2
            java.lang.Object r8 = r4.get(r7)
            int r7 = r7 + 1
            com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r8 = (com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable) r8
            boolean r9 = r8 instanceof com.google.android.gms.measurement.internal.zzaj
            if (r9 == 0) goto L_0x0062
            com.google.android.gms.measurement.internal.zzaj r8 = (com.google.android.gms.measurement.internal.zzaj) r8     // Catch:{ RemoteException -> 0x0053 }
            r12.a((com.google.android.gms.measurement.internal.zzaj) r8, (com.google.android.gms.measurement.internal.zzm) r14)     // Catch:{ RemoteException -> 0x0053 }
            goto L_0x003f
        L_0x0053:
            r8 = move-exception
            c.e.a.b.h.b.t r9 = r11.e()
            c.e.a.b.h.b.v r9 = r9.t()
            java.lang.String r10 = "Failed to send event to the service"
            r9.a(r10, r8)
            goto L_0x003f
        L_0x0062:
            boolean r9 = r8 instanceof com.google.android.gms.measurement.internal.zzga
            if (r9 == 0) goto L_0x007b
            com.google.android.gms.measurement.internal.zzga r8 = (com.google.android.gms.measurement.internal.zzga) r8     // Catch:{ RemoteException -> 0x006c }
            r12.a((com.google.android.gms.measurement.internal.zzga) r8, (com.google.android.gms.measurement.internal.zzm) r14)     // Catch:{ RemoteException -> 0x006c }
            goto L_0x003f
        L_0x006c:
            r8 = move-exception
            c.e.a.b.h.b.t r9 = r11.e()
            c.e.a.b.h.b.v r9 = r9.t()
            java.lang.String r10 = "Failed to send attribute to the service"
            r9.a(r10, r8)
            goto L_0x003f
        L_0x007b:
            boolean r9 = r8 instanceof com.google.android.gms.measurement.internal.zzr
            if (r9 == 0) goto L_0x0094
            com.google.android.gms.measurement.internal.zzr r8 = (com.google.android.gms.measurement.internal.zzr) r8     // Catch:{ RemoteException -> 0x0085 }
            r12.a((com.google.android.gms.measurement.internal.zzr) r8, (com.google.android.gms.measurement.internal.zzm) r14)     // Catch:{ RemoteException -> 0x0085 }
            goto L_0x003f
        L_0x0085:
            r8 = move-exception
            c.e.a.b.h.b.t r9 = r11.e()
            c.e.a.b.h.b.v r9 = r9.t()
            java.lang.String r10 = "Failed to send conditional property to the service"
            r9.a(r10, r8)
            goto L_0x003f
        L_0x0094:
            c.e.a.b.h.b.t r8 = r11.e()
            c.e.a.b.h.b.v r8 = r8.t()
            java.lang.String r9 = "Discarding data. Unrecognized parcel type."
            r8.a(r9)
            goto L_0x003f
        L_0x00a2:
            int r3 = r3 + 1
            r4 = r5
            goto L_0x0013
        L_0x00a7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.C0921gb.a(c.e.a.b.h.b.l, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, com.google.android.gms.measurement.internal.zzm):void");
    }

    public final boolean z() {
        return false;
    }

    public final void a(zzaj zzaj, String str) {
        r.a(zzaj);
        l();
        w();
        boolean G = G();
        C0953rb rbVar = new C0953rb(this, G, G && t().a(zzaj), zzaj, a(true), str);
        a((Runnable) rbVar);
    }

    public final void a(zzr zzr) {
        r.a(zzr);
        l();
        w();
        a();
        C0956sb sbVar = new C0956sb(this, true, t().a(zzr), new zzr(zzr), a(true), zzr);
        a((Runnable) sbVar);
    }

    public final void a(AtomicReference<List<zzr>> atomicReference, String str, String str2, String str3) {
        l();
        w();
        C0959tb tbVar = new C0959tb(this, atomicReference, str, str2, str3, a(false));
        a((Runnable) tbVar);
    }

    public final void a(fd fdVar, String str, String str2) {
        l();
        w();
        C0962ub ubVar = new C0962ub(this, str, str2, a(false), fdVar);
        a((Runnable) ubVar);
    }

    public final void a(AtomicReference<List<zzga>> atomicReference, String str, String str2, String str3, boolean z) {
        l();
        w();
        C0965vb vbVar = new C0965vb(this, atomicReference, str, str2, str3, z, a(false));
        a((Runnable) vbVar);
    }

    public final void a(fd fdVar, String str, String str2, boolean z) {
        l();
        w();
        C0968wb wbVar = new C0968wb(this, str, str2, z, a(false), fdVar);
        a((Runnable) wbVar);
    }

    public final void a(zzga zzga) {
        l();
        w();
        a((Runnable) new C0927ib(this, G() && t().a(zzga), zzga, a(true)));
    }

    public final void a(AtomicReference<String> atomicReference) {
        l();
        w();
        a((Runnable) new C0933kb(this, atomicReference, a(false)));
    }

    public final void a(fd fdVar) {
        l();
        w();
        a((Runnable) new C0936lb(this, a(false), fdVar));
    }

    public final void a(C0909cb cbVar) {
        l();
        w();
        a((Runnable) new C0942nb(this, cbVar));
    }

    public final void a(C0934l lVar) {
        l();
        r.a(lVar);
        this.f10901d = lVar;
        H();
        L();
    }

    public final void a(ComponentName componentName) {
        l();
        if (this.f10901d != null) {
            this.f10901d = null;
            e().B().a("Disconnected from device MeasurementService", componentName);
            l();
            I();
        }
    }

    public final void a(Runnable runnable) {
        l();
        if (C()) {
            runnable.run();
        } else if (((long) this.f10905h.size()) >= 1000) {
            e().t().a("Discarding data. Max runnable queue size reached");
        } else {
            this.f10905h.add(runnable);
            this.f10906i.a(60000);
            I();
        }
    }

    public final zzm a(boolean z) {
        a();
        return q().a(z ? e().D() : null);
    }

    public final void a(fd fdVar, zzaj zzaj, String str) {
        l();
        w();
        if (g().a((int) e.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            e().w().a("Not bundling data. Service unavailable or out of date");
            g().a(fdVar, new byte[0]);
            return;
        }
        a((Runnable) new C0945ob(this, zzaj, str, fdVar));
    }
}
