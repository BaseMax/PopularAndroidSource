package c.c.a.e.d.h.d.a;

import d.b.c;
import g.a.a;

/* compiled from: EpisodeDetailRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.h.d.a.a.a> f5096a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.h.c.b.b> f5097b;

    public b(a<c.c.a.e.d.h.d.a.a.a> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        this.f5096a = aVar;
        this.f5097b = aVar2;
    }

    public static b a(a<c.c.a.e.d.h.d.a.a.a> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        return new b(aVar, aVar2);
    }

    public static a b(a<c.c.a.e.d.h.d.a.a.a> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        return new a(aVar.get(), aVar2.get());
    }

    public a get() {
        return b(this.f5096a, this.f5097b);
    }
}
