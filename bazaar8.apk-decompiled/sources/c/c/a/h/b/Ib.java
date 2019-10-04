package c.c.a.h.b;

import c.c.a.e.d.s.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideSearchPredictionServiceFactory */
public final class Ib implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5920a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5921b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5922c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5923d;

    public Ib(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5920a = mbVar;
        this.f5921b = aVar;
        this.f5922c = aVar2;
        this.f5923d = aVar3;
    }

    public static Ib a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Ib(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e t = mbVar.t(i2, cVar, aVar);
        h.a(t, "Cannot return null from a non-@Nullable @Provides method");
        return t;
    }

    public e get() {
        return b(this.f5920a, this.f5921b, this.f5922c, this.f5923d);
    }
}
