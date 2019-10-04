package c.c.a.h.b;

import c.c.a.e.d.d.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.q  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideBookmarkDaoFactory */
public final class C0635q implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6005a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<AppDatabase> f6006b;

    public C0635q(C0629o oVar, g.a.a<AppDatabase> aVar) {
        this.f6005a = oVar;
        this.f6006b = aVar;
    }

    public static C0635q a(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return new C0635q(oVar, aVar);
    }

    public static a b(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static a a(C0629o oVar, AppDatabase appDatabase) {
        a a2 = oVar.a(appDatabase);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public a get() {
        return b(this.f6005a, this.f6006b);
    }
}
