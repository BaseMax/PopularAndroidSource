package c.c.a.h.b;

import c.c.a.e.d.h.e.a.c.a.a;
import d.b.c;
import d.b.h;
import j.I;

/* compiled from: RetrofitModule_ProvideSubmitDownloadServiceFactory */
public final class Mb implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5936a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<I> f5937b;

    /* renamed from: c  reason: collision with root package name */
    public final g.a.a<c.c.a.g.c> f5938c;

    /* renamed from: d  reason: collision with root package name */
    public final g.a.a<l.a.a.a> f5939d;

    public Mb(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        this.f5936a = mbVar;
        this.f5937b = aVar;
        this.f5938c = aVar2;
        this.f5939d = aVar3;
    }

    public static Mb a(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return new Mb(mbVar, aVar, aVar2, aVar3);
    }

    public static a b(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static a a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        a x = mbVar.x(i2, cVar, aVar);
        h.a(x, "Cannot return null from a non-@Nullable @Provides method");
        return x;
    }

    public a get() {
        return b(this.f5936a, this.f5937b, this.f5938c, this.f5939d);
    }
}
