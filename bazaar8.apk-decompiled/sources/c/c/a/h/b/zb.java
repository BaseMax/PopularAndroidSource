package c.c.a.h.b;

import c.c.a.e.d.r.b.b.a;
import d.b.c;
import d.b.h;
import j.I;

/* compiled from: RetrofitModule_ProvideCommentServiceFactory */
public final class zb implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6060a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<I> f6061b;

    /* renamed from: c  reason: collision with root package name */
    public final g.a.a<c.c.a.g.c> f6062c;

    /* renamed from: d  reason: collision with root package name */
    public final g.a.a<l.a.a.a> f6063d;

    public zb(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        this.f6060a = mbVar;
        this.f6061b = aVar;
        this.f6062c = aVar2;
        this.f6063d = aVar3;
    }

    public static zb a(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return new zb(mbVar, aVar, aVar2, aVar3);
    }

    public static a b(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static a a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        a k2 = mbVar.k(i2, cVar, aVar);
        h.a(k2, "Cannot return null from a non-@Nullable @Provides method");
        return k2;
    }

    public a get() {
        return b(this.f6060a, this.f6061b, this.f6062c, this.f6063d);
    }
}
