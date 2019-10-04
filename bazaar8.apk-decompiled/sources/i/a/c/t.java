package i.a.c;

import h.c.b;
import h.f.b.j;
import i.a.C1088a;

/* compiled from: Scopes.kt */
public final class t {
    public static final Throwable a(C1088a<?> aVar, Throwable th) {
        j.b(aVar, "$this$tryRecover");
        j.b(th, "exception");
        if (!(aVar instanceof s)) {
            aVar = null;
        }
        s sVar = (s) aVar;
        if (sVar != null) {
            b<T> bVar = sVar.f14779d;
            if (bVar != null) {
                return u.a(th, (b<?>) bVar);
            }
        }
        return th;
    }
}
