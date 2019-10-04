package c.c.a.h.b;

import c.c.a.e.d.a.b.d;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.tb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideAuthenticationServiceFactory */
public final class C0645tb implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6025a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.g.c> f6026b;

    /* renamed from: c  reason: collision with root package name */
    public final a<l.a.a.a> f6027c;

    public C0645tb(C0625mb mbVar, a<c.c.a.g.c> aVar, a<l.a.a.a> aVar2) {
        this.f6025a = mbVar;
        this.f6026b = aVar;
        this.f6027c = aVar2;
    }

    public static C0645tb a(C0625mb mbVar, a<c.c.a.g.c> aVar, a<l.a.a.a> aVar2) {
        return new C0645tb(mbVar, aVar, aVar2);
    }

    public static d b(C0625mb mbVar, a<c.c.a.g.c> aVar, a<l.a.a.a> aVar2) {
        return a(mbVar, aVar.get(), aVar2.get());
    }

    public static d a(C0625mb mbVar, c.c.a.g.c cVar, l.a.a.a aVar) {
        d a2 = mbVar.a(cVar, aVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public d get() {
        return b(this.f6025a, this.f6026b, this.f6027c);
    }
}
