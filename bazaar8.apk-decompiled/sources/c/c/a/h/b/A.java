package c.c.a.h.b;

import c.c.a.e.d.b.L;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* compiled from: DatabaseModule_ProvideUpgradableAppDaoFactory */
public final class A implements c<L> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f5883a;

    /* renamed from: b  reason: collision with root package name */
    public final a<AppDatabase> f5884b;

    public A(C0629o oVar, a<AppDatabase> aVar) {
        this.f5883a = oVar;
        this.f5884b = aVar;
    }

    public static A a(C0629o oVar, a<AppDatabase> aVar) {
        return new A(oVar, aVar);
    }

    public static L b(C0629o oVar, a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static L a(C0629o oVar, AppDatabase appDatabase) {
        L h2 = oVar.h(appDatabase);
        h.a(h2, "Cannot return null from a non-@Nullable @Provides method");
        return h2;
    }

    public L get() {
        return b(this.f5883a, this.f5884b);
    }
}
