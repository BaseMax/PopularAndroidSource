package c.b.a.c.b;

import c.b.a.c.c;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Jobs */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public final Map<c, t<?>> f4044a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Map<c, t<?>> f4045b = new HashMap();

    public t<?> a(c cVar, boolean z) {
        return a(z).get(cVar);
    }

    public void b(c cVar, t<?> tVar) {
        Map<c, t<?>> a2 = a(tVar.g());
        if (tVar.equals(a2.get(cVar))) {
            a2.remove(cVar);
        }
    }

    public void a(c cVar, t<?> tVar) {
        a(tVar.g()).put(cVar, tVar);
    }

    public final Map<c, t<?>> a(boolean z) {
        return z ? this.f4045b : this.f4044a;
    }
}
