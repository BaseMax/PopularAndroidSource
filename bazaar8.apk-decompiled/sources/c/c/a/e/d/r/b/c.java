package c.c.a.e.d.r.b;

import c.c.a.e.d.r.b.a.j;
import c.c.a.e.d.r.b.b.b;
import g.a.a;

/* compiled from: PostCommentRepository_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f5400a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.h.c.a.a.a> f5401b;

    /* renamed from: c  reason: collision with root package name */
    public final a<j> f5402c;

    public c(a<b> aVar, a<c.c.a.e.d.h.c.a.a.a> aVar2, a<j> aVar3) {
        this.f5400a = aVar;
        this.f5401b = aVar2;
        this.f5402c = aVar3;
    }

    public static c a(a<b> aVar, a<c.c.a.e.d.h.c.a.a.a> aVar2, a<j> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<b> aVar, a<c.c.a.e.d.h.c.a.a.a> aVar2, a<j> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f5400a, this.f5401b, this.f5402c);
    }
}
