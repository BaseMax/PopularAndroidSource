package j.a.c;

import j.E;
import j.L;
import j.P;
import j.a.b.c;
import j.a.b.f;
import j.a.e;
import java.net.ProtocolException;
import k.g;
import k.h;
import k.j;
import k.s;
import k.y;

/* compiled from: CallServerInterceptor */
public final class b implements E {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f15352a;

    /* compiled from: CallServerInterceptor */
    static final class a extends j {

        /* renamed from: b  reason: collision with root package name */
        public long f15353b;

        public a(y yVar) {
            super(yVar);
        }

        public void a(g gVar, long j2) {
            super.a(gVar, j2);
            this.f15353b += j2;
        }
    }

    public b(boolean z) {
        this.f15352a = z;
    }

    public P a(E.a aVar) {
        P p;
        h hVar = (h) aVar;
        c h2 = hVar.h();
        f i2 = hVar.i();
        c cVar = (c) hVar.c();
        L e2 = hVar.e();
        long currentTimeMillis = System.currentTimeMillis();
        hVar.g().d(hVar.f());
        h2.a(e2);
        hVar.g().a(hVar.f(), e2);
        P.a aVar2 = null;
        if (g.b(e2.e()) && e2.a() != null) {
            if ("100-continue".equalsIgnoreCase(e2.a("Expect"))) {
                h2.b();
                hVar.g().f(hVar.f());
                aVar2 = h2.a(true);
            }
            if (aVar2 == null) {
                hVar.g().c(hVar.f());
                a aVar3 = new a(h2.a(e2, e2.a().a()));
                h a2 = s.a((y) aVar3);
                e2.a().a(a2);
                a2.close();
                hVar.g().a(hVar.f(), aVar3.f15353b);
            } else if (!cVar.e()) {
                i2.e();
            }
        }
        h2.a();
        if (aVar2 == null) {
            hVar.g().f(hVar.f());
            aVar2 = h2.a(false);
        }
        aVar2.a(e2);
        aVar2.a(i2.c().d());
        aVar2.b(currentTimeMillis);
        aVar2.a(System.currentTimeMillis());
        P a3 = aVar2.a();
        int v = a3.v();
        if (v == 100) {
            P.a a4 = h2.a(false);
            a4.a(e2);
            a4.a(i2.c().d());
            a4.b(currentTimeMillis);
            a4.a(System.currentTimeMillis());
            a3 = a4.a();
            v = a3.v();
        }
        hVar.g().a(hVar.f(), a3);
        if (!this.f15352a || v != 101) {
            P.a B = a3.B();
            B.a(h2.a(a3));
            p = B.a();
        } else {
            P.a B2 = a3.B();
            B2.a(e.f15411c);
            p = B2.a();
        }
        if ("close".equalsIgnoreCase(p.F().a("Connection")) || "close".equalsIgnoreCase(p.e("Connection"))) {
            i2.e();
        }
        if ((v != 204 && v != 205) || p.s().u() <= 0) {
            return p;
        }
        throw new ProtocolException("HTTP " + v + " had non-zero Content-Length: " + p.s().u());
    }
}
