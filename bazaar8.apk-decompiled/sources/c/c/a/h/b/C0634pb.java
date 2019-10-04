package c.c.a.h.b;

import c.c.a.a.b.a.a.c.b.a;
import d.b.c;
import d.b.h;
import j.I;

/* renamed from: c.c.a.h.b.pb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideActionLogServiceFactory */
public final class C0634pb implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6001a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<I> f6002b;

    /* renamed from: c  reason: collision with root package name */
    public final g.a.a<c.c.a.g.c> f6003c;

    /* renamed from: d  reason: collision with root package name */
    public final g.a.a<l.a.a.a> f6004d;

    public C0634pb(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        this.f6001a = mbVar;
        this.f6002b = aVar;
        this.f6003c = aVar2;
        this.f6004d = aVar3;
    }

    public static C0634pb a(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return new C0634pb(mbVar, aVar, aVar2, aVar3);
    }

    public static a b(C0625mb mbVar, g.a.a<I> aVar, g.a.a<c.c.a.g.c> aVar2, g.a.a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static a a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        a b2 = mbVar.b(i2, cVar, aVar);
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public a get() {
        return b(this.f6001a, this.f6002b, this.f6003c, this.f6004d);
    }
}
