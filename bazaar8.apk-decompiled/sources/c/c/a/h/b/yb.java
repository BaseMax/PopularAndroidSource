package c.c.a.h.b;

import c.c.a.e.d.g.a.f;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideCategoryRetrofitServiceFactory */
public final class yb implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6054a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6055b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6056c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6057d;

    public yb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6054a = mbVar;
        this.f6055b = aVar;
        this.f6056c = aVar2;
        this.f6057d = aVar3;
    }

    public static yb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new yb(mbVar, aVar, aVar2, aVar3);
    }

    public static f b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static f a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        f j2 = mbVar.j(i2, cVar, aVar);
        h.a(j2, "Cannot return null from a non-@Nullable @Provides method");
        return j2;
    }

    public f get() {
        return b(this.f6054a, this.f6055b, this.f6056c, this.f6057d);
    }
}
