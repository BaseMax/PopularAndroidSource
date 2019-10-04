package c.c.a.h.b;

import c.c.a.e.d.h.a.a.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideCastServiceFactory */
public final class xb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6048a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6049b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6050c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6051d;

    public xb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6048a = mbVar;
        this.f6049b = aVar;
        this.f6050c = aVar2;
        this.f6051d = aVar3;
    }

    public static xb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new xb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e i3 = mbVar.i(i2, cVar, aVar);
        h.a(i3, "Cannot return null from a non-@Nullable @Provides method");
        return i3;
    }

    public e get() {
        return b(this.f6048a, this.f6049b, this.f6050c, this.f6051d);
    }
}
