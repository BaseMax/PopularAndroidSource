package c.e.a.b.d.a.a;

import android.app.Activity;
import b.o.a.C0285i;
import c.e.a.b.d.d.r;

/* renamed from: c.e.a.b.d.a.a.e  reason: case insensitive filesystem */
public class C0757e {

    /* renamed from: a  reason: collision with root package name */
    public final Object f9893a;

    public C0757e(Activity activity) {
        r.a(activity, (Object) "Activity must not be null");
        this.f9893a = activity;
    }

    public Activity a() {
        return (Activity) this.f9893a;
    }

    public C0285i b() {
        return (C0285i) this.f9893a;
    }

    public boolean c() {
        return this.f9893a instanceof C0285i;
    }

    public final boolean d() {
        return this.f9893a instanceof Activity;
    }
}
