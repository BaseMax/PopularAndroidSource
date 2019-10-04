package c.c.a.h.b;

import c.c.a.e.d.f.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.vb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideBoughtVideoServiceFactory */
public final class C0651vb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6036a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6037b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6038c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6039d;

    public C0651vb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6036a = mbVar;
        this.f6037b = aVar;
        this.f6038c = aVar2;
        this.f6039d = aVar3;
    }

    public static C0651vb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0651vb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e g2 = mbVar.g(i2, cVar, aVar);
        h.a(g2, "Cannot return null from a non-@Nullable @Provides method");
        return g2;
    }

    public e get() {
        return b(this.f6036a, this.f6037b, this.f6038c, this.f6039d);
    }
}
