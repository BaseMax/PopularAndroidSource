package c.c.a.e.d.v;

import c.c.a.e.d.v.a.e;
import d.b.c;
import g.a.a;

/* compiled from: SubscriptionRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f5429a;

    public b(a<e> aVar) {
        this.f5429a = aVar;
    }

    public static b a(a<e> aVar) {
        return new b(aVar);
    }

    public static a b(a<e> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f5429a);
    }
}