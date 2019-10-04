package c.c.a.h.b;

import c.c.a.e.d.m.b.d;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvidePaymentServiceFactory */
public final class Eb implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5902a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5903b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5904c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5905d;

    public Eb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5902a = mbVar;
        this.f5903b = aVar;
        this.f5904c = aVar2;
        this.f5905d = aVar3;
    }

    public static Eb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Eb(mbVar, aVar, aVar2, aVar3);
    }

    public static d b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static d a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        d p = mbVar.p(i2, cVar, aVar);
        h.a(p, "Cannot return null from a non-@Nullable @Provides method");
        return p;
    }

    public d get() {
        return b(this.f5902a, this.f5903b, this.f5904c, this.f5905d);
    }
}
