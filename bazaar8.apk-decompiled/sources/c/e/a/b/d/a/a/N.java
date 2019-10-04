package c.e.a.b.d.a.a;

import c.e.a.b.d.a.a;
import c.e.a.b.d.a.a.d;
import c.e.a.b.d.d.C0794q;

public final class N<O extends a.d> {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f9821a = false;

    /* renamed from: b  reason: collision with root package name */
    public final int f9822b;

    /* renamed from: c  reason: collision with root package name */
    public final a<O> f9823c;

    /* renamed from: d  reason: collision with root package name */
    public final O f9824d;

    public N(a<O> aVar, O o) {
        this.f9823c = aVar;
        this.f9824d = o;
        this.f9822b = C0794q.a(this.f9823c, this.f9824d);
    }

    public static <O extends a.d> N<O> a(a<O> aVar, O o) {
        return new N<>(aVar, o);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof N)) {
            return false;
        }
        N n = (N) obj;
        return !this.f9821a && !n.f9821a && C0794q.a(this.f9823c, n.f9823c) && C0794q.a(this.f9824d, n.f9824d);
    }

    public final int hashCode() {
        return this.f9822b;
    }

    public final String a() {
        return this.f9823c.a();
    }
}
