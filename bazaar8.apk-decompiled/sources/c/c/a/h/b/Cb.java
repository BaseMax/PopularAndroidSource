package c.c.a.h.b;

import c.c.a.e.d.j.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideFehrestServiceFactory */
public final class Cb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5893a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5894b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5895c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5896d;

    public Cb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5893a = mbVar;
        this.f5894b = aVar;
        this.f5895c = aVar2;
        this.f5896d = aVar3;
    }

    public static Cb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Cb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e n = mbVar.n(i2, cVar, aVar);
        h.a(n, "Cannot return null from a non-@Nullable @Provides method");
        return n;
    }

    public e get() {
        return b(this.f5893a, this.f5894b, this.f5895c, this.f5896d);
    }
}