package c.c.a.h.b;

import c.c.a.e.d.c.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.qb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideAppDetailServiceFactory */
public final class C0637qb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6007a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6008b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6009c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6010d;

    public C0637qb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6007a = mbVar;
        this.f6008b = aVar;
        this.f6009c = aVar2;
        this.f6010d = aVar3;
    }

    public static C0637qb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0637qb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e c2 = mbVar.c(i2, cVar, aVar);
        h.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    public e get() {
        return b(this.f6007a, this.f6008b, this.f6009c, this.f6010d);
    }
}
