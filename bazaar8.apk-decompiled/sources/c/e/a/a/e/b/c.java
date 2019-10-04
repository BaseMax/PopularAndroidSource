package c.e.a.a.e.b;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: FlvExtractor */
public final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7636a = a.f7631a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f7637b = I.b("FLV");

    /* renamed from: c  reason: collision with root package name */
    public final v f7638c = new v(4);

    /* renamed from: d  reason: collision with root package name */
    public final v f7639d = new v(9);

    /* renamed from: e  reason: collision with root package name */
    public final v f7640e = new v(11);

    /* renamed from: f  reason: collision with root package name */
    public final v f7641f = new v();

    /* renamed from: g  reason: collision with root package name */
    public final d f7642g = new d();

    /* renamed from: h  reason: collision with root package name */
    public i f7643h;

    /* renamed from: i  reason: collision with root package name */
    public int f7644i = 1;

    /* renamed from: j  reason: collision with root package name */
    public long f7645j = -9223372036854775807L;

    /* renamed from: k  reason: collision with root package name */
    public int f7646k;

    /* renamed from: l  reason: collision with root package name */
    public int f7647l;
    public int m;
    public long n;
    public boolean o;
    public b p;
    public e q;

    public static /* synthetic */ g[] c() {
        return new g[]{new c()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        boolean z = false;
        hVar.a(this.f7638c.f9634a, 0, 3);
        this.f7638c.e(0);
        if (this.f7638c.x() != f7637b) {
            return false;
        }
        hVar.a(this.f7638c.f9634a, 0, 2);
        this.f7638c.e(0);
        if ((this.f7638c.A() & 250) != 0) {
            return false;
        }
        hVar.a(this.f7638c.f9634a, 0, 4);
        this.f7638c.e(0);
        int i2 = this.f7638c.i();
        hVar.b();
        hVar.a(i2);
        hVar.a(this.f7638c.f9634a, 0, 4);
        this.f7638c.e(0);
        if (this.f7638c.i() == 0) {
            z = true;
        }
        return z;
    }

    public final v b(h hVar) {
        if (this.m > this.f7641f.b()) {
            v vVar = this.f7641f;
            vVar.a(new byte[Math.max(vVar.b() * 2, this.m)], 0);
        } else {
            this.f7641f.e(0);
        }
        this.f7641f.d(this.m);
        hVar.readFully(this.f7641f.f9634a, 0, this.m);
        return this.f7641f;
    }

    public final boolean d(h hVar) {
        boolean z = true;
        if (this.f7647l == 8 && this.p != null) {
            b();
            this.p.a(b(hVar), this.f7645j + this.n);
        } else if (this.f7647l == 9 && this.q != null) {
            b();
            this.q.a(b(hVar), this.f7645j + this.n);
        } else if (this.f7647l != 18 || this.o) {
            hVar.c(this.m);
            z = false;
        } else {
            this.f7642g.a(b(hVar), this.n);
            long a2 = this.f7642g.a();
            if (a2 != -9223372036854775807L) {
                this.f7643h.a(new o.b(a2));
                this.o = true;
            }
        }
        this.f7646k = 4;
        this.f7644i = 2;
        return z;
    }

    public final boolean e(h hVar) {
        if (!hVar.a(this.f7640e.f9634a, 0, 11, true)) {
            return false;
        }
        this.f7640e.e(0);
        this.f7647l = this.f7640e.u();
        this.m = this.f7640e.x();
        this.n = (long) this.f7640e.x();
        this.n = (((long) (this.f7640e.u() << 24)) | this.n) * 1000;
        this.f7640e.f(3);
        this.f7644i = 4;
        return true;
    }

    public final void f(h hVar) {
        hVar.c(this.f7646k);
        this.f7646k = 0;
        this.f7644i = 3;
    }

    public final boolean c(h hVar) {
        boolean z = false;
        if (!hVar.a(this.f7639d.f9634a, 0, 9, true)) {
            return false;
        }
        this.f7639d.e(0);
        this.f7639d.f(4);
        int u = this.f7639d.u();
        boolean z2 = (u & 4) != 0;
        if ((u & 1) != 0) {
            z = true;
        }
        if (z2 && this.p == null) {
            this.p = new b(this.f7643h.a(8, 1));
        }
        if (z && this.q == null) {
            this.q = new e(this.f7643h.a(9, 2));
        }
        this.f7643h.a();
        this.f7646k = (this.f7639d.i() - 9) + 4;
        this.f7644i = 2;
        return true;
    }

    public final void b() {
        if (!this.o) {
            this.f7643h.a(new o.b(-9223372036854775807L));
            this.o = true;
        }
        if (this.f7645j == -9223372036854775807L) {
            this.f7645j = this.f7642g.a() == -9223372036854775807L ? -this.n : 0;
        }
    }

    public void a(i iVar) {
        this.f7643h = iVar;
    }

    public void a(long j2, long j3) {
        this.f7644i = 1;
        this.f7645j = -9223372036854775807L;
        this.f7646k = 0;
    }

    public int a(h hVar, n nVar) {
        while (true) {
            int i2 = this.f7644i;
            if (i2 != 1) {
                if (i2 == 2) {
                    f(hVar);
                } else if (i2 != 3) {
                    if (i2 != 4) {
                        throw new IllegalStateException();
                    } else if (d(hVar)) {
                        return 0;
                    }
                } else if (!e(hVar)) {
                    return -1;
                }
            } else if (!c(hVar)) {
                return -1;
            }
        }
    }
}
