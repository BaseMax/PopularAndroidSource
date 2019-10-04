package c.c.a.e.h.b;

import c.c.a.e.d.a.c;
import h.f.b.j;
import j.C1136c;
import j.L;
import j.P;
import j.T;

/* compiled from: AuthenticatorInterceptor.kt */
public final class a implements C1136c {

    /* renamed from: a  reason: collision with root package name */
    public final c f5518a;

    public a(c cVar) {
        j.b(cVar, "tokenRepository");
        this.f5518a = cVar;
    }

    public L a(T t, P p) {
        j.b(p, "response");
        boolean z = true;
        if (this.f5518a.b().length() > 0) {
            String e2 = this.f5518a.e();
            if (e2.length() <= 0) {
                z = false;
            }
            if (z) {
                L.a f2 = p.F().f();
                f2.b("Authorization", "Bearer " + e2);
                return f2.a();
            }
        }
        return null;
    }
}
