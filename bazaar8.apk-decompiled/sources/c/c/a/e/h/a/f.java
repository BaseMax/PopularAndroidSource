package c.c.a.e.h.a;

import j.C;
import j.E;
import j.L;
import j.P;
import j.S;
import j.a.a;
import j.a.a.c;
import j.a.a.d;
import j.a.a.j;
import j.a.c.i;
import j.a.e;
import java.io.Closeable;
import k.s;
import k.y;
import k.z;
import okhttp3.Protocol;

/* compiled from: CacheInterceptor */
public class f implements E {

    /* renamed from: a  reason: collision with root package name */
    public final j f5517a;

    public f(j jVar) {
        this.f5517a = jVar;
    }

    public static boolean b(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    public P a(E.a aVar) {
        j jVar = this.f5517a;
        P b2 = jVar != null ? jVar.b(aVar.e()) : null;
        d c2 = new d.a(System.currentTimeMillis(), aVar.e(), b2).c();
        L l2 = c2.f15263a;
        P p = c2.f15264b;
        j jVar2 = this.f5517a;
        if (jVar2 != null) {
            jVar2.a(c2);
        }
        if (b2 != null && p == null) {
            e.a((Closeable) b2.s());
        }
        if (l2 == null && p == null) {
            P.a aVar2 = new P.a();
            aVar2.a(aVar.e());
            aVar2.a(Protocol.HTTP_1_1);
            aVar2.a(504);
            aVar2.a("Unsatisfiable Request (only-if-cached)");
            aVar2.a(e.f15411c);
            aVar2.b(-1);
            aVar2.a(System.currentTimeMillis());
            return aVar2.a();
        } else if (l2 == null) {
            return b2;
        } else {
            try {
                P a2 = aVar.a(l2);
                if (a2 == null && b2 != null) {
                }
                if (p != null) {
                    if (a2.v() == 304) {
                        P.a B = p.B();
                        B.a(a(p.x(), a2.x()));
                        B.b(a2.G());
                        B.a(a2.E());
                        B.a(p);
                        B.c(a2);
                        P a3 = B.a();
                        if (a2.s() != null) {
                            a2.s().close();
                        }
                        j jVar3 = this.f5517a;
                        if (jVar3 != null) {
                            jVar3.a();
                            this.f5517a.a(p, a3);
                        }
                        return a3;
                    }
                    e.a((Closeable) p.s());
                }
                P.a B2 = a2.B();
                B2.a(a2.s());
                P a4 = B2.a();
                if (this.f5517a != null && j.a.c.f.b(a4) && d.a(a4, l2)) {
                    a4 = a(this.f5517a.a(a4), a4);
                }
                return a4;
            } finally {
                if (b2 != null) {
                    e.a((Closeable) b2.s());
                }
            }
        }
    }

    public final P a(c cVar, P p) {
        if (cVar == null) {
            return p;
        }
        y a2 = cVar.a();
        if (a2 == null) {
            return p;
        }
        e eVar = new e(this, p.s().w(), cVar, s.a(a2));
        String e2 = p.e("Content-Type");
        long u = p.s().u();
        P.a B = p.B();
        B.a((S) new i(e2, u, s.a((z) eVar)));
        return B.a();
    }

    public static C a(C c2, C c3) {
        C.a aVar = new C.a();
        int b2 = c2.b();
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = c2.a(i2);
            String b3 = c2.b(i2);
            if ((!"Warning".equalsIgnoreCase(a2) || !b3.startsWith("1")) && (a(a2) || !b(a2) || c3.b(a2) == null)) {
                a.f15256a.a(aVar, a2, b3);
            }
        }
        int b4 = c3.b();
        for (int i3 = 0; i3 < b4; i3++) {
            String a3 = c3.a(i3);
            if (!a(a3) && b(a3)) {
                a.f15256a.a(aVar, a3, c3.b(i3));
            }
        }
        return aVar.a();
    }

    public static boolean a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }
}
