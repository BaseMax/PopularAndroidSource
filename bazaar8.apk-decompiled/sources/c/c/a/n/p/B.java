package c.c.a.n.p;

import c.c.a.d.c.b;
import c.c.a.e.d.m.d;
import c.c.a.p.I;
import d.b.c;
import g.a.a;

/* compiled from: VerifyOtpViewModel_Factory */
public final class B implements c<A> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f6701a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6702b;

    /* renamed from: c  reason: collision with root package name */
    public final a<d> f6703c;

    public B(a<b> aVar, a<I> aVar2, a<d> aVar3) {
        this.f6701a = aVar;
        this.f6702b = aVar2;
        this.f6703c = aVar3;
    }

    public static B a(a<b> aVar, a<I> aVar2, a<d> aVar3) {
        return new B(aVar, aVar2, aVar3);
    }

    public static A b(a<b> aVar, a<I> aVar2, a<d> aVar3) {
        return new A(aVar.get(), aVar2.get(), aVar3.get());
    }

    public A get() {
        return b(this.f6701a, this.f6702b, this.f6703c);
    }
}
