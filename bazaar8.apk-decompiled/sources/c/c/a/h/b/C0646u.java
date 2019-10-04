package c.c.a.h.b;

import c.c.a.e.d.h.e.a.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.u  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideDownloadedVideoDaoFactory */
public final class C0646u implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6028a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<AppDatabase> f6029b;

    public C0646u(C0629o oVar, g.a.a<AppDatabase> aVar) {
        this.f6028a = oVar;
        this.f6029b = aVar;
    }

    public static C0646u a(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return new C0646u(oVar, aVar);
    }

    public static a b(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static a a(C0629o oVar, AppDatabase appDatabase) {
        a e2 = oVar.e(appDatabase);
        h.a(e2, "Cannot return null from a non-@Nullable @Provides method");
        return e2;
    }

    public a get() {
        return b(this.f6028a, this.f6029b);
    }
}
