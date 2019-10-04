package c.c.a.h.b;

import c.c.a.e.d.n.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.y  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvidePlayedVideoDaoFactory */
public final class C0657y implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6052a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<AppDatabase> f6053b;

    public C0657y(C0629o oVar, g.a.a<AppDatabase> aVar) {
        this.f6052a = oVar;
        this.f6053b = aVar;
    }

    public static C0657y a(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return new C0657y(oVar, aVar);
    }

    public static a b(C0629o oVar, g.a.a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static a a(C0629o oVar, AppDatabase appDatabase) {
        a g2 = oVar.g(appDatabase);
        h.a(g2, "Cannot return null from a non-@Nullable @Provides method");
        return g2;
    }

    public a get() {
        return b(this.f6052a, this.f6053b);
    }
}
