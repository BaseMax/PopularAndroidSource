package c.c.a.n.b.c;

import c.c.a.p.I;
import d.b.c;
import g.a.a;

/* compiled from: ReportViewModel_Factory */
public final class h implements c<g> {

    /* renamed from: a  reason: collision with root package name */
    public final a<I> f6232a;

    public h(a<I> aVar) {
        this.f6232a = aVar;
    }

    public static h a(a<I> aVar) {
        return new h(aVar);
    }

    public static g b(a<I> aVar) {
        return new g(aVar.get());
    }

    public g get() {
        return b(this.f6232a);
    }
}
