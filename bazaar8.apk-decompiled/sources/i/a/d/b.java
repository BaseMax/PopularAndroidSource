package i.a.d;

import h.c.b.a.f;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.f.b.o;
import i.a.C1088a;
import i.a.C1129v;
import i.a.c.t;
import i.a.c.z;
import i.a.za;
import kotlin.Result;

/* compiled from: Undispatched.kt */
public final class b {
    public static final <T, R> Object a(C1088a<? super T> aVar, R r, c<? super R, ? super h.c.b<? super T>, ? extends Object> cVar) {
        Object obj;
        j.b(aVar, "$this$startUndispatchedOrReturn");
        j.b(cVar, "block");
        aVar.o();
        try {
            o.a((Object) cVar, 2);
            obj = cVar.b(r, aVar);
        } catch (Throwable th) {
            obj = new C1129v(th, false, 2, null);
        }
        if (obj == h.c.a.b.a()) {
            return h.c.a.b.a();
        }
        if (!aVar.b(obj, 4)) {
            return h.c.a.b.a();
        }
        Object h2 = aVar.h();
        if (!(h2 instanceof C1129v)) {
            return za.b(h2);
        }
        throw t.a(aVar, ((C1129v) h2).f14867b);
    }

    public static final <R, T> void a(c<? super R, ? super h.c.b<? super T>, ? extends Object> cVar, R r, h.c.b<? super T> bVar) {
        e b2;
        Object b3;
        j.b(cVar, "$this$startCoroutineUndispatched");
        j.b(bVar, "completion");
        f.a(bVar);
        try {
            b2 = bVar.b();
            b3 = z.b(b2, null);
            o.a((Object) cVar, 2);
            Object b4 = cVar.b(r, bVar);
            z.a(b2, b3);
            if (b4 != h.c.a.b.a()) {
                Result.a aVar = Result.f15776a;
                Result.a(b4);
                bVar.b(b4);
            }
        } catch (Throwable th) {
            Result.a aVar2 = Result.f15776a;
            Object a2 = h.e.a(th);
            Result.a(a2);
            bVar.b(a2);
        }
    }
}
