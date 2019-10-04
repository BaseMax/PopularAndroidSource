package c.c.a.h.b;

import c.c.a.e.d.b.C0375e;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.t  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideDownloadedAppDaoFactory */
public final class C0643t implements c<C0375e> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6023a;

    /* renamed from: b  reason: collision with root package name */
    public final a<AppDatabase> f6024b;

    public C0643t(C0629o oVar, a<AppDatabase> aVar) {
        this.f6023a = oVar;
        this.f6024b = aVar;
    }

    public static C0643t a(C0629o oVar, a<AppDatabase> aVar) {
        return new C0643t(oVar, aVar);
    }

    public static C0375e b(C0629o oVar, a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static C0375e a(C0629o oVar, AppDatabase appDatabase) {
        C0375e d2 = oVar.d(appDatabase);
        h.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }

    public C0375e get() {
        return b(this.f6023a, this.f6024b);
    }
}
