package c.c.a.e.d.g;

import d.b.c;
import g.a.a;

/* compiled from: CategoryRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.g.a.c> f5077a;

    public b(a<c.c.a.e.d.g.a.c> aVar) {
        this.f5077a = aVar;
    }

    public static b a(a<c.c.a.e.d.g.a.c> aVar) {
        return new b(aVar);
    }

    public static a b(a<c.c.a.e.d.g.a.c> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f5077a);
    }
}
