package c.c.a.h.b;

import c.c.a.e.d.p.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideReportAppServiceFactory */
public final class Gb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5912a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5913b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5914c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5915d;

    public Gb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5912a = mbVar;
        this.f5913b = aVar;
        this.f5914c = aVar2;
        this.f5915d = aVar3;
    }

    public static Gb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Gb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e r = mbVar.r(i2, cVar, aVar);
        h.a(r, "Cannot return null from a non-@Nullable @Provides method");
        return r;
    }

    public e get() {
        return b(this.f5912a, this.f5913b, this.f5914c, this.f5915d);
    }
}
