package c.c.a.e.d.b;

import d.b.c;
import g.a.a;

/* compiled from: ScheduleUpdateRepository_Factory */
public final class F implements c<E> {

    /* renamed from: a  reason: collision with root package name */
    public final a<W> f4938a;

    public F(a<W> aVar) {
        this.f4938a = aVar;
    }

    public static F a(a<W> aVar) {
        return new F(aVar);
    }

    public static E b(a<W> aVar) {
        return new E(aVar.get());
    }

    public E get() {
        return b(this.f4938a);
    }
}
