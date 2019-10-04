package c.c.a.e.d.a;

import c.c.a.e.d.a.b.e;
import h.f.b.j;

/* compiled from: TokenRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final c.c.a.e.d.a.a.c f4929a;

    /* renamed from: b  reason: collision with root package name */
    public final e f4930b;

    public c(c.c.a.e.d.a.a.c cVar, e eVar) {
        j.b(cVar, "localDataSource");
        j.b(eVar, "remoteDataSource");
        this.f4929a = cVar;
        this.f4930b = eVar;
    }

    public final String a() {
        return this.f4929a.b();
    }

    public final void b(String str) {
        j.b(str, "token");
        this.f4929a.b(str);
    }

    public final boolean c() {
        return a().length() > 0;
    }

    public final void d() {
        this.f4929a.a();
    }

    public final String e() {
        String a2 = this.f4930b.a(this.f4929a.c());
        a(a2);
        return a2;
    }

    public final void a(String str) {
        j.b(str, "token");
        this.f4929a.a(str);
    }

    public final String b() {
        return this.f4929a.c();
    }
}
