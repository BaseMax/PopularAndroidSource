package c.e.c.h;

import c.e.c.b.e;
import c.e.c.b.f;
import c.e.c.b.i;
import c.e.c.b.q;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class c implements g {

    /* renamed from: a  reason: collision with root package name */
    public final String f11717a;

    /* renamed from: b  reason: collision with root package name */
    public final d f11718b;

    public c(Set<e> set, d dVar) {
        this.f11717a = a(set);
        this.f11718b = dVar;
    }

    public static e<g> b() {
        e.a<g> a2 = e.a(g.class);
        a2.a(q.b(e.class));
        a2.a((i<g>) b.a());
        return a2.b();
    }

    public String a() {
        if (this.f11718b.b().isEmpty()) {
            return this.f11717a;
        }
        return this.f11717a + ' ' + a(this.f11718b.b());
    }

    public static String a(Set<e> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<e> it = set.iterator();
        while (it.hasNext()) {
            e next = it.next();
            sb.append(next.a());
            sb.append('/');
            sb.append(next.b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public static /* synthetic */ g a(f fVar) {
        return new c(fVar.d(e.class), d.a());
    }
}
