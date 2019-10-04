package c.c.a.h.b;

import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.ob  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideAccountServiceFactory */
public final class C0631ob implements c<c.c.a.e.d.a.b.c> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5995a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5996b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5997c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5998d;

    public C0631ob(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5995a = mbVar;
        this.f5996b = aVar;
        this.f5997c = aVar2;
        this.f5998d = aVar3;
    }

    public static C0631ob a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0631ob(mbVar, aVar, aVar2, aVar3);
    }

    public static c.c.a.e.d.a.b.c b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static c.c.a.e.d.a.b.c a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        c.c.a.e.d.a.b.c a2 = mbVar.a(i2, cVar, aVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public c.c.a.e.d.a.b.c get() {
        return b(this.f5995a, this.f5996b, this.f5997c, this.f5998d);
    }
}
