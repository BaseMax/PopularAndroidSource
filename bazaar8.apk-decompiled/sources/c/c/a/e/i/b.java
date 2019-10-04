package c.c.a.e.i;

import c.c.a.e.d.b.I;
import d.b.c;
import g.a.a;

/* compiled from: PlaceLocalStorageDataSource_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<I> f5536a;

    public b(a<I> aVar) {
        this.f5536a = aVar;
    }

    public static b a(a<I> aVar) {
        return new b(aVar);
    }

    public static a b(a<I> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f5536a);
    }
}
