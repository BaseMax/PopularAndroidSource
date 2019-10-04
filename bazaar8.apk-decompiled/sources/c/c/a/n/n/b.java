package c.c.a.n.n;

import android.content.Context;
import c.c.a.e.d.l.d;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: InstalledAppsViewModel_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6690a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6691b;

    /* renamed from: c  reason: collision with root package name */
    public final a<d> f6692c;

    public b(a<Context> aVar, a<u> aVar2, a<d> aVar3) {
        this.f6690a = aVar;
        this.f6691b = aVar2;
        this.f6692c = aVar3;
    }

    public static b a(a<Context> aVar, a<u> aVar2, a<d> aVar3) {
        return new b(aVar, aVar2, aVar3);
    }

    public static a b(a<Context> aVar, a<u> aVar2, a<d> aVar3) {
        return new a(aVar.get(), aVar2.get(), aVar3.get());
    }

    public a get() {
        return b(this.f6690a, this.f6691b, this.f6692c);
    }
}
