package c.c.a.n.o;

import android.content.Context;
import c.c.a.e.d.b.C0383m;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: LatestDownloadedAppViewModel_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<C0383m> f6693a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6694b;

    /* renamed from: c  reason: collision with root package name */
    public final a<u> f6695c;

    public b(a<C0383m> aVar, a<Context> aVar2, a<u> aVar3) {
        this.f6693a = aVar;
        this.f6694b = aVar2;
        this.f6695c = aVar3;
    }

    public static b a(a<C0383m> aVar, a<Context> aVar2, a<u> aVar3) {
        return new b(aVar, aVar2, aVar3);
    }

    public static a b(a<C0383m> aVar, a<Context> aVar2, a<u> aVar3) {
        return new a(aVar.get(), aVar2.get(), aVar3.get());
    }

    public a get() {
        return b(this.f6693a, this.f6694b, this.f6695c);
    }
}
