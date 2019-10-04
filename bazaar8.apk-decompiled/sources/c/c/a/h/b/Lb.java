package c.c.a.h.b;

import c.c.a.e.d.h.d.b.k;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideSeriesServiceFactory */
public final class Lb implements c<k> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5932a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5933b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5934c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5935d;

    public Lb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5932a = mbVar;
        this.f5933b = aVar;
        this.f5934c = aVar2;
        this.f5935d = aVar3;
    }

    public static Lb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Lb(mbVar, aVar, aVar2, aVar3);
    }

    public static k b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static k a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        k w = mbVar.w(i2, cVar, aVar);
        h.a(w, "Cannot return null from a non-@Nullable @Provides method");
        return w;
    }

    public k get() {
        return b(this.f5932a, this.f5933b, this.f5934c, this.f5935d);
    }
}
