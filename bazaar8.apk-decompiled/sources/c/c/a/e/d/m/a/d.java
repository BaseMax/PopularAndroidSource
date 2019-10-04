package c.c.a.e.d.m.a;

import c.c.a.e.d.b.I;
import d.b.c;
import g.a.a;

/* compiled from: PaymentLocalDataSource_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<f> f5249a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5250b;

    public d(a<f> aVar, a<I> aVar2) {
        this.f5249a = aVar;
        this.f5250b = aVar2;
    }

    public static d a(a<f> aVar, a<I> aVar2) {
        return new d(aVar, aVar2);
    }

    public static c b(a<f> aVar, a<I> aVar2) {
        return new c(aVar.get(), aVar2.get());
    }

    public c get() {
        return b(this.f5249a, this.f5250b);
    }
}
