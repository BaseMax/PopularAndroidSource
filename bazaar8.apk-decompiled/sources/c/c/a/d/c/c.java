package c.c.a.d.c;

import g.a.a;

/* compiled from: AccountManager_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f4761a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f4762b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.a.c> f4763c;

    public c(a<c.c.a.e.d.a.a> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.d.a.c> aVar3) {
        this.f4761a = aVar;
        this.f4762b = aVar2;
        this.f4763c = aVar3;
    }

    public static c a(a<c.c.a.e.d.a.a> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.d.a.c> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<c.c.a.e.d.a.a> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.d.a.c> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f4761a, this.f4762b, this.f4763c);
    }
}
