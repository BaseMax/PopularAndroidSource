package c.c.a.d.a;

import android.content.Context;
import c.c.a.e.d.b.G;
import c.c.a.e.d.b.H;
import h.f.b.f;
import h.f.b.j;

/* compiled from: AppSettings.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile c.c.a.e.d.u.a f4743a;

    /* renamed from: b  reason: collision with root package name */
    public static final C0074a f4744b = new C0074a(null);

    /* renamed from: c.c.a.d.a.a$a  reason: collision with other inner class name */
    /* compiled from: AppSettings.kt */
    public static final class C0074a {
        public C0074a() {
        }

        public final c.c.a.e.d.u.a a(Context context) {
            j.b(context, "context");
            c.c.a.e.d.u.a a2 = a.f4743a;
            if (a2 == null) {
                synchronized (this) {
                    a2 = new c.c.a.e.d.u.a(new G(context, new H(context)));
                }
            }
            return a2;
        }

        public /* synthetic */ C0074a(f fVar) {
            this();
        }
    }
}
