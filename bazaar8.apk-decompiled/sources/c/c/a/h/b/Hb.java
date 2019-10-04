package c.c.a.h.b;

import c.c.a.e.d.r.g;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideReviewServiceFactory */
public final class Hb implements c<g> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5916a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5917b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5918c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5919d;

    public Hb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5916a = mbVar;
        this.f5917b = aVar;
        this.f5918c = aVar2;
        this.f5919d = aVar3;
    }

    public static Hb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Hb(mbVar, aVar, aVar2, aVar3);
    }

    public static g b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static g a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        g s = mbVar.s(i2, cVar, aVar);
        h.a(s, "Cannot return null from a non-@Nullable @Provides method");
        return s;
    }

    public g get() {
        return b(this.f5916a, this.f5917b, this.f5918c, this.f5919d);
    }
}
