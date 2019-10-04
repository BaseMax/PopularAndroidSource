package c.c.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import h.f.a.b;
import h.f.b.j;
import h.h;

/* compiled from: Analytics.kt */
public final class a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    public static b f4475a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f4476b;

    /* renamed from: c  reason: collision with root package name */
    public static final a f4477c = new a();

    public final void a(Context context, b<? super c, h> bVar) {
        j.b(context, "context");
        j.b(bVar, "buildAgent");
        synchronized (f4477c) {
            if (f4475a == null) {
                f4476b = false;
                c cVar = new c(context);
                bVar.a(cVar);
                f4475a = cVar.a();
                b bVar2 = f4475a;
                if (bVar2 != null) {
                    bVar2.b();
                }
            }
            h hVar = h.f14579a;
        }
    }

    public final void a(c.c.a.a.a.a aVar) {
        j.b(aVar, "event");
        if (!(f4475a != null)) {
            throw new IllegalArgumentException("Analytics.initialize() must be called.");
        } else if (!f4476b) {
            b bVar = f4475a;
            if (bVar != null) {
                bVar.a(aVar);
            }
        }
    }
}
