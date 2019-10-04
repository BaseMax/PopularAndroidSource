package c.c.a.e.d.a.b;

import c.c.a.e.d.a.b.a.b;
import c.c.a.e.d.a.b.b.a;
import h.f.b.j;

/* compiled from: TokenRemoteDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final d f4927a;

    public e(d dVar) {
        j.b(dVar, "service");
        this.f4927a = dVar;
    }

    public final String a(String str) {
        j.b(str, "refreshToken");
        a a2 = this.f4927a.a(new b(str)).execute().a();
        if (a2 != null) {
            String a3 = a2.a();
            if (a3 != null) {
                return a3;
            }
        }
        return "";
    }
}
