package c.c.a.h.b;

import c.c.a.e.d.b.fa;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideUpgradableServiceFactory */
public final class Ob implements c<fa> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5940a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5941b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5942c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5943d;

    public Ob(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5940a = mbVar;
        this.f5941b = aVar;
        this.f5942c = aVar2;
        this.f5943d = aVar3;
    }

    public static Ob a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Ob(mbVar, aVar, aVar2, aVar3);
    }

    public static fa b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static fa a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        fa y = mbVar.y(i2, cVar, aVar);
        h.a(y, "Cannot return null from a non-@Nullable @Provides method");
        return y;
    }

    public fa get() {
        return b(this.f5940a, this.f5941b, this.f5942c, this.f5943d);
    }
}
