package c.c.a.e.d.r;

import c.c.a.e.d.h.c.b.b;
import d.b.c;
import g.a.a;

/* compiled from: ReviewRepository_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c> f5407a;

    /* renamed from: b  reason: collision with root package name */
    public final a<b> f5408b;

    public f(a<c> aVar, a<b> aVar2) {
        this.f5407a = aVar;
        this.f5408b = aVar2;
    }

    public static f a(a<c> aVar, a<b> aVar2) {
        return new f(aVar, aVar2);
    }

    public static e b(a<c> aVar, a<b> aVar2) {
        return new e(aVar.get(), aVar2.get());
    }

    public e get() {
        return b(this.f5407a, this.f5408b);
    }
}
