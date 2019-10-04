package c.c.a.h.b;

import d.b.c;
import d.b.h;

/* compiled from: DeveloperModule_ServiceBaseUrlDetectorFactory */
public final class G implements c<c.c.a.g.c> {

    /* renamed from: a  reason: collision with root package name */
    public final D f5911a;

    public G(D d2) {
        this.f5911a = d2;
    }

    public static G a(D d2) {
        return new G(d2);
    }

    public static c.c.a.g.c b(D d2) {
        return c(d2);
    }

    public static c.c.a.g.c c(D d2) {
        c.c.a.g.c c2 = d2.c();
        h.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    public c.c.a.g.c get() {
        return b(this.f5911a);
    }
}
