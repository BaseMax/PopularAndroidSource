package c.c.a.h.b;

import c.c.a.e.d.v.a.a;
import d.b.c;
import d.b.h;
import j.I;

/* renamed from: c.c.a.h.b.sb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideAppSubscriptionServiceFactory */
public final class C0642sb implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6019a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<I> f6020b;

    /* renamed from: c  reason: collision with root package name */
    public final g.a.a<c.c.a.g.c> f6021c;

    /* renamed from: d  reason: collision with root package name */
    public final g.a.a<l.a.a.a> f6022d;

    public C0642sb(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        this.f6019a = mbVar;
        this.f6020b = aVar;
        this.f6021c = aVar2;
        this.f6022d = aVar3;
    }

    public static C0642sb a(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return new C0642sb(mbVar, aVar, aVar2, aVar3);
    }

    public static a b(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static a a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        a e2 = mbVar.e(i2, cVar, aVar);
        h.a(e2, "Cannot return null from a non-@Nullable @Provides method");
        return e2;
    }

    public a get() {
        return b(this.f6019a, this.f6020b, this.f6021c, this.f6022d);
    }
}
