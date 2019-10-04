package c.c.a.e.h.b;

import h.f.b.j;
import j.E;
import j.P;
import java.io.IOException;

/* compiled from: NetExceptionHandlerInterceptor.kt */
public final class c implements E {
    public P a(E.a aVar) {
        j.b(aVar, "chain");
        try {
            P a2 = aVar.a(aVar.e());
            j.a((Object) a2, "chain.proceed(chain.request())");
            return a2;
        } catch (Exception e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
