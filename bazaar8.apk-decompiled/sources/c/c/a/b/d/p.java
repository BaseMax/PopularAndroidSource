package c.c.a.b.d;

import android.content.Context;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.i.A;
import d.b.c;
import g.a.a;

/* compiled from: VideoManager_Factory */
public final class p implements c<o> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4608a;

    /* renamed from: b  reason: collision with root package name */
    public final a<n> f4609b;

    /* renamed from: c  reason: collision with root package name */
    public final a<A> f4610c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.d.h.e.a.c> f4611d;

    /* renamed from: e  reason: collision with root package name */
    public final a<c.c.a.e.d.h.e.a.c.a> f4612e;

    /* renamed from: f  reason: collision with root package name */
    public final a<d> f4613f;

    public p(a<Context> aVar, a<n> aVar2, a<A> aVar3, a<c.c.a.e.d.h.e.a.c> aVar4, a<c.c.a.e.d.h.e.a.c.a> aVar5, a<d> aVar6) {
        this.f4608a = aVar;
        this.f4609b = aVar2;
        this.f4610c = aVar3;
        this.f4611d = aVar4;
        this.f4612e = aVar5;
        this.f4613f = aVar6;
    }

    public static p a(a<Context> aVar, a<n> aVar2, a<A> aVar3, a<c.c.a.e.d.h.e.a.c> aVar4, a<c.c.a.e.d.h.e.a.c.a> aVar5, a<d> aVar6) {
        p pVar = new p(aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
        return pVar;
    }

    public static o b(a<Context> aVar, a<n> aVar2, a<A> aVar3, a<c.c.a.e.d.h.e.a.c> aVar4, a<c.c.a.e.d.h.e.a.c.a> aVar5, a<d> aVar6) {
        o oVar = new o(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get(), aVar5.get(), aVar6.get());
        return oVar;
    }

    public o get() {
        return b(this.f4608a, this.f4609b, this.f4610c, this.f4611d, this.f4612e, this.f4613f);
    }
}
