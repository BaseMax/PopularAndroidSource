package com.mapbox.mapboxsdk.http;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.Mapbox;

public class HttpIdentifier {
    private HttpIdentifier() {
    }

    public static String getIdentifier() {
        return getIdentifier(Mapbox.getApplicationContext());
    }

    private static String getIdentifier(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return String.format("%s/%s (%s)", new Object[]{context.getPackageName(), packageInfo.versionName, Integer.valueOf(packageInfo.versionCode)});
        } catch (Exception e) {
            MapStrictMode.strictModeViolation((Throwable) e);
            return "";
        }
    }
}
