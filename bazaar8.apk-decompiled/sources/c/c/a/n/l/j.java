package c.c.a.n.l;

import android.content.Context;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: FehrestViewModel_Factory */
public final class j implements c<i> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6674a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6675b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.j.c> f6676c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f6677d;

    public j(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        this.f6674a = aVar;
        this.f6675b = aVar2;
        this.f6676c = aVar3;
        this.f6677d = aVar4;
    }

    public static j a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new j(aVar, aVar2, aVar3, aVar4);
    }

    public static i b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new i(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public i get() {
        return b(this.f6674a, this.f6675b, this.f6676c, this.f6677d);
    }
}
