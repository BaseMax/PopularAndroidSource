package c.c.a.b.d;

import c.c.a.e.d.m.d;
import d.b.c;
import g.a.a;

/* compiled from: PaymentManager_Factory */
public final class n implements c<m> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f4601a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f4602b;

    public n(a<d> aVar, a<c.c.a.e.d.a.a> aVar2) {
        this.f4601a = aVar;
        this.f4602b = aVar2;
    }

    public static n a(a<d> aVar, a<c.c.a.e.d.a.a> aVar2) {
        return new n(aVar, aVar2);
    }

    public static m b(a<d> aVar, a<c.c.a.e.d.a.a> aVar2) {
        return new m(aVar.get(), aVar2.get());
    }

    public m get() {
        return b(this.f4601a, this.f4602b);
    }
}
