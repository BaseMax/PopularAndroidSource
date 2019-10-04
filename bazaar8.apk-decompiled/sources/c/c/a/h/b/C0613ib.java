package c.c.a.h.b;

import c.c.a.e.d.i.y;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.ib  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideStorageHelperFactory */
public final class C0613ib implements c<y> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5987a;

    public C0613ib(Ya ya) {
        this.f5987a = ya;
    }

    public static C0613ib a(Ya ya) {
        return new C0613ib(ya);
    }

    public static y b(Ya ya) {
        return c(ya);
    }

    public static y c(Ya ya) {
        y c2 = ya.c();
        h.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    public y get() {
        return b(this.f5987a);
    }
}
