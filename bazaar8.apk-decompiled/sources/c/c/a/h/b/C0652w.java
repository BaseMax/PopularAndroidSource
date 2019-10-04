package c.c.a.h.b;

import c.c.a.e.d.b.C0385o;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.w  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideMaliciousAppDaoFactory */
public final class C0652w implements c<C0385o> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6040a;

    /* renamed from: b  reason: collision with root package name */
    public final a<AppDatabase> f6041b;

    public C0652w(C0629o oVar, a<AppDatabase> aVar) {
        this.f6040a = oVar;
        this.f6041b = aVar;
    }

    public static C0652w a(C0629o oVar, a<AppDatabase> aVar) {
        return new C0652w(oVar, aVar);
    }

    public static C0385o b(C0629o oVar, a<AppDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static C0385o a(C0629o oVar, AppDatabase appDatabase) {
        C0385o f2 = oVar.f(appDatabase);
        h.a(f2, "Cannot return null from a non-@Nullable @Provides method");
        return f2;
    }

    public C0385o get() {
        return b(this.f6040a, this.f6041b);
    }
}
