package c.c.a.h.b;

import c.c.a.g.a;
import d.b.c;
import d.b.h;

/* compiled from: DeveloperModule_DeveloperDashboardFactory */
public final class E implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final D f5901a;

    public E(D d2) {
        this.f5901a = d2;
    }

    public static E a(D d2) {
        return new E(d2);
    }

    public static a b(D d2) {
        return c(d2);
    }

    public static a c(D d2) {
        a a2 = d2.a();
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public a get() {
        return b(this.f5901a);
    }
}
