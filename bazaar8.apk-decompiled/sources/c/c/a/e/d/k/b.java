package c.c.a.e.d.k;

import d.b.c;
import g.a.a;

/* compiled from: InlineRemoteDataSource_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f5224a;

    public b(a<e> aVar) {
        this.f5224a = aVar;
    }

    public static b a(a<e> aVar) {
        return new b(aVar);
    }

    public static a b(a<e> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f5224a);
    }
}
