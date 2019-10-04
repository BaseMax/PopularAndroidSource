package c.c.a.h.b;

import c.c.a.e.h.a.f;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.ab  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideCacheInterceptorFactory */
public final class C0589ab implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5958a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.h.a.c> f5959b;

    public C0589ab(Ya ya, a<c.c.a.e.h.a.c> aVar) {
        this.f5958a = ya;
        this.f5959b = aVar;
    }

    public static C0589ab a(Ya ya, a<c.c.a.e.h.a.c> aVar) {
        return new C0589ab(ya, aVar);
    }

    public static f b(Ya ya, a<c.c.a.e.h.a.c> aVar) {
        return a(ya, aVar.get());
    }

    public static f a(Ya ya, c.c.a.e.h.a.c cVar) {
        f a2 = ya.a(cVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public f get() {
        return b(this.f5958a, this.f5959b);
    }
}
