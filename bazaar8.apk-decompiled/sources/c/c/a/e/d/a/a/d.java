package c.c.a.e.d.a.a;

import c.c.a.e.d.b.I;
import d.b.c;
import g.a.a;

/* compiled from: TokenLocalDataSource_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<I> f4918a;

    public d(a<I> aVar) {
        this.f4918a = aVar;
    }

    public static d a(a<I> aVar) {
        return new d(aVar);
    }

    public static c b(a<I> aVar) {
        return new c(aVar.get());
    }

    public c get() {
        return b(this.f4918a);
    }
}
