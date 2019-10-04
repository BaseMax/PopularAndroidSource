package c.c.a.h.b;

import c.c.a.e.d.h.d.a.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideEpisodeServiceFactory */
public final class Bb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5889a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5890b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5891c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5892d;

    public Bb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5889a = mbVar;
        this.f5890b = aVar;
        this.f5891c = aVar2;
        this.f5892d = aVar3;
    }

    public static Bb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Bb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e m = mbVar.m(i2, cVar, aVar);
        h.a(m, "Cannot return null from a non-@Nullable @Provides method");
        return m;
    }

    public e get() {
        return b(this.f5889a, this.f5890b, this.f5891c, this.f5892d);
    }
}
