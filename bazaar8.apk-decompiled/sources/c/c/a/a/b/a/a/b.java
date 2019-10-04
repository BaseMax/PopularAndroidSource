package c.c.a.a.b.a.a;

import c.c.a.a.b.a.a.b.g;
import c.c.a.e.d.b.I;
import d.b.c;
import g.a.a;

/* compiled from: ActionLogRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<g> f4512a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.a.b.a.a.c.a> f4513b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f4514c;

    /* renamed from: d  reason: collision with root package name */
    public final a<I> f4515d;

    public b(a<g> aVar, a<c.c.a.a.b.a.a.c.a> aVar2, a<c.c.a.e.d.a.a> aVar3, a<I> aVar4) {
        this.f4512a = aVar;
        this.f4513b = aVar2;
        this.f4514c = aVar3;
        this.f4515d = aVar4;
    }

    public static b a(a<g> aVar, a<c.c.a.a.b.a.a.c.a> aVar2, a<c.c.a.e.d.a.a> aVar3, a<I> aVar4) {
        return new b(aVar, aVar2, aVar3, aVar4);
    }

    public static a b(a<g> aVar, a<c.c.a.a.b.a.a.c.a> aVar2, a<c.c.a.e.d.a.a> aVar3, a<I> aVar4) {
        return new a(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public a get() {
        return b(this.f4512a, this.f4513b, this.f4514c, this.f4515d);
    }
}
