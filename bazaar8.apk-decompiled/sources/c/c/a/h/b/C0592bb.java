package c.c.a.h.b;

import c.c.a.e.g.b;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.bb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideDownloadConfigFactory */
public final class C0592bb implements c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5962a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f5963b;

    public C0592bb(Ya ya, a<c.c.a.e.d.u.a> aVar) {
        this.f5962a = ya;
        this.f5963b = aVar;
    }

    public static C0592bb a(Ya ya, a<c.c.a.e.d.u.a> aVar) {
        return new C0592bb(ya, aVar);
    }

    public static b b(Ya ya, a<c.c.a.e.d.u.a> aVar) {
        return a(ya, aVar.get());
    }

    public static b a(Ya ya, c.c.a.e.d.u.a aVar) {
        b a2 = ya.a(aVar);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public b get() {
        return b(this.f5962a, this.f5963b);
    }
}
