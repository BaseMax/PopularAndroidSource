package c.c.a.n.j.g;

import c.c.a.d.c.b;
import c.c.a.e.d.r.e;
import c.c.a.p.I;
import d.b.c;
import g.a.a;

/* compiled from: VideoReviewsViewModel_Factory */
public final class i implements c<h> {

    /* renamed from: a  reason: collision with root package name */
    public final a<e> f6580a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6581b;

    /* renamed from: c  reason: collision with root package name */
    public final a<b> f6582c;

    public i(a<e> aVar, a<I> aVar2, a<b> aVar3) {
        this.f6580a = aVar;
        this.f6581b = aVar2;
        this.f6582c = aVar3;
    }

    public static i a(a<e> aVar, a<I> aVar2, a<b> aVar3) {
        return new i(aVar, aVar2, aVar3);
    }

    public static h b(a<e> aVar, a<I> aVar2, a<b> aVar3) {
        return new h(aVar.get(), aVar2.get(), aVar3.get());
    }

    public h get() {
        return b(this.f6580a, this.f6581b, this.f6582c);
    }
}
