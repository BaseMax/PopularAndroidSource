package c.e.a.b.h.b;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import c.e.a.b.d.a.a.C0756d;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.e;
import c.e.a.b.d.g.h;
import c.e.a.b.d.h.c;
import c.e.a.b.g.f.C0870sa;
import com.google.android.gms.internal.measurement.zzy;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Y implements C0967wa {

    /* renamed from: a  reason: collision with root package name */
    public static volatile Y f10793a;
    public long A;
    public volatile Boolean B;
    public Boolean C;
    public Boolean D;
    public int E;
    public AtomicInteger F = new AtomicInteger(0);
    public final long G;

    /* renamed from: b  reason: collision with root package name */
    public final Context f10794b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10795c;

    /* renamed from: d  reason: collision with root package name */
    public final String f10796d;

    /* renamed from: e  reason: collision with root package name */
    public final String f10797e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f10798f;

    /* renamed from: g  reason: collision with root package name */
    public final nc f10799g;

    /* renamed from: h  reason: collision with root package name */
    public final pc f10800h;

    /* renamed from: i  reason: collision with root package name */
    public final F f10801i;

    /* renamed from: j  reason: collision with root package name */
    public final C0957t f10802j;

    /* renamed from: k  reason: collision with root package name */
    public final U f10803k;

    /* renamed from: l  reason: collision with root package name */
    public final Jb f10804l;
    public final cc m;
    public final r n;
    public final e o;
    public final C0912db p;
    public final Fa q;
    public final C0901a r;
    public final Za s;
    public C0946p t;
    public C0921gb u;
    public C0913e v;
    public C0943o w;
    public L x;
    public boolean y = false;
    public Boolean z;

    public Y(Ea ea) {
        boolean z2 = false;
        r.a(ea);
        this.f10799g = new nc(ea.f10601a);
        C0931k.a(this.f10799g);
        this.f10794b = ea.f10601a;
        this.f10795c = ea.f10602b;
        this.f10796d = ea.f10603c;
        this.f10797e = ea.f10604d;
        this.f10798f = ea.f10608h;
        this.B = ea.f10605e;
        zzy zzy = ea.f10607g;
        if (zzy != null) {
            Bundle bundle = zzy.f13216g;
            if (bundle != null) {
                Object obj = bundle.get("measurementEnabled");
                if (obj instanceof Boolean) {
                    this.C = (Boolean) obj;
                }
                Object obj2 = zzy.f13216g.get("measurementDeactivated");
                if (obj2 instanceof Boolean) {
                    this.D = (Boolean) obj2;
                }
            }
        }
        C0870sa.a(this.f10794b);
        this.o = h.d();
        this.G = this.o.c();
        this.f10800h = new pc(this);
        F f2 = new F(this);
        f2.p();
        this.f10801i = f2;
        C0957t tVar = new C0957t(this);
        tVar.p();
        this.f10802j = tVar;
        cc ccVar = new cc(this);
        ccVar.p();
        this.m = ccVar;
        r rVar = new r(this);
        rVar.p();
        this.n = rVar;
        this.r = new C0901a(this);
        C0912db dbVar = new C0912db(this);
        dbVar.x();
        this.p = dbVar;
        Fa fa = new Fa(this);
        fa.x();
        this.q = fa;
        Jb jb = new Jb(this);
        jb.x();
        this.f10804l = jb;
        Za za = new Za(this);
        za.p();
        this.s = za;
        U u2 = new U(this);
        u2.p();
        this.f10803k = u2;
        zzy zzy2 = ea.f10607g;
        if (!(zzy2 == null || zzy2.f13211b == 0)) {
            z2 = true;
        }
        boolean z3 = !z2;
        nc ncVar = this.f10799g;
        if (this.f10794b.getApplicationContext() instanceof Application) {
            Fa B2 = B();
            if (B2.b().getApplicationContext() instanceof Application) {
                Application application = (Application) B2.b().getApplicationContext();
                if (B2.f10620c == null) {
                    B2.f10620c = new Xa(B2, null);
                }
                if (z3) {
                    application.unregisterActivityLifecycleCallbacks(B2.f10620c);
                    application.registerActivityLifecycleCallbacks(B2.f10620c);
                    B2.e().B().a("Registered activity lifecycle callback");
                }
            }
        } else {
            e().w().a("Application context is not an Application");
        }
        this.f10803k.a((Runnable) new Z(this, ea));
    }

    public final C0901a A() {
        C0901a aVar = this.r;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final Fa B() {
        a((C0977zb) this.q);
        return this.q;
    }

    public final C0943o C() {
        a((C0977zb) this.w);
        return this.w;
    }

    public final C0921gb D() {
        a((C0977zb) this.u);
        return this.u;
    }

    public final C0912db E() {
        a((C0977zb) this.p);
        return this.p;
    }

    public final C0946p F() {
        a((C0977zb) this.t);
        return this.t;
    }

    public final Jb G() {
        a((C0977zb) this.f10804l);
        return this.f10804l;
    }

    public final C0913e H() {
        a((C0964va) this.v);
        return this.v;
    }

    public final void a(Ea ea) {
        String str;
        C0963v vVar;
        d().l();
        pc.o();
        C0913e eVar = new C0913e(this);
        eVar.p();
        this.v = eVar;
        C0943o oVar = new C0943o(this, ea.f10606f);
        oVar.x();
        this.w = oVar;
        C0946p pVar = new C0946p(this);
        pVar.x();
        this.t = pVar;
        C0921gb gbVar = new C0921gb(this);
        gbVar.x();
        this.u = gbVar;
        this.m.q();
        this.f10801i.q();
        this.x = new L(this);
        this.w.y();
        e().z().a("App measurement is starting up, version", Long.valueOf(this.f10800h.n()));
        nc ncVar = this.f10799g;
        e().z().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        nc ncVar2 = this.f10799g;
        String C2 = oVar.C();
        if (TextUtils.isEmpty(this.f10795c)) {
            if (i().h(C2)) {
                vVar = e().z();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                vVar = e().z();
                String valueOf = String.valueOf(C2);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            vVar.a(str);
        }
        e().A().a("Debug-level message logging enabled");
        if (this.E != this.F.get()) {
            e().t().a("Not all components initialized", Integer.valueOf(this.E), Integer.valueOf(this.F.get()));
        }
        this.y = true;
    }

    public final Context b() {
        return this.f10794b;
    }

    public final e c() {
        return this.o;
    }

    public final U d() {
        a((C0964va) this.f10803k);
        return this.f10803k;
    }

    public final C0957t e() {
        a((C0964va) this.f10802j);
        return this.f10802j;
    }

    public final boolean f() {
        boolean z2;
        d().l();
        l();
        if (this.f10800h.a(C0931k.za)) {
            if (this.f10800h.q()) {
                return false;
            }
            Boolean bool = this.D;
            if (bool != null && bool.booleanValue()) {
                return false;
            }
            Boolean y2 = j().y();
            if (y2 != null) {
                return y2.booleanValue();
            }
            Boolean r2 = this.f10800h.r();
            if (r2 != null) {
                return r2.booleanValue();
            }
            Boolean bool2 = this.C;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            if (C0756d.b()) {
                return false;
            }
            if (!this.f10800h.a(C0931k.va) || this.B == null) {
                return true;
            }
            return this.B.booleanValue();
        } else if (this.f10800h.q()) {
            return false;
        } else {
            Boolean r3 = this.f10800h.r();
            if (r3 != null) {
                z2 = r3.booleanValue();
            } else {
                z2 = !C0756d.b();
                if (z2 && this.B != null && C0931k.va.a(null).booleanValue()) {
                    z2 = this.B.booleanValue();
                }
            }
            return j().c(z2);
        }
    }

    public final void g() {
        d().l();
        if (j().f10613f.a() == 0) {
            j().f10613f.a(this.o.c());
        }
        if (Long.valueOf(j().f10618k.a()).longValue() == 0) {
            e().B().a("Persisting first open", Long.valueOf(this.G));
            j().f10618k.a(this.G);
        }
        if (x()) {
            nc ncVar = this.f10799g;
            if (!TextUtils.isEmpty(C().B()) || !TextUtils.isEmpty(C().D())) {
                i();
                if (cc.a(C().B(), j().u(), C().D(), j().v())) {
                    e().z().a("Rechecking which service to use due to a GMP App Id change");
                    j().x();
                    F().C();
                    this.u.B();
                    this.u.I();
                    j().f10618k.a(this.G);
                    j().m.a(null);
                }
                j().c(C().B());
                j().d(C().D());
                if (this.f10800h.a(C().C())) {
                    this.f10804l.b(this.G);
                }
            }
            B().a(j().m.a());
            nc ncVar2 = this.f10799g;
            if (!TextUtils.isEmpty(C().B()) || !TextUtils.isEmpty(C().D())) {
                boolean f2 = f();
                if (!j().B() && !this.f10800h.q()) {
                    j().d(!f2);
                }
                if (!this.f10800h.n(C().C()) || f2) {
                    B().L();
                }
                D().a((AtomicReference<String>) new AtomicReference());
            }
        } else if (f()) {
            if (!i().f("android.permission.INTERNET")) {
                e().t().a("App is missing INTERNET permission");
            }
            if (!i().f("android.permission.ACCESS_NETWORK_STATE")) {
                e().t().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            nc ncVar3 = this.f10799g;
            if (!c.a(this.f10794b).a() && !this.f10800h.w()) {
                if (!O.a(this.f10794b)) {
                    e().t().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!cc.a(this.f10794b, false)) {
                    e().t().a("AppMeasurementService not registered/enabled");
                }
            }
            e().t().a("Uploading is not possible. App measurement disabled");
        }
        j().u.a(this.f10800h.a(C0931k.Ha));
        j().v.a(this.f10800h.a(C0931k.Ia));
    }

    public final r h() {
        a((C0961ua) this.n);
        return this.n;
    }

    public final cc i() {
        a((C0961ua) this.m);
        return this.m;
    }

    public final F j() {
        a((C0961ua) this.f10801i);
        return this.f10801i;
    }

    public final pc k() {
        return this.f10800h;
    }

    public final void l() {
        if (!this.y) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    public final C0957t m() {
        C0957t tVar = this.f10802j;
        if (tVar == null || !tVar.n()) {
            return null;
        }
        return this.f10802j;
    }

    public final L n() {
        return this.x;
    }

    public final U o() {
        return this.f10803k;
    }

    public final boolean p() {
        return TextUtils.isEmpty(this.f10795c);
    }

    public final String q() {
        return this.f10795c;
    }

    public final String r() {
        return this.f10796d;
    }

    public final String s() {
        return this.f10797e;
    }

    public final boolean t() {
        return this.f10798f;
    }

    public final boolean u() {
        return this.B != null && this.B.booleanValue();
    }

    public final long v() {
        Long valueOf = Long.valueOf(j().f10618k.a());
        if (valueOf.longValue() == 0) {
            return this.G;
        }
        return Math.min(this.G, valueOf.longValue());
    }

    public final void w() {
        this.F.incrementAndGet();
    }

    public final boolean x() {
        l();
        d().l();
        Boolean bool = this.z;
        if (bool == null || this.A == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.o.a() - this.A) > 1000)) {
            this.A = this.o.a();
            nc ncVar = this.f10799g;
            boolean z2 = true;
            this.z = Boolean.valueOf(i().f("android.permission.INTERNET") && i().f("android.permission.ACCESS_NETWORK_STATE") && (c.a(this.f10794b).a() || this.f10800h.w() || (O.a(this.f10794b) && cc.a(this.f10794b, false))));
            if (this.z.booleanValue()) {
                if (!i().d(C().B(), C().D()) && TextUtils.isEmpty(C().D())) {
                    z2 = false;
                }
                this.z = Boolean.valueOf(z2);
            }
        }
        return this.z.booleanValue();
    }

    public final void y() {
        nc ncVar = this.f10799g;
        throw new IllegalStateException("Unexpected call on client side");
    }

    public final void z() {
        nc ncVar = this.f10799g;
    }

    public final void b(C0964va vaVar) {
        this.E++;
    }

    public final void b(C0977zb zbVar) {
        this.E++;
    }

    public final nc a() {
        return this.f10799g;
    }

    public static Y a(Context context, String str, String str2, Bundle bundle) {
        zzy zzy = new zzy(0, 0, true, null, null, null, bundle);
        return a(context, zzy);
    }

    public static Y a(Context context, zzy zzy) {
        if (zzy != null && (zzy.f13214e == null || zzy.f13215f == null)) {
            zzy zzy2 = new zzy(zzy.f13210a, zzy.f13211b, zzy.f13212c, zzy.f13213d, null, null, zzy.f13216g);
            zzy = zzy2;
        }
        r.a(context);
        r.a(context.getApplicationContext());
        if (f10793a == null) {
            synchronized (Y.class) {
                if (f10793a == null) {
                    f10793a = new Y(new Ea(context, zzy));
                }
            }
        } else if (zzy != null) {
            Bundle bundle = zzy.f13216g;
            if (bundle != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
                f10793a.a(zzy.f13216g.getBoolean("dataCollectionDefaultEnabled"));
            }
        }
        return f10793a;
    }

    public static void a(C0964va vaVar) {
        if (vaVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!vaVar.n()) {
            String valueOf = String.valueOf(vaVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    public static void a(C0977zb zbVar) {
        if (zbVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zbVar.v()) {
            String valueOf = String.valueOf(zbVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    public static void a(C0961ua uaVar) {
        if (uaVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public final void a(boolean z2) {
        this.B = Boolean.valueOf(z2);
    }
}
