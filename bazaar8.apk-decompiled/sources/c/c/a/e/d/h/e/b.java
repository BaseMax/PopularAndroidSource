package c.c.a.e.d.h.e;

import c.c.a.e.d.h.e.b.k;
import d.b.c;
import g.a.a;

/* compiled from: VideoDetailRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<k> f5143a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.h.c.b.b> f5144b;

    public b(a<k> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        this.f5143a = aVar;
        this.f5144b = aVar2;
    }

    public static b a(a<k> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        return new b(aVar, aVar2);
    }

    public static a b(a<k> aVar, a<c.c.a.e.d.h.c.b.b> aVar2) {
        return new a(aVar.get(), aVar2.get());
    }

    public a get() {
        return b(this.f5143a, this.f5144b);
    }
}
