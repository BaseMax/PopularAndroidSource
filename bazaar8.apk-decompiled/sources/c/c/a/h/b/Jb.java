package c.c.a.h.b;

import c.c.a.e.d.s.j;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* compiled from: RetrofitModule_ProvideSearchServiceFactory */
public final class Jb implements c<j> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f5924a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f5925b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f5926c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f5927d;

    public Jb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f5924a = mbVar;
        this.f5925b = aVar;
        this.f5926c = aVar2;
        this.f5927d = aVar3;
    }

    public static Jb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new Jb(mbVar, aVar, aVar2, aVar3);
    }

    public static j b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static j a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        j u = mbVar.u(i2, cVar, aVar);
        h.a(u, "Cannot return null from a non-@Nullable @Provides method");
        return u;
    }

    public j get() {
        return b(this.f5924a, this.f5925b, this.f5926c, this.f5927d);
    }
}
