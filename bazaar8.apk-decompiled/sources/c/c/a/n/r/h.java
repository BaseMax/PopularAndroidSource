package c.c.a.n.r;

import android.content.Context;
import c.c.a.d.c.b;
import d.b.c;
import g.a.a;

/* compiled from: ChildMyBazaarViewModel_Factory */
public final class h implements c<g> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6791a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f6792b;

    /* renamed from: c  reason: collision with root package name */
    public final a<b> f6793c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f6794d;

    public h(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<b> aVar3, a<c.c.a.e.d.u.a> aVar4) {
        this.f6791a = aVar;
        this.f6792b = aVar2;
        this.f6793c = aVar3;
        this.f6794d = aVar4;
    }

    public static h a(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<b> aVar3, a<c.c.a.e.d.u.a> aVar4) {
        return new h(aVar, aVar2, aVar3, aVar4);
    }

    public static g b(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<b> aVar3, a<c.c.a.e.d.u.a> aVar4) {
        return new g(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public g get() {
        return b(this.f6791a, this.f6792b, this.f6793c, this.f6794d);
    }
}
