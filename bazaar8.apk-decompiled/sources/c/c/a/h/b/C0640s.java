package c.c.a.h.b;

import c.c.a.e.d.r.b.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.s  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideCommentDaoFactory */
public final class C0640s implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6017a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<AppDatabase> f6018b;

    public C0640s(C0629o oVar, g.a.a<AppDatabase> aVar) {
        this.f6017a = oVar;
        this.f6018b = aVar;
    }

    public static C0640s a(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return new C0640s(oVar, aVar);
    }

    public static a b(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static a a(C0629o oVar, AppDatabase appDatabase) {
        a c2 = oVar.c(appDatabase);
        h.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    public a get() {
        return b(this.f6017a, this.f6018b);
    }
}
