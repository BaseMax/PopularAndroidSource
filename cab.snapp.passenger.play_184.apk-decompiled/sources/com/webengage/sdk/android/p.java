package com.webengage.sdk.android;

import android.content.Context;
import android.os.Build;
import com.webengage.sdk.android.utils.e;
import com.webengage.sdk.android.utils.h;

public class p {

    /* renamed from: a  reason: collision with root package name */
    static o f5556a;

    /* renamed from: b  reason: collision with root package name */
    static o f5557b;

    private static o a() {
        if (f5557b == null) {
            f5557b = new s();
        }
        return f5557b;
    }

    public static o a(Context context) {
        if (!h.c() || !h.b()) {
            Logger.e("WebEngage", "Unable to initialize location module");
            return a();
        } else if (!e.a("android.permission.ACCESS_FINE_LOCATION", context.getApplicationContext())) {
            Logger.e("WebEngage", Build.VERSION.SDK_INT < 23 ? "Location Tracking is enabled but AndroidManifest is missing required permission : android.permission.ACCESS_FINE_LOCATION" : "Location Tracking is enabled but location permission is not granted to application");
            return a();
        } else {
            if (f5556a == null) {
                f5556a = new q(context.getApplicationContext());
            }
            return f5556a;
        }
    }
}
