package c.c.a.e.i;

import d.b.c;
import g.a.a;

/* compiled from: PlaceRepository_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.e.c> f5541a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.e.a> f5542b;

    /* renamed from: c  reason: collision with root package name */
    public final a<a> f5543c;

    /* renamed from: d  reason: collision with root package name */
    public final a<Long> f5544d;

    public d(a<c.c.a.e.e.c> aVar, a<c.c.a.e.e.a> aVar2, a<a> aVar3, a<Long> aVar4) {
        this.f5541a = aVar;
        this.f5542b = aVar2;
        this.f5543c = aVar3;
        this.f5544d = aVar4;
    }

    public static d a(a<c.c.a.e.e.c> aVar, a<c.c.a.e.e.a> aVar2, a<a> aVar3, a<Long> aVar4) {
        return new d(aVar, aVar2, aVar3, aVar4);
    }

    public static c b(a<c.c.a.e.e.c> aVar, a<c.c.a.e.e.a> aVar2, a<a> aVar3, a<Long> aVar4) {
        c cVar = new c(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get().longValue());
        return cVar;
    }

    public c get() {
        return b(this.f5541a, this.f5542b, this.f5543c, this.f5544d);
    }
}
