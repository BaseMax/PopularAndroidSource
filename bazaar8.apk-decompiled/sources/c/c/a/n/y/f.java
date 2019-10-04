package c.c.a.n.y;

import d.b.c;
import g.a.a;

/* compiled from: SplashViewModel_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f7099a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f7100b;

    public f(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.d.a.a> aVar2) {
        this.f7099a = aVar;
        this.f7100b = aVar2;
    }

    public static f a(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.d.a.a> aVar2) {
        return new f(aVar, aVar2);
    }

    public static e b(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.d.a.a> aVar2) {
        return new e(aVar.get(), aVar2.get());
    }

    public e get() {
        return b(this.f7099a, this.f7100b);
    }
}
