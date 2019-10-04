package c.c.a.e.d.m;

import c.c.a.e.d.m.b.b;
import d.b.c;
import g.a.a;

/* compiled from: PaymentRepository_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f5282a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.m.a.c> f5283b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f5284c;

    public e(a<b> aVar, a<c.c.a.e.d.m.a.c> aVar2, a<c.c.a.e.d.a.a> aVar3) {
        this.f5282a = aVar;
        this.f5283b = aVar2;
        this.f5284c = aVar3;
    }

    public static e a(a<b> aVar, a<c.c.a.e.d.m.a.c> aVar2, a<c.c.a.e.d.a.a> aVar3) {
        return new e(aVar, aVar2, aVar3);
    }

    public static d b(a<b> aVar, a<c.c.a.e.d.m.a.c> aVar2, a<c.c.a.e.d.a.a> aVar3) {
        return new d(aVar.get(), aVar2.get(), aVar3.get());
    }

    public d get() {
        return b(this.f5282a, this.f5283b, this.f5284c);
    }
}
