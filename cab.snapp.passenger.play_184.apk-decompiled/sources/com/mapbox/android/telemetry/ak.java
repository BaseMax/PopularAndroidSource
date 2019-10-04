package com.mapbox.android.telemetry;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import b.c;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public final class ak {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f4962a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b  reason: collision with root package name */
    private static final Locale f4963b = Locale.US;
    private static final Map<Integer, String> c = new HashMap<Integer, String>() {
        {
            put(7, "1xRTT");
            put(4, "CDMA");
            put(2, "EDGE");
            put(14, "EHRPD");
            put(5, "EVDO_0");
            put(6, "EVDO_A");
            put(12, "EVDO_B");
            put(1, "GPRS");
            put(8, "HSDPA");
            put(10, "HSPA");
            put(15, "HSPAP");
            put(9, "HSUPA");
            put(11, "IDEN");
            put(13, "LTE");
            put(3, "UMTS");
            put(0, "Unknown");
        }
    };

    public static String toHumanReadableAscii(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt <= 31 || codePointAt >= 127) {
                c cVar = new c();
                cVar.writeUtf8(str, 0, i);
                while (i < length) {
                    int codePointAt2 = str.codePointAt(i);
                    cVar.writeUtf8CodePoint((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                    i += Character.charCount(codePointAt2);
                }
                return cVar.readUtf8();
            }
            i += Character.charCount(codePointAt);
        }
        return str;
    }

    public static String obtainUniversalUniqueIdentifier() {
        return UUID.randomUUID().toString();
    }

    public static String obtainApplicationState(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return "";
        }
        String packageName = context.getPackageName();
        for (ActivityManager.RunningAppProcessInfo next : runningAppProcesses) {
            if (next.importance == 100 && next.processName.equals(packageName)) {
                return "Foreground";
            }
        }
        return "Background";
    }

    public static int obtainBatteryLevel(Context context) {
        Intent d = d(context);
        if (d == null) {
            return -1;
        }
        int intExtra = d.getIntExtra(FirebaseAnalytics.b.LEVEL, -1);
        int intExtra2 = d.getIntExtra("scale", -1);
        if (intExtra < 0 || intExtra2 <= 0) {
            return -1;
        }
        return Math.round((((float) intExtra) / ((float) intExtra2)) * 100.0f);
    }

    public static boolean isPluggedIn(Context context) {
        Intent d = d(context);
        if (d == null) {
            return false;
        }
        int intExtra = d.getIntExtra("plugged", -1);
        boolean z = intExtra == 2;
        boolean z2 = intExtra == 1;
        if (z || z2) {
            return true;
        }
        return false;
    }

    public static String obtainCellularNetworkType(Context context) {
        return c.get(Integer.valueOf(((TelephonyManager) context.getSystemService("phone")).getNetworkType()));
    }

    public static String obtainCurrentDate() {
        return f4962a.format(new Date());
    }

    public static String generateCreateDateFormatted(Date date) {
        return f4962a.format(date);
    }

    static String a(String str, Context context) {
        String c2 = c(context);
        return TextUtils.isEmpty(c2) ? str : toHumanReadableAscii(String.format(f4963b, "%s %s", new Object[]{c2, str}));
    }

    static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    public static String retrieveVendorId() {
        if (x.f4995a == null) {
            return a();
        }
        String string = a(x.f4995a).getString("mapboxVendorId", "");
        if (a(string)) {
            string = a();
        }
        return string;
    }

    static SharedPreferences a(Context context) {
        return context.getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0);
    }

    private static String a() {
        String obtainUniversalUniqueIdentifier = obtainUniversalUniqueIdentifier();
        if (x.f4995a == null) {
            return obtainUniversalUniqueIdentifier;
        }
        SharedPreferences.Editor edit = a(x.f4995a).edit();
        edit.putString("mapboxVendorId", obtainUniversalUniqueIdentifier);
        edit.apply();
        return obtainUniversalUniqueIdentifier;
    }

    private static String c(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            return String.format(f4963b, "%s/%s/%s", new Object[]{packageName, packageInfo.versionName, Integer.valueOf(packageInfo.versionCode)});
        } catch (Exception unused) {
            return "";
        }
    }

    private static Intent d(Context context) {
        try {
            return context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (Exception e) {
            String.format("%s: Failed receiver registration for ACTION_BATTERY_CHANGED", new Object[]{e.toString()});
            return null;
        }
    }

    static boolean b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                return applicationInfo.metaData.getBoolean("com.mapbox.AdjustWakeUp", false);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }
}
