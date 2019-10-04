package kotlin.coroutines;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: CoroutineContextImpl.kt */
public final class EmptyCoroutineContext implements e, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final EmptyCoroutineContext f15784a = new EmptyCoroutineContext();
    public static final long serialVersionUID = 0;

    private final Object readResolve() {
        return f15784a;
    }

    public <R> R fold(R r, c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return r;
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    public e minusKey(e.c<?> cVar) {
        j.b(cVar, "key");
        return this;
    }

    public e plus(e eVar) {
        j.b(eVar, "context");
        return eVar;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
