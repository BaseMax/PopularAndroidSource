package androidx.work.impl;

import b.C.a.c;
import b.H.a.c.B;
import b.H.a.c.C0181b;
import b.H.a.c.C0183d;
import b.H.a.c.C0185f;
import b.H.a.c.D;
import b.H.a.c.i;
import b.H.a.c.k;
import b.H.a.c.m;
import b.H.a.c.p;
import b.H.a.c.z;
import b.z.C0354c;
import b.z.j;
import b.z.w;

public final class WorkDatabase_Impl extends WorkDatabase {
    public volatile p m;
    public volatile C0181b n;
    public volatile B o;
    public volatile C0185f p;
    public volatile k q;

    public C0181b p() {
        C0181b bVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new C0183d(this);
            }
            bVar = this.n;
        }
        return bVar;
    }

    public C0185f t() {
        C0185f fVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new i(this);
            }
            fVar = this.p;
        }
        return fVar;
    }

    public k u() {
        k kVar;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            if (this.q == null) {
                this.q = new m(this);
            }
            kVar = this.q;
        }
        return kVar;
    }

    public p v() {
        p pVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new z(this);
            }
            pVar = this.m;
        }
        return pVar;
    }

    public B w() {
        B b2;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new D(this);
            }
            b2 = this.o;
        }
        return b2;
    }

    public j d() {
        return new j(this, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName");
    }

    public c a(C0354c cVar) {
        w wVar = new w(cVar, new l(this, 5), "c84d23ade98552f1cec71088c1f0794c", "1db8206f0da6aa81bbdd2d99a82d9e14");
        c.b.a a2 = c.b.a(cVar.f3610b);
        a2.a(cVar.f3611c);
        a2.a((c.a) wVar);
        return cVar.f3609a.a(a2.a());
    }
}
