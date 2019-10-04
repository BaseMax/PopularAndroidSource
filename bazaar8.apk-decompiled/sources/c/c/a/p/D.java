package c.c.a.p;

import c.c.a.e.d.d.b;
import d.b.c;
import g.a.a;

/* compiled from: SyncBookmarkWorker_AssistedFactory_Factory */
public final class D implements c<C> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7141a;

    public D(a<b> aVar) {
        this.f7141a = aVar;
    }

    public static D a(a<b> aVar) {
        return new D(aVar);
    }

    public static C b(a<b> aVar) {
        return new C(aVar);
    }

    public C get() {
        return b(this.f7141a);
    }
}
