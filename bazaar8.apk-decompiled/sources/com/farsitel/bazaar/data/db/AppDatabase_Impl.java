package com.farsitel.bazaar.data.db;

import b.C.a.c;
import b.z.C0354c;
import b.z.j;
import b.z.w;
import c.c.a.e.d.b.C0375e;
import c.c.a.e.d.b.C0379i;
import c.c.a.e.d.b.C0385o;
import c.c.a.e.d.b.C0392w;
import c.c.a.e.d.b.L;
import c.c.a.e.d.b.V;
import c.c.a.e.d.d.a.i;
import c.c.a.e.d.n.a.e;
import c.c.a.e.d.r.a.a.g;
import c.c.a.e.d.r.b.a.a;
import c.c.a.e.d.r.b.a.h;
import java.util.HashMap;

public final class AppDatabase_Impl extends AppDatabase {

    /* renamed from: l  reason: collision with root package name */
    public volatile L f12198l;
    public volatile C0385o m;
    public volatile a n;
    public volatile c.c.a.e.d.r.a.a.a o;
    public volatile C0375e p;
    public volatile c.c.a.e.d.h.e.a.a.a q;
    public volatile c.c.a.e.d.d.a.a r;
    public volatile c.c.a.e.d.n.a.a s;

    public c.c.a.e.d.d.a.a p() {
        c.c.a.e.d.d.a.a aVar;
        if (this.r != null) {
            return this.r;
        }
        synchronized (this) {
            if (this.r == null) {
                this.r = new i(this);
            }
            aVar = this.r;
        }
        return aVar;
    }

    public c.c.a.e.d.r.a.a.a q() {
        c.c.a.e.d.r.a.a.a aVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new g(this);
            }
            aVar = this.o;
        }
        return aVar;
    }

    public a r() {
        a aVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new h(this);
            }
            aVar = this.n;
        }
        return aVar;
    }

    public C0375e s() {
        C0375e eVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new C0379i(this);
            }
            eVar = this.p;
        }
        return eVar;
    }

    public c.c.a.e.d.h.e.a.a.a t() {
        c.c.a.e.d.h.e.a.a.a aVar;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            if (this.q == null) {
                this.q = new c.c.a.e.d.h.e.a.a.h(this);
            }
            aVar = this.q;
        }
        return aVar;
    }

    public C0385o u() {
        C0385o oVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new C0392w(this);
            }
            oVar = this.m;
        }
        return oVar;
    }

    public c.c.a.e.d.n.a.a v() {
        c.c.a.e.d.n.a.a aVar;
        if (this.s != null) {
            return this.s;
        }
        synchronized (this) {
            if (this.s == null) {
                this.s = new e(this);
            }
            aVar = this.s;
        }
        return aVar;
    }

    public L w() {
        L l2;
        if (this.f12198l != null) {
            return this.f12198l;
        }
        synchronized (this) {
            if (this.f12198l == null) {
                this.f12198l = new V(this);
            }
            l2 = this.f12198l;
        }
        return l2;
    }

    public j d() {
        return new j(this, new HashMap(0), new HashMap(0), "upgradable_app", "malicious_app", "comment", "commentAction", "downloaded_app", "downloadedVideo", "bookmark", "played_video");
    }

    public c a(C0354c cVar) {
        w wVar = new w(cVar, new a(this, 6), "cc4d00ae6875015c8ababcf95fe05987", "5e51d2d1c0d598d49298bd63a59887d8");
        c.b.a a2 = c.b.a(cVar.f3610b);
        a2.a(cVar.f3611c);
        a2.a((c.a) wVar);
        return cVar.f3609a.a(a2.a());
    }
}
