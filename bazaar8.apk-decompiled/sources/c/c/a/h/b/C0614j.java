package c.c.a.h.b;

import android.content.Context;
import com.farsitel.bazaar.app.BazaarApp;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.j  reason: case insensitive filesystem */
/* compiled from: AppModule_ProvideContextFactory */
public final class C0614j implements c<Context> {

    /* renamed from: a  reason: collision with root package name */
    public final C0611i f5988a;

    /* renamed from: b  reason: collision with root package name */
    public final a<BazaarApp> f5989b;

    public C0614j(C0611i iVar, a<BazaarApp> aVar) {
        this.f5988a = iVar;
        this.f5989b = aVar;
    }

    public static C0614j a(C0611i iVar, a<BazaarApp> aVar) {
        return new C0614j(iVar, aVar);
    }

    public static Context b(C0611i iVar, a<BazaarApp> aVar) {
        return a(iVar, aVar.get());
    }

    public static Context a(C0611i iVar, BazaarApp bazaarApp) {
        Context a2 = iVar.a(bazaarApp);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public Context get() {
        return b(this.f5988a, this.f5989b);
    }
}
