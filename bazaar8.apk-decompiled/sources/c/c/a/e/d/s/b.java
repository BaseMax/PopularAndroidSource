package c.c.a.e.d.s;

import c.c.a.e.b.e;
import d.b.c;
import g.a.a;

/* compiled from: SearchPredictionRemoteDataSource_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f5411a;

    /* renamed from: b  reason: collision with root package name */
    public final a<e> f5412b;

    public b(a<e> aVar, a<e> aVar2) {
        this.f5411a = aVar;
        this.f5412b = aVar2;
    }

    public static b a(a<e> aVar, a<e> aVar2) {
        return new b(aVar, aVar2);
    }

    public static a b(a<e> aVar, a<e> aVar2) {
        return new a(aVar.get(), aVar2.get());
    }

    public a get() {
        return b(this.f5411a, this.f5412b);
    }
}
