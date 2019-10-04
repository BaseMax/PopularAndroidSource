package i.a;

import h.c.e;
import h.f.a.c;
import h.f.b.j;

/* compiled from: ThreadContextElement.kt */
public interface La<S> extends e.b {

    /* compiled from: ThreadContextElement.kt */
    public static final class a {
        public static <S, E extends e.b> E a(La<S> la, e.c<E> cVar) {
            j.b(cVar, "key");
            return e.b.a.a((e.b) la, cVar);
        }

        public static <S> e a(La<S> la, e eVar) {
            j.b(eVar, "context");
            return e.b.a.a((e.b) la, eVar);
        }

        public static <S, R> R a(La<S> la, R r, c<? super R, ? super e.b, ? extends R> cVar) {
            j.b(cVar, "operation");
            return e.b.a.a(la, r, cVar);
        }

        public static <S> e b(La<S> la, e.c<?> cVar) {
            j.b(cVar, "key");
            return e.b.a.b(la, cVar);
        }
    }

    S a(e eVar);

    void a(e eVar, S s);
}
