package c.c.a.c.h;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import b.i.a.c;
import com.crashlytics.android.answers.SessionEvent;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: DeviceUtils.kt */
public final class d {
    public static final int a(Context context, float f2) {
        j.b(context, "$this$dpToPx");
        Resources resources = context.getResources();
        j.a((Object) resources, "this.resources");
        return Math.round(f2 * resources.getDisplayMetrics().density);
    }

    public static final int b() {
        Resources system = Resources.getSystem();
        j.a((Object) system, "Resources.getSystem()");
        return system.getDisplayMetrics().widthPixels;
    }

    public static final int c() {
        return Runtime.getRuntime().availableProcessors() * 2;
    }

    public static final int a() {
        Resources system = Resources.getSystem();
        j.a((Object) system, "Resources.getSystem()");
        return system.getDisplayMetrics().heightPixels;
    }

    public static final boolean a(int i2) {
        return Build.VERSION.SDK_INT >= i2;
    }

    public static final boolean a(Context context) {
        j.b(context, "$this$isHighPerformingDevice");
        Object systemService = context.getSystemService(SessionEvent.ACTIVITY_KEY);
        if (systemService != null) {
            ActivityManager activityManager = (ActivityManager) systemService;
            return !c.a(activityManager) && Runtime.getRuntime().availableProcessors() >= 4 && activityManager.getMemoryClass() >= 256;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.ActivityManager");
    }
}
