package c.c.a.n.e;

import android.content.Context;
import c.c.a.n.c.c.u;
import g.a.a;

/* compiled from: BoughtAppViewModel_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6410a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6411b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.e.a> f6412c;

    public c(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.e.a> aVar3) {
        this.f6410a = aVar;
        this.f6411b = aVar2;
        this.f6412c = aVar3;
    }

    public static c a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.e.a> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.e.a> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f6410a, this.f6411b, this.f6412c);
    }
}
