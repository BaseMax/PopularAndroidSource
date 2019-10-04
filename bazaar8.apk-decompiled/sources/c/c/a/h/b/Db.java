package c.c.a.h.b;

import c.c.a.e.d.k.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideInlineServiceFactory */
public final class Db implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5897a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5898b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5899c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5900d;

    public Db(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5897a = mbVar;
        this.f5898b = aVar;
        this.f5899c = aVar2;
        this.f5900d = aVar3;
    }

    public static Db a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Db(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e o = mbVar.o(i2, cVar, aVar);
        h.a(o, "Cannot return null from a non-@Nullable @Provides method");
        return o;
    }

    public e get() {
        return b(this.f5897a, this.f5898b, this.f5899c, this.f5900d);
    }
}
