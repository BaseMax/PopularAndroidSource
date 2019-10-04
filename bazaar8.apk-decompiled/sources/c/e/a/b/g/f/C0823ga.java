package c.e.a.b.g.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

/* renamed from: c.e.a.b.g.f.ga  reason: case insensitive filesystem */
public class C0823ga {

    /* renamed from: a  reason: collision with root package name */
    public static volatile UserManager f10411a;

    /* renamed from: b  reason: collision with root package name */
    public static volatile boolean f10412b = (!a());

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @TargetApi(24)
    public static boolean b(Context context) {
        boolean z = f10412b;
        if (!z) {
            boolean z2 = z;
            int i2 = 1;
            while (true) {
                if (i2 > 2) {
                    break;
                }
                UserManager c2 = c(context);
                if (c2 == null) {
                    f10412b = true;
                    return true;
                }
                try {
                    if (!c2.isUserUnlocked()) {
                        if (c2.isUserRunning(Process.myUserHandle())) {
                            z2 = false;
                            f10412b = z2;
                        }
                    }
                    z2 = true;
                    f10412b = z2;
                } catch (NullPointerException e2) {
                    Log.w("DirectBootUtils", "Failed to check if user is unlocked", e2);
                    f10411a = null;
                    i2++;
                }
            }
            z = z2;
            if (z) {
                f10411a = null;
            }
        }
        return z;
    }

    @TargetApi(24)
    public static UserManager c(Context context) {
        UserManager userManager = f10411a;
        if (userManager == null) {
            synchronized (C0823ga.class) {
                userManager = f10411a;
                if (userManager == null) {
                    UserManager userManager2 = (UserManager) context.getSystemService(UserManager.class);
                    f10411a = userManager2;
                    userManager = userManager2;
                }
            }
        }
        return userManager;
    }

    public static boolean a(Context context) {
        return !a() || b(context);
    }
}
