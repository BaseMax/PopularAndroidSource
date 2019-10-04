package c.c.a.e.d.a;

import c.c.a.e.d.a.b.e;
import d.b.c;
import g.a.a;

/* compiled from: TokenRepository_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a.c> f4931a;

    /* renamed from: b  reason: collision with root package name */
    public final a<e> f4932b;

    public d(a<c.c.a.e.d.a.a.c> aVar, a<e> aVar2) {
        this.f4931a = aVar;
        this.f4932b = aVar2;
    }

    public static d a(a<c.c.a.e.d.a.a.c> aVar, a<e> aVar2) {
        return new d(aVar, aVar2);
    }

    public static c b(a<c.c.a.e.d.a.a.c> aVar, a<e> aVar2) {
        return new c(aVar.get(), aVar2.get());
    }

    public c get() {
        return b(this.f4931a, this.f4932b);
    }
}
