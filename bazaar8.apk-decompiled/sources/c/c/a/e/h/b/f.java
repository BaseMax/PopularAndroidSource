package c.c.a.e.h.b;

import c.c.a.e.d.a.c;
import h.f.b.j;
import j.E;
import j.L;
import j.P;

/* compiled from: TokenInterceptor.kt */
public final class f implements E {

    /* renamed from: a  reason: collision with root package name */
    public final c f5520a;

    public f(c cVar) {
        j.b(cVar, "tokenRepository");
        this.f5520a = cVar;
    }

    public P a(E.a aVar) {
        j.b(aVar, "chain");
        L e2 = aVar.e();
        String a2 = this.f5520a.a();
        boolean c2 = this.f5520a.c();
        if (c2) {
            if (a2.length() == 0) {
                a2 = this.f5520a.e();
            }
        }
        j.a((Object) e2, "originalRequest");
        if (a(e2) || !c2) {
            P a3 = aVar.a(e2);
            j.a((Object) a3, "chain.proceed(originalRequest)");
            return a3;
        }
        L.a f2 = e2.f();
        f2.b("Authorization", "Bearer " + a2);
        f2.a(e2.e(), e2.a());
        P a4 = aVar.a(f2.a());
        j.a((Object) a4, "chain.proceed(requestBuilder.build())");
        return a4;
    }

    public final boolean a(L l2) {
        String a2 = l2.a("Authorization");
        return !(a2 == null || a2.length() == 0);
    }
}
