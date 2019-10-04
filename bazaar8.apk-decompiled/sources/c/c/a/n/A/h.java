package c.c.a.n.A;

import android.content.Context;
import c.c.a.b.d.b;
import c.c.a.e.d.b.ba;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: UpgradableAppsViewModel_Factory */
public final class h implements c<g> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6159a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6160b;

    /* renamed from: c  reason: collision with root package name */
    public final a<ba> f6161c;

    /* renamed from: d  reason: collision with root package name */
    public final a<b> f6162d;

    public h(a<Context> aVar, a<u> aVar2, a<ba> aVar3, a<b> aVar4) {
        this.f6159a = aVar;
        this.f6160b = aVar2;
        this.f6161c = aVar3;
        this.f6162d = aVar4;
    }

    public static h a(a<Context> aVar, a<u> aVar2, a<ba> aVar3, a<b> aVar4) {
        return new h(aVar, aVar2, aVar3, aVar4);
    }

    public static g b(a<Context> aVar, a<u> aVar2, a<ba> aVar3, a<b> aVar4) {
        return new g(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public g get() {
        return b(this.f6159a, this.f6160b, this.f6161c, this.f6162d);
    }
}
