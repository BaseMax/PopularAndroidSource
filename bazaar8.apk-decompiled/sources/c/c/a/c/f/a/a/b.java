package c.c.a.c.f.a.a;

import c.e.d.d.c;
import c.e.d.p;
import h.f.b.j;
import kotlin.Pair;

/* compiled from: HooksDelegation.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final a f4714a;

    public b(a aVar) {
        j.b(aVar, "hooks");
        this.f4714a = aVar;
    }

    public final <T> void a(c cVar, c.e.d.j jVar, T t) {
        j.b(cVar, "out");
        j.b(jVar, "gson");
        Pair<String, Object> a2 = this.f4714a.a(t);
        if (a2 != null) {
            p b2 = jVar.b(a2.b());
            cVar.e(a2.a());
            jVar.a(b2, cVar);
        }
    }
}
