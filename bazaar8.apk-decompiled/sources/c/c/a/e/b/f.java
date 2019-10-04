package c.c.a.e.b;

import d.b.c;
import g.a.a;

/* compiled from: RequestPropertiesDataSource_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c> f4895a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f4896b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.i.a> f4897c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.e.a> f4898d;

    public f(a<c> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.i.a> aVar3, a<c.c.a.e.e.a> aVar4) {
        this.f4895a = aVar;
        this.f4896b = aVar2;
        this.f4897c = aVar3;
        this.f4898d = aVar4;
    }

    public static f a(a<c> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.i.a> aVar3, a<c.c.a.e.e.a> aVar4) {
        return new f(aVar, aVar2, aVar3, aVar4);
    }

    public static e b(a<c> aVar, a<c.c.a.e.d.u.a> aVar2, a<c.c.a.e.i.a> aVar3, a<c.c.a.e.e.a> aVar4) {
        return new e(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public e get() {
        return b(this.f4895a, this.f4896b, this.f4897c, this.f4898d);
    }
}
