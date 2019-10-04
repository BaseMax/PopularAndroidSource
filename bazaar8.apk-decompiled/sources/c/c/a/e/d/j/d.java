package c.c.a.e.d.j;

import d.b.c;
import g.a.a;

/* compiled from: FehrestRepository_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<a> f5222a;

    public d(a<a> aVar) {
        this.f5222a = aVar;
    }

    public static d a(a<a> aVar) {
        return new d(aVar);
    }

    public static c b(a<a> aVar) {
        return new c(aVar.get());
    }

    public c get() {
        return b(this.f5222a);
    }
}
