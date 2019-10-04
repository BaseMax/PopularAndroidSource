package c.c.a.h.b;

import c.c.a.g.b;
import d.b.c;
import d.b.h;

/* compiled from: DeveloperModule_DeveloperToolsFactory */
public final class F implements c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final D f5906a;

    public F(D d2) {
        this.f5906a = d2;
    }

    public static F a(D d2) {
        return new F(d2);
    }

    public static b b(D d2) {
        return c(d2);
    }

    public static b c(D d2) {
        b b2 = d2.b();
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public b get() {
        return b(this.f5906a);
    }
}
