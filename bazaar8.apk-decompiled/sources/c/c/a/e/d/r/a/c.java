package c.c.a.e.d.r.a;

import c.c.a.e.d.r.a.a.j;
import g.a.a;

/* compiled from: CommentActionRepository_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<f> f5363a;

    /* renamed from: b  reason: collision with root package name */
    public final a<d> f5364b;

    /* renamed from: c  reason: collision with root package name */
    public final a<j> f5365c;

    public c(a<f> aVar, a<d> aVar2, a<j> aVar3) {
        this.f5363a = aVar;
        this.f5364b = aVar2;
        this.f5365c = aVar3;
    }

    public static c a(a<f> aVar, a<d> aVar2, a<j> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<f> aVar, a<d> aVar2, a<j> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f5363a, this.f5364b, this.f5365c);
    }
}
