package c.c.a.h.b;

import b.r.E;
import d.b.c;
import g.a.a;
import java.util.Map;

/* compiled from: ViewModelFactory_Factory */
public final class Wb implements c<Vb> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Map<Class<? extends E>, a<E>>> f5953a;

    public Wb(a<Map<Class<? extends E>, a<E>>> aVar) {
        this.f5953a = aVar;
    }

    public static Wb a(a<Map<Class<? extends E>, a<E>>> aVar) {
        return new Wb(aVar);
    }

    public static Vb b(a<Map<Class<? extends E>, a<E>>> aVar) {
        return new Vb(aVar.get());
    }

    public Vb get() {
        return b(this.f5953a);
    }
}
