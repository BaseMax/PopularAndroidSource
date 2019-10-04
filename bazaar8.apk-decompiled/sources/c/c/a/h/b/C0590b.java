package c.c.a.h.b;

import c.c.a.a.b.a.a.b.a;
import com.farsitel.bazaar.analytics.tracker.actionlog.data.local.ActionLogDatabase;
import d.b.c;
import d.b.h;

/* renamed from: c.c.a.h.b.b  reason: case insensitive filesystem */
/* compiled from: ActionLogModule_ActionLogDaoFactory */
public final class C0590b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final C0587a f5960a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<ActionLogDatabase> f5961b;

    public C0590b(C0587a aVar, g.a.a<ActionLogDatabase> aVar2) {
        this.f5960a = aVar;
        this.f5961b = aVar2;
    }

    public static C0590b a(C0587a aVar, g.a.a<ActionLogDatabase> aVar2) {
        return new C0590b(aVar, aVar2);
    }

    public static a b(C0587a aVar, g.a.a<ActionLogDatabase> aVar2) {
        return a(aVar, aVar2.get());
    }

    public static a a(C0587a aVar, ActionLogDatabase actionLogDatabase) {
        a a2 = aVar.a(actionLogDatabase);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public a get() {
        return b(this.f5960a, this.f5961b);
    }
}
