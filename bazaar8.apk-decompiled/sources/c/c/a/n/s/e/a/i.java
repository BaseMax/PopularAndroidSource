package c.c.a.n.s.e.a;

import c.c.a.e.d.m.d;
import c.c.a.p.I;
import d.b.c;
import g.a.a;

/* compiled from: PaymentOptionsViewModel_Factory */
public final class i implements c<h> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f6900a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6901b;

    public i(a<d> aVar, a<I> aVar2) {
        this.f6900a = aVar;
        this.f6901b = aVar2;
    }

    public static i a(a<d> aVar, a<I> aVar2) {
        return new i(aVar, aVar2);
    }

    public static h b(a<d> aVar, a<I> aVar2) {
        return new h(aVar.get(), aVar2.get());
    }

    public h get() {
        return b(this.f6900a, this.f6901b);
    }
}
