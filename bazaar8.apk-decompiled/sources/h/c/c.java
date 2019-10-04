package h.c;

import h.c.e;
import h.f.b.j;
import kotlin.TypeCastException;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: ContinuationInterceptor.kt */
public interface c extends e.b {

    /* renamed from: c  reason: collision with root package name */
    public static final b f14536c = b.f14537a;

    /* compiled from: ContinuationInterceptor.kt */
    public static final class a {
        public static <E extends e.b> E a(c cVar, e.c<E> cVar2) {
            j.b(cVar2, "key");
            if (cVar2 != c.f14536c) {
                return null;
            }
            if (cVar != null) {
                return cVar;
            }
            throw new TypeCastException("null cannot be cast to non-null type E");
        }

        public static void a(c cVar, b<?> bVar) {
            j.b(bVar, "continuation");
        }

        public static e b(c cVar, e.c<?> cVar2) {
            j.b(cVar2, "key");
            return cVar2 == c.f14536c ? EmptyCoroutineContext.f15784a : cVar;
        }
    }

    /* compiled from: ContinuationInterceptor.kt */
    public static final class b implements e.c<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ b f14537a = new b();
    }

    void b(b<?> bVar);

    <T> b<T> c(b<? super T> bVar);
}
