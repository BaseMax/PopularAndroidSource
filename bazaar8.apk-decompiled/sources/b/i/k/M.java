package b.i.k;

import android.os.Build;
import android.view.WindowInsets;

/* compiled from: WindowInsetsCompat */
public class M {

    /* renamed from: a  reason: collision with root package name */
    public final Object f2778a;

    public M(Object obj) {
        this.f2778a = obj;
    }

    public M a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new M(((WindowInsets) this.f2778a).consumeSystemWindowInsets());
        }
        return null;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2778a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2778a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2778a).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int e() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2778a).getSystemWindowInsetTop();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || M.class != obj.getClass()) {
            return false;
        }
        M m = (M) obj;
        Object obj2 = this.f2778a;
        if (obj2 != null) {
            z = obj2.equals(m.f2778a);
        } else if (m.f2778a != null) {
            z = false;
        }
        return z;
    }

    public boolean f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f2778a).isConsumed();
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f2778a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public M a(int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new M(((WindowInsets) this.f2778a).replaceSystemWindowInsets(i2, i3, i4, i5));
        }
        return null;
    }

    public static M a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new M(obj);
    }

    public static Object a(M m) {
        if (m == null) {
            return null;
        }
        return m.f2778a;
    }
}
