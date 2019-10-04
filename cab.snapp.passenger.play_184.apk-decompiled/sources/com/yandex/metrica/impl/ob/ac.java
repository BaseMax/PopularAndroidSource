package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.b;
import com.yandex.metrica.impl.bh;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.at;
import com.yandex.metrica.impl.ob.ay;
import com.yandex.metrica.impl.ob.ej;
import com.yandex.metrica.impl.ob.le;

public class ac<C extends ay> implements ai<C>, ak, fn, lx {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5861a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f5862b;
    private final Handler c;
    private final Context d;
    private final z e;
    private gd f;
    private gf g;
    private gb h;
    private bh i;
    private fo j;
    private ca k;
    private final bx l;
    private b m;
    private v n;
    private od o;
    private long p;
    private long q;
    private int r;
    private int s;
    private volatile ej t;
    private final nk u;
    private final aa<C> v;
    private ls w;
    private mb x;
    private at y;
    private dw z;

    public lx e() {
        return this;
    }

    public ej f() {
        return this.t;
    }

    public ac(Context context, ls lsVar, an anVar, z zVar, t tVar, v vVar, at.a aVar, md mdVar) {
        this(context, lsVar, anVar, zVar, tVar, vVar, new od(context), aVar, mdVar);
    }

    ac(Context context, ls lsVar, an anVar, z zVar, t tVar, v vVar, od odVar, at.a aVar, md mdVar) {
        this.f5861a = false;
        this.u = new nk();
        this.v = new aa<>();
        this.d = context.getApplicationContext();
        this.e = zVar;
        this.o = odVar;
        fr b2 = fq.a(this.d).b(this.e);
        this.f = new gd(b2);
        this.h = new gb(b2);
        this.g = new gf(fq.a(this.d).c());
        this.w = lsVar;
        synchronized (this) {
            this.x = this.w.d(this, tVar);
            this.y = new at(new le.b(this), aVar, this.x.f(), tVar);
        }
        long libraryApiLevel = (long) YandexMetrica.getLibraryApiLevel();
        if (this.f.d() < libraryApiLevel) {
            new ab(this, new iv(B())).a();
            this.f.e(libraryApiLevel).i();
        }
        this.j = new fo(this, fq.a(this.d).a(this.e));
        this.p = this.f.a(0);
        this.q = this.f.b(0);
        this.r = this.f.a(-1);
        this.s = bv.c(context, zVar.b());
        this.t = new ej(this, new ej.a() {
            public void a(i iVar, ek ekVar) {
                ac.this.a(iVar, ekVar);
            }
        });
        this.n = vVar;
        this.m = this.n.a(this, this.f);
        if (n().b()) {
            n().a("Read app environment for component %s. Value: %s", this.e.toString(), this.m.b().f5735a);
        }
        this.z = new dw(this.d, this.e, this.s);
        this.f5862b = ni.b(zVar.b());
        this.f5862b.start();
        this.c = new Handler(this.f5862b.getLooper());
        this.i = new bh(this, mdVar.a(this, this.w), anVar);
        this.j.a((fn) this);
        this.l = new bx(this);
        this.k = new ca(this.l);
    }

    /* access modifiers changed from: protected */
    public bx g() {
        return this.l;
    }

    public void a(i iVar) {
        if (n().b()) {
            n().a(iVar, "Event received on service");
        }
        if (bv.a(this.e.a())) {
            this.k.b(iVar);
        }
    }

    public void b(i iVar) {
        b(iVar, this.t.b());
    }

    public void c(i iVar) {
        this.t.c(iVar);
    }

    public void d(i iVar) {
        b(iVar, this.t.d(iVar));
    }

    /* access modifiers changed from: package-private */
    public void a(i iVar, ek ekVar) {
        b(iVar, ekVar);
    }

    /* access modifiers changed from: package-private */
    public void b(i iVar, ek ekVar) {
        if (TextUtils.isEmpty(iVar.m())) {
            iVar.a(j());
        }
        iVar.d(G());
        this.j.a(this.o.a(iVar).a(iVar), ekVar, this.m.b());
        this.i.b();
    }

    public synchronized void a(t tVar) {
        this.y.a(tVar);
    }

    public void h() {
        if ((this.j.a() >= ((long) ((le) this.y.e()).R())) || this.f5861a) {
            i();
            this.f5861a = false;
        }
    }

    public synchronized void i() {
        this.i.d();
    }

    public String j() {
        return this.f.a((String) null);
    }

    public le k() {
        return (le) this.y.e();
    }

    public fo l() {
        return this.j;
    }

    public t a() {
        return this.y.a();
    }

    public z b() {
        return this.e;
    }

    public synchronized void a(ma maVar) {
        this.y.a(maVar);
    }

    public synchronized void a(lu luVar) {
    }

    public Context c() {
        return this.d;
    }

    public Handler m() {
        return this.c;
    }

    public synchronized boolean d() {
        return this.v.b();
    }

    public void a(CounterConfiguration.a aVar) {
        this.f.a(aVar).i();
        if (this.d.getPackageName().equals(this.e.b())) {
            this.g.a(aVar).i();
        }
    }

    public nk n() {
        if (!this.u.b() && ((le) this.y.e()).Q()) {
            this.u.a();
        }
        return this.u;
    }

    public void e(i iVar) {
        a(true);
        d(iVar);
        r();
    }

    public void f(i iVar) {
        d(iVar);
        I();
    }

    public void g(i iVar) {
        d(iVar);
        u();
    }

    public void o() {
        I();
    }

    public void p() {
        u();
    }

    public void h(i iVar) {
        this.m.a(iVar.l());
        b.a b2 = this.m.b();
        if (this.n.a(b2, this.f) && n().b()) {
            n().a("Save new app environment for %s. Value: %s", b(), b2.f5735a);
        }
    }

    public void q() {
        this.m.a();
        this.n.b(this.m.b(), this.f);
    }

    public void a(String str) {
        this.f.b(str).i();
    }

    public void s() {
        this.f.c(t() + 1).i();
        this.y.b();
    }

    public int t() {
        return this.f.d(1);
    }

    /* access modifiers changed from: package-private */
    public void u() {
        this.r = this.s;
        this.f.b(this.r).i();
    }

    /* access modifiers changed from: package-private */
    public boolean w() {
        return this.r < this.s;
    }

    public boolean y() {
        return v() && k().G() && k().e();
    }

    public boolean z() {
        return w() && k().H() && k().e();
    }

    public gb A() {
        return this.h;
    }

    @Deprecated
    public final iw B() {
        return new iw(this.d, this.e.a());
    }

    public gd C() {
        return this.f;
    }

    public boolean E() {
        if (!(this.h.b(false) && this.y.c().t)) {
            return true;
        }
        return false;
    }

    public void a(boolean z2) {
        this.f5861a = z2;
    }

    public gd F() {
        return this.f;
    }

    public String G() {
        return this.f.e();
    }

    public void b(String str) {
        this.f.e(str).i();
    }

    public dw H() {
        return this.z;
    }

    public void r() {
        this.p = System.currentTimeMillis() / 1000;
        this.f.c(this.p).i();
    }

    private void I() {
        this.q = System.currentTimeMillis() / 1000;
        this.f.d(this.q).i();
    }

    /* access modifiers changed from: package-private */
    public boolean v() {
        return (System.currentTimeMillis() / 1000) - this.q > eh.f5954b;
    }

    public boolean x() {
        return ((((System.currentTimeMillis() / 1000) - this.p) > eh.f5953a ? 1 : (((System.currentTimeMillis() / 1000) - this.p) == eh.f5953a ? 0 : -1)) > 0) && k().e();
    }

    public boolean D() {
        return this.g.a() == CounterConfiguration.a.TRUE && this.f.c() == CounterConfiguration.a.TRUE;
    }
}
