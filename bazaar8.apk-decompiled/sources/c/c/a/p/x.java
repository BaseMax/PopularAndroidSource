package c.c.a.p;

import c.c.a.e.d.r.a.d;
import d.b.c;
import g.a.a;

/* compiled from: ReportCommentWorker_AssistedFactory_Factory */
public final class x implements c<w> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f7185a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7186b;

    public x(a<d> aVar, a<I> aVar2) {
        this.f7185a = aVar;
        this.f7186b = aVar2;
    }

    public static x a(a<d> aVar, a<I> aVar2) {
        return new x(aVar, aVar2);
    }

    public static w b(a<d> aVar, a<I> aVar2) {
        return new w(aVar, aVar2);
    }

    public w get() {
        return b(this.f7185a, this.f7186b);
    }
}
