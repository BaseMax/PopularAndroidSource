package c.e.a.b.d.h;

import android.content.Context;
import c.e.a.b.d.g.n;

public class a {

    /* renamed from: a  reason: collision with root package name */
    public static Context f10072a;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f10073b;

    public static synchronized boolean a(Context context) {
        synchronized (a.class) {
            Context applicationContext = context.getApplicationContext();
            if (f10072a == null || f10073b == null || f10072a != applicationContext) {
                f10073b = null;
                if (n.i()) {
                    f10073b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f10073b = true;
                    } catch (ClassNotFoundException unused) {
                        f10073b = false;
                    }
                }
                f10072a = applicationContext;
                boolean booleanValue = f10073b.booleanValue();
                return booleanValue;
            }
            boolean booleanValue2 = f10073b.booleanValue();
            return booleanValue2;
        }
    }
}
