package i.a;

import h.c.b;
import h.c.b.a.f;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.c.s;
import i.a.c.z;
import i.a.d.a;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;

/* renamed from: i.a.g  reason: case insensitive filesystem */
/* compiled from: Builders.common.kt */
public final /* synthetic */ class C1103g {
    public static /* synthetic */ N a(H h2, e eVar, CoroutineStart coroutineStart, c cVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            eVar = EmptyCoroutineContext.f15784a;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return C1099e.a(h2, eVar, coroutineStart, cVar);
    }

    public static /* synthetic */ C1125ra b(H h2, e eVar, CoroutineStart coroutineStart, c cVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            eVar = EmptyCoroutineContext.f15784a;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return C1099e.b(h2, eVar, coroutineStart, cVar);
    }

    public static final <T> N<T> a(H h2, e eVar, CoroutineStart coroutineStart, c<? super H, ? super b<? super T>, ? extends Object> cVar) {
        O o;
        j.b(h2, "$this$async");
        j.b(eVar, "context");
        j.b(coroutineStart, "start");
        j.b(cVar, "block");
        e a2 = B.a(h2, eVar);
        if (coroutineStart.f()) {
            o = new Aa(a2, cVar);
        } else {
            o = new O(a2, true);
        }
        o.a(coroutineStart, o, cVar);
        return o;
    }

    public static final C1125ra b(H h2, e eVar, CoroutineStart coroutineStart, c<? super H, ? super b<? super h>, ? extends Object> cVar) {
        C1088a aVar;
        j.b(h2, "$this$launch");
        j.b(eVar, "context");
        j.b(coroutineStart, "start");
        j.b(cVar, "block");
        e a2 = B.a(h2, eVar);
        if (coroutineStart.f()) {
            aVar = new Ba(a2, cVar);
        } else {
            aVar = new Ka(a2, true);
        }
        aVar.a(coroutineStart, aVar, cVar);
        return aVar;
    }

    /* JADX INFO: finally extract failed */
    public static final <T> Object a(e eVar, c<? super H, ? super b<? super T>, ? extends Object> cVar, b<? super T> bVar) {
        Object obj;
        e b2 = bVar.b();
        e plus = b2.plus(eVar);
        Ra.a(plus);
        if (plus == b2) {
            s sVar = new s(plus, bVar);
            obj = i.a.d.b.a(sVar, sVar, cVar);
        } else if (j.a((Object) (h.c.c) plus.get(h.c.c.f14536c), (Object) (h.c.c) b2.get(h.c.c.f14536c))) {
            Qa qa = new Qa(plus, bVar);
            Object b3 = z.b(plus, null);
            try {
                Object a2 = i.a.d.b.a(qa, qa, cVar);
                z.a(plus, b3);
                obj = a2;
            } catch (Throwable th) {
                z.a(plus, b3);
                throw th;
            }
        } else {
            S s = new S(plus, bVar);
            s.o();
            a.a(cVar, s, s);
            obj = s.q();
        }
        if (obj == h.c.a.b.a()) {
            f.c(bVar);
        }
        return obj;
    }
}
