package c.c.a.h.b;

import android.content.Context;
import c.c.a.e.d.i.r;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.gb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideNetworkStateHelperFactory */
public final class C0607gb implements c<r> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5978a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f5979b;

    public C0607gb(Ya ya, a<Context> aVar) {
        this.f5978a = ya;
        this.f5979b = aVar;
    }

    public static C0607gb a(Ya ya, a<Context> aVar) {
        return new C0607gb(ya, aVar);
    }

    public static r b(Ya ya, a<Context> aVar) {
        return a(ya, aVar.get());
    }

    public static r a(Ya ya, Context context) {
        r b2 = ya.b(context);
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public r get() {
        return b(this.f5978a, this.f5979b);
    }
}
