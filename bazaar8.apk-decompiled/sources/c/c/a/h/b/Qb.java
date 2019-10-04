package c.c.a.h.b;

import c.c.a.e.d.h.e.b.o;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideVideoServiceFactory */
public final class Qb implements c<o> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5948a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5949b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5950c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5951d;

    public Qb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5948a = mbVar;
        this.f5949b = aVar;
        this.f5950c = aVar2;
        this.f5951d = aVar3;
    }

    public static Qb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Qb(mbVar, aVar, aVar2, aVar3);
    }

    public static o b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static o a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        o A = mbVar.A(i2, cVar, aVar);
        h.a(A, "Cannot return null from a non-@Nullable @Provides method");
        return A;
    }

    public o get() {
        return b(this.f5948a, this.f5949b, this.f5950c, this.f5951d);
    }
}
