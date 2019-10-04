package c.c.a.h.b;

import c.c.a.e.d.h.c.a.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvidePostVideoReviewsServiceFactory */
public final class Fb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5907a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5908b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5909c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5910d;

    public Fb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5907a = mbVar;
        this.f5908b = aVar;
        this.f5909c = aVar2;
        this.f5910d = aVar3;
    }

    public static Fb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Fb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e q = mbVar.q(i2, cVar, aVar);
        h.a(q, "Cannot return null from a non-@Nullable @Provides method");
        return q;
    }

    public e get() {
        return b(this.f5907a, this.f5908b, this.f5909c, this.f5910d);
    }
}
