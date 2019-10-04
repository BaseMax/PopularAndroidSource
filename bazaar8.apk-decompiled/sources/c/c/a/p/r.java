package c.c.a.p;

import c.c.a.e.d.r.b.b;
import d.b.c;
import g.a.a;

/* compiled from: PostCommentWorker_AssistedFactory_Factory */
public final class r implements c<q> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7175a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7176b;

    public r(a<b> aVar, a<I> aVar2) {
        this.f7175a = aVar;
        this.f7176b = aVar2;
    }

    public static r a(a<b> aVar, a<I> aVar2) {
        return new r(aVar, aVar2);
    }

    public static q b(a<b> aVar, a<I> aVar2) {
        return new q(aVar, aVar2);
    }

    public q get() {
        return b(this.f7175a, this.f7176b);
    }
}
