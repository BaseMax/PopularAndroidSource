package c.c.a.e.d.r.a;

import c.c.a.e.d.r.a.a.j;
import c.c.a.e.d.r.a.b.d;
import d.b.c;
import g.a.a;

/* compiled from: VoteCommentRepository_Factory */
public final class g implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f5374a;

    /* renamed from: b  reason: collision with root package name */
    public final a<j> f5375b;

    public g(a<d> aVar, a<j> aVar2) {
        this.f5374a = aVar;
        this.f5375b = aVar2;
    }

    public static g a(a<d> aVar, a<j> aVar2) {
        return new g(aVar, aVar2);
    }

    public static f b(a<d> aVar, a<j> aVar2) {
        return new f(aVar.get(), aVar2.get());
    }

    public f get() {
        return b(this.f5374a, this.f5375b);
    }
}
