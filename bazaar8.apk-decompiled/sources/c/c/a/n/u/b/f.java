package c.c.a.n.u.b;

import c.c.a.d.c.b;
import c.c.a.p.I;
import d.b.c;
import g.a.a;

/* compiled from: PostCommentViewModel_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<I> f6991a;

    /* renamed from: b  reason: collision with root package name */
    public final a<b> f6992b;

    public f(a<I> aVar, a<b> aVar2) {
        this.f6991a = aVar;
        this.f6992b = aVar2;
    }

    public static f a(a<I> aVar, a<b> aVar2) {
        return new f(aVar, aVar2);
    }

    public static e b(a<I> aVar, a<b> aVar2) {
        return new e(aVar.get(), aVar2.get());
    }

    public e get() {
        return b(this.f6991a, this.f6992b);
    }
}
