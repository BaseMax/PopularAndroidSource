package com.yandex.metrica.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.ob.nh;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Locale;

public final class av {

    /* renamed from: a  reason: collision with root package name */
    private static final nh<Integer, a> f5722a = new nh<Integer, a>(a.UNDEFINED) {
        {
            a(1, a.WIFI);
            a(0, a.CELL);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final nh<a, Integer> f5723b = new nh<a, Integer>(2) {
        {
            a(a.CELL, 0);
            a(a.WIFI, 1);
        }
    };

    public enum a {
        WIFI,
        CELL,
        OFFLINE,
        UNDEFINED
    }

    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f5726a = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};

        public static boolean a() {
            try {
                if (new File("/system/app/Superuser.apk").exists()) {
                    return true;
                }
            } catch (Throwable unused) {
            }
            return false;
        }

        public static boolean b() {
            String[] strArr = f5726a;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                try {
                    if (new File(str + "su").exists()) {
                        return true;
                    }
                    i++;
                } catch (Throwable unused) {
                }
            }
            return false;
        }

        public static int c() {
            return (a() || b()) ? 1 : 0;
        }
    }

    public static com.yandex.metrica.a a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point b2 = b(context);
        int i = b2.x;
        int i2 = b2.y;
        float f = displayMetrics.density;
        float f2 = (float) i;
        float f3 = (float) i2;
        float min = Math.min(f2 / f, f3 / f);
        float f4 = f * 160.0f;
        float f5 = f2 / f4;
        float f6 = f3 / f4;
        double sqrt = Math.sqrt((double) ((f5 * f5) + (f6 * f6)));
        if (sqrt >= 15.0d && !context.getPackageManager().hasSystemFeature("android.hardware.touchscreen")) {
            return com.yandex.metrica.a.TV;
        }
        if (sqrt >= 7.0d || min >= 600.0f) {
            return com.yandex.metrica.a.TABLET;
        }
        return com.yandex.metrica.a.PHONE;
    }

    public static Point b(Context context) {
        int i;
        int i2;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 17) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            if (Build.VERSION.SDK_INT >= 14) {
                try {
                    Method method = Display.class.getMethod("getRawHeight", new Class[0]);
                    int intValue = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                    i2 = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
                    i = intValue;
                } catch (Exception unused) {
                }
            }
            int width = defaultDisplay.getWidth();
            i2 = defaultDisplay.getHeight();
            i = width;
        }
        return new Point(i, i2);
    }

    public static Integer c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return null;
        }
        int intExtra = registerReceiver.getIntExtra(FirebaseAnalytics.b.LEVEL, -1);
        int intExtra2 = registerReceiver.getIntExtra("scale", -1);
        if (intExtra < 0 || intExtra2 <= 0) {
            return null;
        }
        return Integer.valueOf(Math.round((((float) intExtra) / ((float) intExtra2)) * 100.0f));
    }

    public static String a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuilder sb = new StringBuilder(language);
        if (bv.a(21)) {
            String script = locale.getScript();
            if (!TextUtils.isEmpty(script)) {
                sb.append('-');
                sb.append(script);
            }
        }
        if (!TextUtils.isEmpty(country)) {
            sb.append('_');
            sb.append(country);
        }
        return sb.toString();
    }

    public static a d(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        a aVar = a.UNDEFINED;
        if (!au.a(context, "android.permission.ACCESS_NETWORK_STATE") || connectivityManager == null) {
            return aVar;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return aVar;
        }
        if (activeNetworkInfo.isConnected()) {
            return f5722a.a(Integer.valueOf(activeNetworkInfo.getType()));
        }
        return a.OFFLINE;
    }

    public static int e(Context context) {
        return f5723b.a(d(context)).intValue();
    }

    public static long a(boolean z) {
        try {
            StatFs b2 = b(z);
            return (((long) b2.getBlockCount()) * ((long) b2.getBlockSize())) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static StatFs b(boolean z) {
        if (!z) {
            return new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        }
        return new StatFs(Environment.getRootDirectory().getAbsolutePath());
    }

    public static long c(boolean z) {
        try {
            StatFs b2 = b(z);
            return (((long) b2.getAvailableBlocks()) * ((long) b2.getBlockSize())) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        } catch (Throwable unused) {
            return 0;
        }
    }
}
