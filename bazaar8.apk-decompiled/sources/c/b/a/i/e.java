package c.b.a.i;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* compiled from: LogTime */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final double f4431a;

    static {
        double d2 = 1.0d;
        if (Build.VERSION.SDK_INT >= 17) {
            d2 = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f4431a = d2;
    }

    @TargetApi(17)
    public static long a() {
        if (Build.VERSION.SDK_INT >= 17) {
            return SystemClock.elapsedRealtimeNanos();
        }
        return SystemClock.uptimeMillis();
    }

    public static double a(long j2) {
        double a2 = (double) (a() - j2);
        double d2 = f4431a;
        Double.isNaN(a2);
        return a2 * d2;
    }
}
