package com.mapbox.android.a.b;

import android.content.Context;
import com.google.android.gms.common.b;

public final class f {
    private f() {
    }

    @Deprecated
    public static c getBestLocationEngine(Context context, boolean z) {
        return getBestLocationEngine(context);
    }

    public static c getBestLocationEngine(Context context) {
        k.a(context, "context == null");
        boolean a2 = k.a("com.google.android.gms.location.LocationServices");
        if (k.a("com.google.android.gms.common.GoogleApiAvailability")) {
            a2 &= b.getInstance().isGooglePlayServicesAvailable(context) == 0;
        }
        if (a2) {
            return new g(new b(context.getApplicationContext()));
        }
        return new g(new j(context.getApplicationContext()));
    }
}
