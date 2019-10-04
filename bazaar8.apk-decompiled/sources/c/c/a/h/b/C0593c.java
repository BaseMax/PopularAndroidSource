package c.c.a.h.b;

import android.content.Context;
import com.farsitel.bazaar.analytics.tracker.actionlog.data.local.ActionLogDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.c  reason: case insensitive filesystem */
/* compiled from: ActionLogModule_ActionLogDatabaseFactory */
public final class C0593c implements c<ActionLogDatabase> {

    /* renamed from: a  reason: collision with root package name */
    public final C0587a f5964a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f5965b;

    public C0593c(C0587a aVar, a<Context> aVar2) {
        this.f5964a = aVar;
        this.f5965b = aVar2;
    }

    public static C0593c a(C0587a aVar, a<Context> aVar2) {
        return new C0593c(aVar, aVar2);
    }

    public static ActionLogDatabase b(C0587a aVar, a<Context> aVar2) {
        return a(aVar, aVar2.get());
    }

    public static ActionLogDatabase a(C0587a aVar, Context context) {
        ActionLogDatabase a2 = aVar.a(context);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public ActionLogDatabase get() {
        return b(this.f5964a, this.f5965b);
    }
}
