package c.c.a.n.j.a;

import android.content.Context;
import c.c.a.n.c.c.u;
import g.a.a;

/* compiled from: CastPageViewModel_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6442a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6443b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.h.a.a> f6444c;

    public c(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.h.a.a> aVar3) {
        this.f6442a = aVar;
        this.f6443b = aVar2;
        this.f6444c = aVar3;
    }

    public static c a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.h.a.a> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.h.a.a> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f6442a, this.f6443b, this.f6444c);
    }
}
