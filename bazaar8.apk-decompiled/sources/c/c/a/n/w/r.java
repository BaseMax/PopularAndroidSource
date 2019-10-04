package c.c.a.n.w;

import android.content.Context;
import c.c.a.e.d.s.h;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: SearchViewModel_Factory */
public final class r implements c<q> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f7054a;

    /* renamed from: b  reason: collision with root package name */
    public final a<h> f7055b;

    /* renamed from: c  reason: collision with root package name */
    public final a<u> f7056c;

    public r(a<Context> aVar, a<h> aVar2, a<u> aVar3) {
        this.f7054a = aVar;
        this.f7055b = aVar2;
        this.f7056c = aVar3;
    }

    public static r a(a<Context> aVar, a<h> aVar2, a<u> aVar3) {
        return new r(aVar, aVar2, aVar3);
    }

    public static q b(a<Context> aVar, a<h> aVar2, a<u> aVar3) {
        return new q(aVar.get(), aVar2.get(), aVar3.get());
    }

    public q get() {
        return b(this.f7054a, this.f7055b, this.f7056c);
    }
}
