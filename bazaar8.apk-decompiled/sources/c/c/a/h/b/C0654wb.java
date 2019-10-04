package c.c.a.h.b;

import c.c.a.e.d.e.a.f;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.wb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideBoughtappServiceFactory */
public final class C0654wb implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6042a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6043b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6044c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6045d;

    public C0654wb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6042a = mbVar;
        this.f6043b = aVar;
        this.f6044c = aVar2;
        this.f6045d = aVar3;
    }

    public static C0654wb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0654wb(mbVar, aVar, aVar2, aVar3);
    }

    public static f b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static f a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        f h2 = mbVar.h(i2, cVar, aVar);
        h.a(h2, "Cannot return null from a non-@Nullable @Provides method");
        return h2;
    }

    public f get() {
        return b(this.f6042a, this.f6043b, this.f6044c, this.f6045d);
    }
}
