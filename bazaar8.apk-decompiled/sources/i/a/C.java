package i.a;

import h.c.a;
import h.c.b;
import h.c.c;
import h.c.e;
import h.f.b.j;

/* compiled from: CoroutineDispatcher.kt */
public abstract class C extends a implements c {
    public C() {
        super(c.f14536c);
    }

    public abstract void a(e eVar, Runnable runnable);

    public void b(b<?> bVar) {
        j.b(bVar, "continuation");
        c.a.a((c) this, bVar);
    }

    public boolean b(e eVar) {
        j.b(eVar, "context");
        return true;
    }

    public final <T> b<T> c(b<? super T> bVar) {
        j.b(bVar, "continuation");
        return new Q(this, bVar);
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return c.a.a((c) this, cVar);
    }

    public e minusKey(e.c<?> cVar) {
        j.b(cVar, "key");
        return c.a.b(this, cVar);
    }

    public String toString() {
        return L.a((Object) this) + '@' + L.b(this);
    }
}
