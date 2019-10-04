package i.a.d;

import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.T;
import kotlin.Result;

/* compiled from: Cancellable.kt */
public final class a {
    public static final <R, T> void a(c<? super R, ? super b<? super T>, ? extends Object> cVar, R r, b<? super T> bVar) {
        j.b(cVar, "$this$startCoroutineCancellable");
        j.b(bVar, "completion");
        try {
            T.a(h.c.a.a.a(h.c.a.a.a(cVar, r, bVar)), h.f14579a);
        } catch (Throwable th) {
            Result.a aVar = Result.f15776a;
            Object a2 = e.a(th);
            Result.a(a2);
            bVar.b(a2);
        }
    }
}
