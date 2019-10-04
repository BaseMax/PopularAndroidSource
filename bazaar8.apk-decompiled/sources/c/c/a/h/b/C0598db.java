package c.c.a.h.b;

import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.i.q;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.db  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideFileDownloadHelperFactory */
public final class C0598db implements c<q> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5971a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.c> f5972b;

    /* renamed from: c  reason: collision with root package name */
    public final a<n> f5973c;

    public C0598db(Ya ya, a<c.c.a.e.c> aVar, a<n> aVar2) {
        this.f5971a = ya;
        this.f5972b = aVar;
        this.f5973c = aVar2;
    }

    public static C0598db a(Ya ya, a<c.c.a.e.c> aVar, a<n> aVar2) {
        return new C0598db(ya, aVar, aVar2);
    }

    public static q b(Ya ya, a<c.c.a.e.c> aVar, a<n> aVar2) {
        return a(ya, aVar.get(), aVar2.get());
    }

    public static q a(Ya ya, c.c.a.e.c cVar, n nVar) {
        q a2 = ya.a(cVar, nVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public q get() {
        return b(this.f5971a, this.f5972b, this.f5973c);
    }
}
