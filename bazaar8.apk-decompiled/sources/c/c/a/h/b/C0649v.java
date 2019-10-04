package c.c.a.h.b;

import android.content.Context;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.v  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideLegacyDbHelperFactory */
public final class C0649v implements c<c.c.a.e.a.a.c> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6034a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6035b;

    public C0649v(C0629o oVar, a<Context> aVar) {
        this.f6034a = oVar;
        this.f6035b = aVar;
    }

    public static C0649v a(C0629o oVar, a<Context> aVar) {
        return new C0649v(oVar, aVar);
    }

    public static c.c.a.e.a.a.c b(C0629o oVar, a<Context> aVar) {
        return a(oVar, aVar.get());
    }

    public static c.c.a.e.a.a.c a(C0629o oVar, Context context) {
        c.c.a.e.a.a.c b2 = oVar.b(context);
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public c.c.a.e.a.a.c get() {
        return b(this.f6034a, this.f6035b);
    }
}
