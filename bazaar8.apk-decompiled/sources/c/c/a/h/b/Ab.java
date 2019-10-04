package c.c.a.h.b;

import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideDownloadServiceFactory */
public final class Ab implements c<c.c.a.e.d.h.e.a.b.c> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5885a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5886b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5887c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5888d;

    public Ab(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5885a = mbVar;
        this.f5886b = aVar;
        this.f5887c = aVar2;
        this.f5888d = aVar3;
    }

    public static Ab a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Ab(mbVar, aVar, aVar2, aVar3);
    }

    public static c.c.a.e.d.h.e.a.b.c b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static c.c.a.e.d.h.e.a.b.c a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        c.c.a.e.d.h.e.a.b.c l2 = mbVar.l(i2, cVar, aVar);
        h.a(l2, "Cannot return null from a non-@Nullable @Provides method");
        return l2;
    }

    public c.c.a.e.d.h.e.a.b.c get() {
        return b(this.f5885a, this.f5886b, this.f5887c, this.f5888d);
    }
}
