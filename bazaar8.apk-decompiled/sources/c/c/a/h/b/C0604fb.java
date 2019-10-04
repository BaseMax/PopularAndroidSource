package c.c.a.h.b;

import d.b.c;
import d.b.h;
import g.a.a;
import java.io.File;

/* renamed from: c.c.a.h.b.fb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideInternalCacheFactory */
public final class C0604fb implements c<c.c.a.e.h.a.c> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5975a;

    /* renamed from: b  reason: collision with root package name */
    public final a<File> f5976b;

    /* renamed from: c  reason: collision with root package name */
    public final a<Long> f5977c;

    public C0604fb(Ya ya, a<File> aVar, a<Long> aVar2) {
        this.f5975a = ya;
        this.f5976b = aVar;
        this.f5977c = aVar2;
    }

    public static C0604fb a(Ya ya, a<File> aVar, a<Long> aVar2) {
        return new C0604fb(ya, aVar, aVar2);
    }

    public static c.c.a.e.h.a.c b(Ya ya, a<File> aVar, a<Long> aVar2) {
        return a(ya, aVar.get(), aVar2.get().longValue());
    }

    public static c.c.a.e.h.a.c a(Ya ya, File file, long j2) {
        c.c.a.e.h.a.c a2 = ya.a(file, j2);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public c.c.a.e.h.a.c get() {
        return b(this.f5975a, this.f5976b, this.f5977c);
    }
}
