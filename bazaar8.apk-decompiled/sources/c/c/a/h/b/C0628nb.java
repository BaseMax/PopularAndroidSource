package c.c.a.h.b;

import d.b.c;
import d.b.h;
import l.a.a.a;

/* renamed from: c.c.a.h.b.nb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_GsonConverterFactoryFactory */
public final class C0628nb implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5993a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<c.c.a.e.d.q.a> f5994b;

    public C0628nb(C0625mb mbVar, g.a.a<c.c.a.e.d.q.a> aVar) {
        this.f5993a = mbVar;
        this.f5994b = aVar;
    }

    public static C0628nb a(C0625mb mbVar, g.a.a<c.c.a.e.d.q.a> aVar) {
        return new C0628nb(mbVar, aVar);
    }

    public static a b(C0625mb mbVar, g.a.a<c.c.a.e.d.q.a> aVar) {
        return a(mbVar, aVar.get());
    }

    public static a a(C0625mb mbVar, c.c.a.e.d.q.a aVar) {
        a a2 = mbVar.a(aVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public a get() {
        return b(this.f5993a, this.f5994b);
    }
}
