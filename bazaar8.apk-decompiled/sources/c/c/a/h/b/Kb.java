package c.c.a.h.b;

import c.c.a.e.d.t.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideSeasonEpisodeServiceFactory */
public final class Kb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5928a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5929b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5930c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5931d;

    public Kb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5928a = mbVar;
        this.f5929b = aVar;
        this.f5930c = aVar2;
        this.f5931d = aVar3;
    }

    public static Kb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Kb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e v = mbVar.v(i2, cVar, aVar);
        h.a(v, "Cannot return null from a non-@Nullable @Provides method");
        return v;
    }

    public e get() {
        return b(this.f5928a, this.f5929b, this.f5930c, this.f5931d);
    }
}
