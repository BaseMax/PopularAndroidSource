package c.c.a.h.b;

import android.content.Context;
import com.farsitel.bazaar.data.db.AppDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.p  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvideAppDatabaseFactory */
public final class C0632p implements c<AppDatabase> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f5999a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6000b;

    public C0632p(C0629o oVar, a<Context> aVar) {
        this.f5999a = oVar;
        this.f6000b = aVar;
    }

    public static C0632p a(C0629o oVar, a<Context> aVar) {
        return new C0632p(oVar, aVar);
    }

    public static AppDatabase b(C0629o oVar, a<Context> aVar) {
        return a(oVar, aVar.get());
    }

    public static AppDatabase a(C0629o oVar, Context context) {
        AppDatabase a2 = oVar.a(context);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public AppDatabase get() {
        return b(this.f5999a, this.f6000b);
    }
}
