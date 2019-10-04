package c.c.a.h.b;

import c.c.a.e.d.i.e;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;

/* renamed from: c.c.a.h.b.rb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule_ProvideAppDownloadInfoServiceFactory */
public final class C0639rb implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0625mb f6013a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6014b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.g.c> f6015c;

    /* renamed from: d  reason: collision with root package name */
    public final a<l.a.a.a> f6016d;

    public C0639rb(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        this.f6013a = mbVar;
        this.f6014b = aVar;
        this.f6015c = aVar2;
        this.f6016d = aVar3;
    }

    public static C0639rb a(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return new C0639rb(mbVar, aVar, aVar2, aVar3);
    }

    public static e b(C0625mb mbVar, a<I> aVar, a<c.c.a.g.c> aVar2, a<l.a.a.a> aVar3) {
        return a(mbVar, aVar.get(), aVar2.get(), aVar3.get());
    }

    public static e a(C0625mb mbVar, I i2, c.c.a.g.c cVar, l.a.a.a aVar) {
        e d2 = mbVar.d(i2, cVar, aVar);
        h.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }

    public e get() {
        return b(this.f6013a, this.f6014b, this.f6015c, this.f6016d);
    }
}
