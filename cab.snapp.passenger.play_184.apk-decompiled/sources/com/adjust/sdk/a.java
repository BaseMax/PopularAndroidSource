package com.adjust.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

final class a {
    String A;
    String B;
    Map<String, String> C;
    private boolean D = false;

    /* renamed from: a  reason: collision with root package name */
    String f1941a;

    /* renamed from: b  reason: collision with root package name */
    Boolean f1942b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;
    String l;
    String m;
    String n;
    String o;
    String p;
    String q;
    String r;
    String s;
    String t;
    String u;
    String v;
    String w;
    String x;
    String y;
    String z;

    a(Context context, String str) {
        String str2;
        String str3;
        String str4;
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        Locale locale = Util.getLocale(configuration);
        int i2 = configuration.screenLayout;
        context.getContentResolver();
        a(context);
        this.h = context.getPackageName();
        this.i = b(context);
        int i3 = i2 & 15;
        String str5 = null;
        this.j = (i3 == 1 || i3 == 2) ? "phone" : (i3 == 3 || i3 == 4) ? "tablet" : null;
        this.k = Build.MODEL;
        this.l = Build.MANUFACTURER;
        this.m = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
        this.n = Build.VERSION.RELEASE;
        this.o = Build.VERSION.SDK_INT;
        this.p = locale.getLanguage();
        this.q = locale.getCountry();
        if (i3 == 1) {
            str2 = Constants.SMALL;
        } else if (i3 != 2) {
            str2 = i3 != 3 ? i3 != 4 ? null : Constants.XLARGE : Constants.LARGE;
        } else {
            str2 = Constants.NORMAL;
        }
        this.r = str2;
        int i4 = i2 & 48;
        if (i4 != 16) {
            str3 = i4 != 32 ? null : Constants.LONG;
        } else {
            str3 = Constants.NORMAL;
        }
        this.s = str3;
        int i5 = displayMetrics.densityDpi;
        this.t = i5 != 0 ? i5 < 140 ? Constants.LOW : i5 > 200 ? Constants.HIGH : "medium" : str5;
        this.u = String.valueOf(displayMetrics.widthPixels);
        this.v = String.valueOf(displayMetrics.heightPixels);
        this.g = str != null ? Util.formatString("%s@%s", str, Constants.CLIENT_SDK) : r1;
        this.f = c(context);
        this.C = Util.getPluginKeys(context);
        this.w = Build.DISPLAY;
        String[] supportedAbis = Util.getSupportedAbis();
        if (supportedAbis == null || supportedAbis.length == 0) {
            str4 = Util.getCpuAbi();
        } else {
            str4 = supportedAbis[0];
        }
        this.x = str4;
        this.y = Build.ID;
        this.z = Util.getVmInstructionSet();
        this.A = d(context);
        this.B = e(context);
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context) {
        this.f1942b = Util.isPlayTrackingEnabled(context);
        this.f1941a = Util.getPlayAdId(context);
        if (this.f1941a == null && !this.D) {
            if (!Util.checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                AdjustFactory.getLogger().warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]);
            }
            String macAddress = Util.getMacAddress(context);
            this.c = a(macAddress);
            this.d = b(macAddress);
            this.e = Util.getAndroidId(context);
            this.D = true;
        }
    }

    private static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        return Util.sha1(str);
    }

    private static String b(String str) {
        if (str == null) {
            return null;
        }
        return Util.md5(str.replaceAll(":", ""));
    }

    private static String c(Context context) {
        try {
            Cursor query = context.getContentResolver().query(Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider"), new String[]{"aid"}, null, null, null);
            if (query == null) {
                return null;
            }
            if (!query.moveToFirst()) {
                query.close();
                return null;
            }
            String string = query.getString(query.getColumnIndex("aid"));
            query.close();
            return string;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String d(Context context) {
        try {
            return Util.dateFormatter.format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).firstInstallTime));
        } catch (Exception unused) {
            return null;
        }
    }

    private static String e(Context context) {
        try {
            return Util.dateFormatter.format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).lastUpdateTime));
        } catch (Exception unused) {
            return null;
        }
    }
}
