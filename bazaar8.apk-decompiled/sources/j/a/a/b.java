package j.a.a;

import j.C;
import j.E;
import j.L;
import j.P;
import j.S;
import j.a.a;
import j.a.a.d;
import j.a.c.f;
import j.a.c.g;
import j.a.c.i;
import j.a.e;
import java.io.Closeable;
import java.io.IOException;
import k.s;
import k.y;
import k.z;
import okhttp3.Protocol;

/* compiled from: CacheInterceptor */
public final class b implements E {

    /* renamed from: a  reason: collision with root package name */
    public final j f15262a;

    public b(j jVar) {
        this.f15262a = jVar;
    }

    public static boolean b(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    public P a(E.a aVar) {
        j jVar = this.f15262a;
        P b2 = jVar != null ? jVar.b(aVar.e()) : null;
        d c2 = new d.a(System.currentTimeMillis(), aVar.e(), b2).c();
        L l2 = c2.f15263a;
        P p = c2.f15264b;
        j jVar2 = this.f15262a;
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
            P.a B = p.B();
            B.a(a(p));
            return B.a();
        } else {
            try {
                P a2 = aVar.a(l2);
                if (a2 == null && b2 != null) {
                }
                if (p != null) {
                    if (a2.v() == 304) {
                        P.a B2 = p.B();
                        B2.a(a(p.x(), a2.x()));
                        B2.b(a2.G());
                        B2.a(a2.E());
                        B2.a(a(p));
                        B2.c(a(a2));
                        P a3 = B2.a();
                        a2.s().close();
                        this.f15262a.a();
                        this.f15262a.a(p, a3);
                        return a3;
                    }
                    e.a((Closeable) p.s());
                }
                P.a B3 = a2.B();
                B3.a(a(p));
                B3.c(a(a2));
                P a4 = B3.a();
                if (this.f15262a != null) {
                    if (f.b(a4) && d.a(a4, l2)) {
                        return a(this.f15262a.a(a4), a4);
                    }
                    if (g.a(l2.e())) {
                        try {
                            this.f15262a.a(l2);
                        } catch (IOException unused) {
                        }
                    }
                }
                return a4;
            } finally {
                if (b2 != null) {
                    e.a((Closeable) b2.s());
                }
            }
        }
    }

    public static P a(P p) {
        if (p == null || p.s() == null) {
            return p;
        }
        P.a B = p.B();
        B.a((S) null);
        return B.a();
    }

    public final P a(c cVar, P p) {
        if (cVar == null) {
            return p;
        }
        y a2 = cVar.a();
        if (a2 == null) {
            return p;
        }
        a aVar = new a(this, p.s().w(), cVar, s.a(a2));
        String e2 = p.e("Content-Type");
        long u = p.s().u();
        P.a B = p.B();
        B.a((S) new i(e2, u, s.a((z) aVar)));
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
