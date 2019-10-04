package com.yandex.metrica.impl;

import android.location.Location;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.impl.ob.ne;
import java.util.HashMap;
import java.util.Map;
import org.a.b;
import org.a.c;

public class af {
    public String a(YandexMetricaConfig yandexMetricaConfig) {
        try {
            c cVar = new c();
            cVar.put("apikey", (Object) yandexMetricaConfig.apiKey);
            cVar.put("app_version", (Object) yandexMetricaConfig.appVersion);
            cVar.put("session_timeout", (Object) yandexMetricaConfig.sessionTimeout);
            cVar.put(FirebaseAnalytics.b.LOCATION, (Object) a(yandexMetricaConfig.location));
            cVar.put("preload_info", (Object) a(yandexMetricaConfig.preloadInfo));
            cVar.put("collect_apps", (Object) yandexMetricaConfig.installedAppCollecting);
            cVar.put("logs", (Object) yandexMetricaConfig.logs);
            cVar.put("crash_enabled", (Object) yandexMetricaConfig.crashReporting);
            cVar.put("crash_native_enabled", (Object) yandexMetricaConfig.nativeCrashReporting);
            cVar.put("location_enabled", (Object) yandexMetricaConfig.locationTracking);
            return cVar.toString();
        } catch (b unused) {
            return "";
        }
    }

    public YandexMetricaConfig a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                c cVar = new c(str);
                YandexMetricaConfig.Builder newConfigBuilder = YandexMetricaConfig.newConfigBuilder(cVar.getString("apikey"));
                if (cVar.has("app_version")) {
                    newConfigBuilder.withAppVersion(cVar.optString("app_version"));
                }
                if (cVar.has("session_timeout")) {
                    newConfigBuilder.withSessionTimeout(cVar.getInt("session_timeout"));
                }
                newConfigBuilder.withLocation(c(cVar.optString(FirebaseAnalytics.b.LOCATION)));
                newConfigBuilder.withPreloadInfo(b(cVar.optString("preload_info")));
                if (cVar.has("collect_apps")) {
                    newConfigBuilder.withInstalledAppCollecting(cVar.optBoolean("collect_apps"));
                }
                if (cVar.has("logs") && cVar.optBoolean("logs")) {
                    newConfigBuilder.withLogs();
                }
                if (cVar.has("crash_enabled")) {
                    newConfigBuilder.withCrashReporting(cVar.optBoolean("crash_enabled"));
                }
                if (cVar.has("crash_native_enabled")) {
                    newConfigBuilder.withNativeCrashReporting(cVar.optBoolean("crash_native_enabled"));
                }
                if (cVar.has("location_enabled")) {
                    newConfigBuilder.withLocationTracking(cVar.optBoolean("location_enabled"));
                }
                return newConfigBuilder.build();
            } catch (b unused) {
            }
        }
        return null;
    }

    private static String a(PreloadInfo preloadInfo) {
        if (preloadInfo == null) {
            return null;
        }
        try {
            c cVar = new c();
            cVar.put("trackid", (Object) preloadInfo.getTrackingId());
            cVar.put("params", (Object) ne.a((Map) preloadInfo.getAdditionalParams()));
            return cVar.toString();
        } catch (b unused) {
            return null;
        }
    }

    private static PreloadInfo b(String str) throws b {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c cVar = new c(str);
        if (cVar.has("trackid")) {
            str2 = cVar.optString("trackid");
        }
        PreloadInfo.Builder newBuilder = PreloadInfo.newBuilder(str2);
        HashMap<String, String> a2 = ne.a(cVar.optString("params"));
        if (a2 != null && a2.size() > 0) {
            for (Map.Entry next : a2.entrySet()) {
                newBuilder.setAdditionalParams((String) next.getKey(), (String) next.getValue());
            }
        }
        return newBuilder.build();
    }

    private static String a(Location location) {
        if (location == null) {
            return null;
        }
        try {
            c cVar = new c();
            cVar.put("provider", (Object) location.getProvider());
            cVar.put("time", location.getTime());
            cVar.put("accuracy", (double) location.getAccuracy());
            cVar.put("alt", location.getAltitude());
            cVar.put("lng", location.getLongitude());
            cVar.put("lat", location.getLatitude());
            return cVar.toString();
        } catch (b unused) {
            return null;
        }
    }

    private static Location c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            c cVar = new c(str);
            Location location = new Location(cVar.has("provider") ? cVar.optString("provider") : null);
            location.setLongitude(cVar.getDouble("lng"));
            location.setLatitude(cVar.getDouble("lat"));
            location.setTime(cVar.optLong("time"));
            location.setAccuracy((float) cVar.optDouble("accuracy"));
            location.setAltitude((double) ((float) cVar.optDouble("alt")));
            return location;
        } catch (b unused) {
            return null;
        }
    }
}
