package c.c.a.d.b;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import h.f.b.j;

/* compiled from: MetricsExt.kt */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static DisplayMetrics f4754a;

    static {
        Resources system = Resources.getSystem();
        j.a((Object) system, "Resources.getSystem()");
        f4754a = system.getDisplayMetrics();
    }

    public static final int a(int i2) {
        return (int) (((float) i2) * f4754a.density);
    }
}
