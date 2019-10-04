package b.i.a;

import android.app.ActivityManager;
import android.os.Build;

/* compiled from: ActivityManagerCompat */
public final class c {
    public static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }
}
