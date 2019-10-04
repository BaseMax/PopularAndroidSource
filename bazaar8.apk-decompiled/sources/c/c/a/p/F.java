package c.c.a.p;

import c.c.a.e.d.m.d;
import d.b.c;
import g.a.a;

/* compiled from: SyncPurchasesWorker_AssistedFactory_Factory */
public final class F implements c<E> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f7143a;

    public F(a<d> aVar) {
        this.f7143a = aVar;
    }

    public static F a(a<d> aVar) {
        return new F(aVar);
    }

    public static E b(a<d> aVar) {
        return new E(aVar);
    }

    public E get() {
        return b(this.f7143a);
    }
}
