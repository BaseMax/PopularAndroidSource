package i.a;

import h.f.b.j;

/* compiled from: EventLoop.common.kt */
public final class Ma {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<C1089aa> f14649a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    public static final Ma f14650b = new Ma();

    public final C1089aa a() {
        return f14649a.get();
    }

    public final C1089aa b() {
        C1089aa aaVar = f14649a.get();
        if (aaVar != null) {
            return aaVar;
        }
        C1089aa a2 = C1098da.a();
        f14649a.set(a2);
        return a2;
    }

    public final void c() {
        f14649a.set(null);
    }

    public final void a(C1089aa aaVar) {
        j.b(aaVar, "eventLoop");
        f14649a.set(aaVar);
    }
}
