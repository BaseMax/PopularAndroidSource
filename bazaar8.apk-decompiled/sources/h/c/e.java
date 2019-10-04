package h.c;

import h.f.b.j;
import kotlin.TypeCastException;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: CoroutineContext.kt */
public interface e {

    /* compiled from: CoroutineContext.kt */
    public static final class a {
        public static e a(e eVar, e eVar2) {
            j.b(eVar2, "context");
            return eVar2 == EmptyCoroutineContext.f15784a ? eVar : (e) eVar2.fold(eVar, CoroutineContext$plus$1.f15783a);
        }
    }

    /* compiled from: CoroutineContext.kt */
    public interface b extends e {

        /* compiled from: CoroutineContext.kt */
        public static final class a {
            public static <E extends b> E a(b bVar, c<E> cVar) {
                j.b(cVar, "key");
                if (!j.a((Object) bVar.getKey(), (Object) cVar)) {
                    return null;
                }
                if (bVar != null) {
                    return bVar;
                }
                throw new TypeCastException("null cannot be cast to non-null type E");
            }

            public static e a(b bVar, e eVar) {
                j.b(eVar, "context");
                return a.a(bVar, eVar);
            }

            public static e b(b bVar, c<?> cVar) {
                j.b(cVar, "key");
                return j.a((Object) bVar.getKey(), (Object) cVar) ? EmptyCoroutineContext.f15784a : bVar;
            }

            public static <R> R a(b bVar, R r, h.f.a.c<? super R, ? super b, ? extends R> cVar) {
                j.b(cVar, "operation");
                return cVar.b(r, bVar);
            }
        }

        <E extends b> E get(c<E> cVar);

        c<?> getKey();
    }

    /* compiled from: CoroutineContext.kt */
    public interface c<E extends b> {
    }

    <R> R fold(R r, h.f.a.c<? super R, ? super b, ? extends R> cVar);

    <E extends b> E get(c<E> cVar);

    e minusKey(c<?> cVar);

    e plus(e eVar);
}
