package c.c.a.e.d.o;

import d.b.c;
import g.a.a;

/* compiled from: ReleaseNoteRepository_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f5325a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.b.c> f5326b;

    /* renamed from: c  reason: collision with root package name */
    public final a<a> f5327c;

    public d(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.b.c> aVar2, a<a> aVar3) {
        this.f5325a = aVar;
        this.f5326b = aVar2;
        this.f5327c = aVar3;
    }

    public static d a(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.b.c> aVar2, a<a> aVar3) {
        return new d(aVar, aVar2, aVar3);
    }

    public static c b(a<c.c.a.e.d.u.a> aVar, a<c.c.a.e.b.c> aVar2, a<a> aVar3) {
        return new c(aVar.get(), aVar2.get(), aVar3.get());
    }

    public c get() {
        return b(this.f5325a, this.f5326b, this.f5327c);
    }
}
