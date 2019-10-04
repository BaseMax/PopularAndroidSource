package c.c.a.h.b;

import c.c.a.e.d.d.b.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.ub  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideBookmarkServiceFactory */
public final class C0648ub implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6030a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6031b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6032c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6033d;

    public C0648ub(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6030a = mbVar;
        this.f6031b = aVar;
        this.f6032c = aVar2;
        this.f6033d = aVar3;
    }

    public static C0648ub a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0648ub(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e f2 = mbVar.f(i2, cVar, aVar);
        h.a(f2, "Cannot return null from a non-@Nullable @Provides method");
        return f2;
    }

    public e get() {
        return b(this.f6030a, this.f6031b, this.f6032c, this.f6033d);
    }
}
