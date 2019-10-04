package c.c.a.h.b;

import c.c.a.e.d.h.c.b.f;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideVideoReviewsServiceFactory */
public final class Pb implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5944a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5945b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5946c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5947d;

    public Pb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5944a = mbVar;
        this.f5945b = aVar;
        this.f5946c = aVar2;
        this.f5947d = aVar3;
    }

    public static Pb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Pb(mbVar, aVar, aVar2, aVar3);
    }

    public static f b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static f a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        f z = mbVar.z(i2, cVar, aVar);
        h.a(z, "Cannot return null from a non-@Nullable @Provides method");
        return z;
    }

    public f get() {
        return b(this.f5944a, this.f5945b, this.f5946c, this.f5947d);
    }
}
