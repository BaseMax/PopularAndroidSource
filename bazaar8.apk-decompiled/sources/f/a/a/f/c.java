package f.a.a.f;

import android.content.res.Resources;

/* compiled from: DimensionUtil */
public class c {
    public static int a(int i2) {
        return Math.round(((float) i2) * (Resources.getSystem().getDisplayMetrics().xdpi / 160.0f));
    }
}
