package c.c.a.d.h.b;

import android.os.Build;
import android.view.animation.Interpolator;

/* compiled from: PathInterpolatorCompat */
public class g {
    public static Interpolator a(float f2, float f3, float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            return h.a(f2, f3, f4, f5);
        }
        return i.a(f2, f3, f4, f5);
    }
}
