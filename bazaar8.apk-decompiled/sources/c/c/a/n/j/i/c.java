package c.c.a.n.j.i;

import android.content.Context;
import c.c.a.n.c.c.u;
import g.a.a;

/* compiled from: SeasonEpisodesViewModel_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6591a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6592b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.t.a> f6593c;

    public c(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.t.a> aVar3) {
        this.f6591a = aVar;
        this.f6592b = aVar2;
        this.f6593c = aVar3;
    }

    public static c a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.t.a> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.t.a> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f6591a, this.f6592b, this.f6593c);
    }
}
