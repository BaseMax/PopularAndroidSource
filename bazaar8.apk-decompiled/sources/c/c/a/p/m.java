package c.c.a.p;

import c.c.a.e.d.r.a.b;
import d.b.c;
import g.a.a;

/* compiled from: PendingCommentWorker_AssistedFactory_Factory */
public final class m implements c<l> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7170a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.r.b.b> f7171b;

    public m(a<b> aVar, a<c.c.a.e.d.r.b.b> aVar2) {
        this.f7170a = aVar;
        this.f7171b = aVar2;
    }

    public static m a(a<b> aVar, a<c.c.a.e.d.r.b.b> aVar2) {
        return new m(aVar, aVar2);
    }

    public static l b(a<b> aVar, a<c.c.a.e.d.r.b.b> aVar2) {
        return new l(aVar, aVar2);
    }

    public l get() {
        return b(this.f7170a, this.f7171b);
    }
}
