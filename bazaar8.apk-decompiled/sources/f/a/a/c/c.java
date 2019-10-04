package f.a.a.c;

import g.a.a;

/* compiled from: InlineNetwork_Factory */
public final class c implements d.b.c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.k.c> f13981a;

    public c(a<c.c.a.e.d.k.c> aVar) {
        this.f13981a = aVar;
    }

    public static c a(a<c.c.a.e.d.k.c> aVar) {
        return new c(aVar);
    }

    public static a b(a<c.c.a.e.d.k.c> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f13981a);
    }
}
