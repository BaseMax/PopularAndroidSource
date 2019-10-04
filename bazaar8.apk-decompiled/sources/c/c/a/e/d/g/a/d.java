package c.c.a.e.d.g.a;

import d.b.c;
import g.a.a;

/* compiled from: CategoryRemoteDataSource_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<f> f5076a;

    public d(a<f> aVar) {
        this.f5076a = aVar;
    }

    public static d a(a<f> aVar) {
        return new d(aVar);
    }

    public static c b(a<f> aVar) {
        return new c(aVar.get());
    }

    public c get() {
        return b(this.f5076a);
    }
}
