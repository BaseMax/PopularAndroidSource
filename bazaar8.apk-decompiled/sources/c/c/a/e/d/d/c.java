package c.c.a.e.d.d;

import c.c.a.e.d.d.a.l;
import g.a.a;

/* compiled from: BookmarkRepository_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<l> f5064a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.d.b.a> f5065b;

    public c(a<l> aVar, a<c.c.a.e.d.d.b.a> aVar2) {
        this.f5064a = aVar;
        this.f5065b = aVar2;
    }

    public static c a(a<l> aVar, a<c.c.a.e.d.d.b.a> aVar2) {
        return new c(aVar, aVar2);
    }

    public static b b(a<l> aVar, a<c.c.a.e.d.d.b.a> aVar2) {
        return new b(aVar.get(), aVar2.get());
    }

    public b get() {
        return b(this.f5064a, this.f5065b);
    }
}
