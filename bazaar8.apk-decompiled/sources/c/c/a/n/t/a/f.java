package c.c.a.n.t.a;

import c.c.a.d.c.b;
import d.b.c;
import g.a.a;

/* compiled from: NickNameViewModel_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f6940a;

    /* renamed from: b  reason: collision with root package name */
    public final a<b> f6941b;

    public f(a<c.c.a.e.d.a.a> aVar, a<b> aVar2) {
        this.f6940a = aVar;
        this.f6941b = aVar2;
    }

    public static f a(a<c.c.a.e.d.a.a> aVar, a<b> aVar2) {
        return new f(aVar, aVar2);
    }

    public static e b(a<c.c.a.e.d.a.a> aVar, a<b> aVar2) {
        return new e(aVar.get(), aVar2.get());
    }

    public e get() {
        return b(this.f6940a, this.f6941b);
    }
}
