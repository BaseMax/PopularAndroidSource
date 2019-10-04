package com.webengage.sdk.android.actions.database;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Address;
import android.location.Geocoder;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.actions.exception.AdvertisingIdException;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.utils.g;
import com.webengage.sdk.android.utils.h;
import com.webengage.sdk.android.utils.k;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class w {

    /* renamed from: a  reason: collision with root package name */
    private Context f5381a = null;

    w(Context context) {
        this.f5381a = context.getApplicationContext();
    }

    private boolean d() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
                if (Build.VERSION.SDK_INT >= 24) {
                    z = ((NotificationManager) this.f5381a.getSystemService("notification")).areNotificationsEnabled();
                }
                return z;
            }
            AppOpsManager appOpsManager = (AppOpsManager) this.f5381a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f5381a.getApplicationInfo();
            String packageName = this.f5381a.getApplicationContext().getPackageName();
            int i = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                return ((Integer) cls.getMethod("checkOpNoThrow", new Class[]{Integer.TYPE, Integer.TYPE, String.class}).invoke(appOpsManager, new Object[]{Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName})).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
                return true;
            }
        } catch (Exception unused2) {
        }
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        PackageInfo d = k.d(this.f5381a);
        hashMap.put("status_airplane_mode", Boolean.valueOf(x.c(this.f5381a)));
        hashMap.put("status_nfc", Boolean.valueOf(x.d(this.f5381a)));
        hashMap.put("status_wifi", x.e(this.f5381a));
        hashMap.put("status_bluetooth", x.f(this.f5381a));
        hashMap.put("status_gps", x.g(this.f5381a));
        hashMap.put("opt_in_push", Boolean.valueOf(d()));
        hashMap.put("android_id", Settings.Secure.getString(this.f5381a.getContentResolver(), "android_id"));
        if (h.h()) {
            AdvertisingIdClient.Info info = null;
            try {
                info = AdvertisingIdClient.getAdvertisingIdInfo(this.f5381a);
            } catch (Exception e) {
                WebEngage.startService(n.a(af.EXCEPTION, new AdvertisingIdException(e.getMessage()), this.f5381a), this.f5381a);
            }
            if (info != null) {
                hashMap.put("advertising_id", info.getId());
            }
        }
        if (d != null) {
            hashMap.put("app_installed_on", new Date(d.firstInstallTime));
        }
        hashMap.put("viewport_height", Integer.valueOf(b().heightPixels));
        hashMap.put("viewport_width", Integer.valueOf(b().widthPixels));
        hashMap.put("language", Locale.getDefault().getDisplayLanguage(Locale.US));
        String a2 = x.a(this.f5381a);
        if (a2 != null && !a2.isEmpty()) {
            hashMap.put("carrier", a2.toUpperCase());
        }
        String b2 = x.b(this.f5381a);
        if (b2 != null && !b2.isEmpty() && !b2.equalsIgnoreCase("UNKNOWN")) {
            hashMap.put("carrier_type", b2);
        }
        hashMap.put("model", Build.MODEL);
        hashMap.put("brand", Build.BRAND);
        hashMap.put("device", Build.DEVICE);
        hashMap.put("manufacturer", Build.MANUFACTURER);
        hashMap.put("release", Build.VERSION.RELEASE);
        hashMap.put("api_version", Integer.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("os_name", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("device_type", c());
        hashMap.put("locale", Locale.getDefault().toString());
        hashMap.put("time_zone", k.a());
        hashMap.put("tz_name", k.b());
        if (d != null) {
            hashMap.put("app_version", d.versionName);
            hashMap.put("app_version_code", Integer.valueOf(d.versionCode));
        }
        return hashMap;
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> a(Double d, Double d2) {
        if (!(d == null || d2 == null)) {
            try {
                Address address = new Geocoder(this.f5381a, Locale.ENGLISH).getFromLocation(d.doubleValue(), d2.doubleValue(), 1).get(0);
                HashMap hashMap = new HashMap();
                if (address != null) {
                    if (address.getLocality() != null && !address.getLocality().isEmpty()) {
                        hashMap.put("city", address.getLocality());
                    }
                    if (address.getCountryName() != null && !address.getCountryName().isEmpty()) {
                        hashMap.put("country", address.getCountryName());
                    }
                    if (address.getAdminArea() != null && !address.getAdminArea().isEmpty()) {
                        hashMap.put("region", address.getAdminArea());
                    }
                    if (address.getPostalCode() != null && !address.getPostalCode().isEmpty()) {
                        hashMap.put("postal_code", address.getPostalCode());
                    }
                    if (address.getFeatureName() != null && !address.getFeatureName().isEmpty()) {
                        hashMap.put("locality", address.getSubLocality());
                    }
                }
                return hashMap;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> a(Map<String, Object> map, boolean z) {
        k.d(this.f5381a);
        g gVar = new g();
        if (map != null) {
            gVar.a(map);
        }
        if (z) {
            gVar.a("status_airplane_mode", DataHolder.get().e("status_airplane_mode"));
            gVar.a("status_nfc", DataHolder.get().e("status_nfc"));
            gVar.a("status_wifi", DataHolder.get().e("status_wifi"));
            gVar.a("status_bluetooth", DataHolder.get().e("status_bluetooth"));
            gVar.a("status_gps", DataHolder.get().e("status_gps"));
            gVar.a("app_installed_on", DataHolder.get().e("app_installed_on"));
            gVar.a("android_id", DataHolder.get().e("android_id"));
            gVar.a("advertising_id", DataHolder.get().e("advertising_id"));
            gVar.put("tz_name", DataHolder.get().e("tz_name"));
            gVar.a("opt_in_push", DataHolder.get().e("opt_in_push"));
        }
        gVar.a("latitude", DataHolder.get().c());
        gVar.a("longitude", DataHolder.get().d());
        gVar.a("city", DataHolder.get().e());
        gVar.a("country", DataHolder.get().f());
        gVar.a("region", DataHolder.get().g());
        gVar.a("locality", DataHolder.get().h());
        gVar.a("postal_code", DataHolder.get().i());
        gVar.a("total_page_view_count", DataHolder.get().j(), 0L);
        gVar.a("page_view_count_session", DataHolder.get().k(), 0L);
        if ("online".equalsIgnoreCase(DataHolder.get().b())) {
            gVar.a("session_type", "online");
            gVar.a("session_count", DataHolder.get().l(), 0L);
            gVar.a("screen_name", DataHolder.get().p());
            gVar.a("screen_title", DataHolder.get().o());
            gVar.a("screen_path", DataHolder.get().n());
        } else {
            gVar.a("session_type", "background");
            gVar.a("session_count", DataHolder.get().m(), 0L);
        }
        gVar.a("viewport_height", DataHolder.get().e("viewport_height"));
        gVar.a("viewport_width", DataHolder.get().e("viewport_width"));
        gVar.a("language", DataHolder.get().e("language"));
        gVar.a("carrier", DataHolder.get().e("carrier"));
        gVar.a("carrier_type", DataHolder.get().e("carrier_type"));
        gVar.a("model", DataHolder.get().e("model"));
        gVar.a("brand", DataHolder.get().e("brand"));
        gVar.a("device", DataHolder.get().e("device"));
        gVar.a("manufacturer", DataHolder.get().e("manufacturer"));
        gVar.a("release", DataHolder.get().e("release"));
        gVar.a("api_version", DataHolder.get().e("api_version"));
        gVar.a("os_name", DataHolder.get().e("os_name"));
        gVar.a("os_version", DataHolder.get().e("os_version"));
        gVar.a("device_type", DataHolder.get().e("device_type"));
        gVar.a("locale", DataHolder.get().e("locale"));
        gVar.a("time_zone", DataHolder.get().e("time_zone"));
        gVar.a("tzo", DataHolder.get().w());
        gVar.a("app_version", DataHolder.get().e("app_version"));
        gVar.a("app_version_code", DataHolder.get().e("app_version_code"));
        return gVar;
    }

    /* access modifiers changed from: package-private */
    public DisplayMetrics b() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.f5381a.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* access modifiers changed from: package-private */
    public String c() {
        String str = "Mobile";
        try {
            DisplayMetrics b2 = b();
            int i = b2.widthPixels;
            int i2 = b2.heightPixels;
            double sqrt = Math.sqrt((double) ((i * i) + (i2 * i2)));
            double d = (double) b2.densityDpi;
            Double.isNaN(d);
            if (sqrt / d < 7.0d) {
                return str;
            }
            str = "Tablet";
            return str;
        } catch (Exception unused) {
        }
    }
}
