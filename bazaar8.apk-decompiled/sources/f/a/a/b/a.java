package f.a.a.b;

import android.content.Context;
import c.c.a.d.c.b;
import h.f.b.j;
import java.lang.ref.WeakReference;

/* compiled from: InlineDependencyInjector.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static f.a.a.c.a f13937a;

    /* renamed from: b  reason: collision with root package name */
    public static b f13938b;

    /* renamed from: c  reason: collision with root package name */
    public static c.c.a.e.d.u.a f13939c;

    /* renamed from: d  reason: collision with root package name */
    public static WeakReference<Context> f13940d;

    /* renamed from: e  reason: collision with root package name */
    public static final a f13941e = new a();

    public final Context a() {
        WeakReference<Context> weakReference = f13940d;
        if (weakReference != null) {
            return (Context) weakReference.get();
        }
        j.c("wrContext");
        throw null;
    }

    public final void a(Context context, f.a.a.c.a aVar, b bVar, c.c.a.e.d.u.a aVar2) {
        j.b(context, "context");
        j.b(aVar, "inlineNetwork");
        j.b(bVar, "accountManager");
        j.b(aVar2, "settingsRepository");
        f13937a = aVar;
        f13938b = bVar;
        f13939c = aVar2;
        f13940d = new WeakReference<>(context);
    }
}
