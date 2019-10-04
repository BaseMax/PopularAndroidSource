package h.c;

import h.c.e;
import h.f.a.c;
import h.f.b.j;

/* compiled from: CoroutineContextImpl.kt */
public abstract class a implements e.b {
    public final e.c<?> key;

    public a(e.c<?> cVar) {
        j.b(cVar, "key");
        this.key = cVar;
    }

    public <R> R fold(R r, c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return e.b.a.a(this, r, cVar);
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return e.b.a.a((e.b) this, cVar);
    }

    public e.c<?> getKey() {
        return this.key;
    }

    public e minusKey(e.c<?> cVar) {
        j.b(cVar, "key");
        return e.b.a.b(this, cVar);
    }

    public e plus(e eVar) {
        j.b(eVar, "context");
        return e.b.a.a((e.b) this, eVar);
    }
}
