package b.z;

import h.c.c;
import h.c.e;
import h.f.b.f;
import h.f.b.j;

/* compiled from: RoomDatabase.kt */
public final class D implements e.b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3577a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final c f3578b;

    /* compiled from: RoomDatabase.kt */
    public static final class a implements e.c<D> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public final c a() {
        return this.f3578b;
    }

    public <R> R fold(R r, h.f.a.c<? super R, ? super e.b, ? extends R> cVar) {
        j.b(cVar, "operation");
        return e.b.a.a(this, r, cVar);
    }

    public <E extends e.b> E get(e.c<E> cVar) {
        j.b(cVar, "key");
        return e.b.a.a((e.b) this, cVar);
    }

    public e.c<D> getKey() {
        return f3577a;
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
