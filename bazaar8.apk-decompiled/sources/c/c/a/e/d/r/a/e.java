package c.c.a.e.d.r.a;

import c.c.a.e.d.h.c.a.a.f;
import c.c.a.e.d.r.a.a.j;
import d.b.c;
import g.a.a;

/* compiled from: ReportCommentRepository_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.r.a.b.a> f5369a;

    /* renamed from: b  reason: collision with root package name */
    public final a<f> f5370b;

    /* renamed from: c  reason: collision with root package name */
    public final a<j> f5371c;

    public e(a<c.c.a.e.d.r.a.b.a> aVar, a<f> aVar2, a<j> aVar3) {
        this.f5369a = aVar;
        this.f5370b = aVar2;
        this.f5371c = aVar3;
    }

    public static e a(a<c.c.a.e.d.r.a.b.a> aVar, a<f> aVar2, a<j> aVar3) {
        return new e(aVar, aVar2, aVar3);
    }

    public static d b(a<c.c.a.e.d.r.a.b.a> aVar, a<f> aVar2, a<j> aVar3) {
        return new d(aVar.get(), aVar2.get(), aVar3.get());
    }

    public d get() {
        return b(this.f5369a, this.f5370b, this.f5371c);
    }
}
