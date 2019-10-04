package c.c.a.h.b;

import c.c.a.e.d.r.a.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;

/* compiled from: DatabaseModule_ProvideCommentActionDaoFactory */
public final class r implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6011a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<AppDatabase> f6012b;

    public r(C0629o oVar, g.a.a<AppDatabase> aVar) {
        this.f6011a = oVar;
        this.f6012b = aVar;
    }

    public static r a(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return new r(oVar, aVar);
    }

    public static a b(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static a a(C0629o oVar, AppDatabase appDatabase) {
        a b2 = oVar.b(appDatabase);
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public a get() {
        return b(this.f6011a, this.f6012b);
    }
}
