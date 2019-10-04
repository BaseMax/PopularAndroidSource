package c.c.a.e.d.r.b.b;

import g.a.a;

/* compiled from: PostCommentRemoteDataSource_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.q.a> f5398a;

    /* renamed from: b  reason: collision with root package name */
    public final a<a> f5399b;

    public c(a<c.c.a.e.d.q.a> aVar, a<a> aVar2) {
        this.f5398a = aVar;
        this.f5399b = aVar2;
    }

    public static c a(a<c.c.a.e.d.q.a> aVar, a<a> aVar2) {
        return new c(aVar, aVar2);
    }

    public static b b(a<c.c.a.e.d.q.a> aVar, a<a> aVar2) {
        return new b(aVar.get(), aVar2.get());
    }

    public b get() {
        return b(this.f5398a, this.f5399b);
    }
}
