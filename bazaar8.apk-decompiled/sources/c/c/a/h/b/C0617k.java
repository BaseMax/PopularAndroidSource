package c.c.a.h.b;

import android.content.Context;
import c.c.a.e.d.u.a;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.k  reason: case insensitive filesystem */
/* compiled from: AppModule_ProvideSettingsRepositoryFactory */
public final class C0617k implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0611i f5990a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<Context> f5991b;

    public C0617k(C0611i iVar, g.a.a<Context> aVar) {
        this.f5990a = iVar;
        this.f5991b = aVar;
    }

    public static C0617k a(C0611i iVar, g.a.a<Context> aVar) {
        return new C0617k(iVar, aVar);
    }

    public static a b(C0611i iVar, g.a.a<Context> aVar) {
        return a(iVar, aVar.get());
    }

    public static a a(C0611i iVar, Context context) {
        a a2 = iVar.a(context);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public a get() {
        return b(this.f5990a, this.f5991b);
    }
}
