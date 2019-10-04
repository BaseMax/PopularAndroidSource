package com.adjust.sdk;

import android.content.ContentResolver;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.a.c;

final class b {
    private static ILogger o = AdjustFactory.getLogger();

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f1943a;

    /* renamed from: b  reason: collision with root package name */
    AdjustAttribution f1944b;
    String c;
    String d;
    String e;
    String f;
    long g = -1;
    long h = -1;
    long i = -1;
    private AdjustConfig j;
    private a k;
    private a l;
    private SessionParameters m;
    private long n;

    class a {

        /* renamed from: a  reason: collision with root package name */
        long f1945a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f1946b = -1;
        String c = null;
        int d = -1;
        int e = -1;
        long f = -1;
        long g = -1;
        String h = null;

        a(ActivityState activityState) {
            if (activityState != null) {
                this.f1945a = activityState.lastInterval;
                this.f1946b = activityState.eventCount;
                this.c = activityState.uuid;
                this.d = activityState.sessionCount;
                this.e = activityState.subsessionCount;
                this.f = activityState.sessionLength;
                this.g = activityState.timeSpent;
                this.h = activityState.pushToken;
            }
        }
    }

    public b(AdjustConfig adjustConfig, a aVar, ActivityState activityState, SessionParameters sessionParameters, long j2) {
        this.j = adjustConfig;
        this.k = aVar;
        this.l = new a(activityState);
        this.m = sessionParameters;
        this.n = j2;
    }

    public final ActivityPackage buildSessionPackage(boolean z) {
        Map<String, String> a2 = a(z);
        ActivityPackage a3 = a(ActivityKind.SESSION);
        a3.setPath("/session");
        a3.setSuffix("");
        a3.setParameters(a2);
        return a3;
    }

    public final ActivityPackage buildEventPackage(AdjustEvent adjustEvent, boolean z) {
        String str;
        Map<String, String> a2 = a();
        addLong(a2, "event_count", (long) this.l.f1946b);
        addString(a2, "event_token", adjustEvent.eventToken);
        addDouble(a2, "revenue", adjustEvent.revenue);
        addString(a2, FirebaseAnalytics.b.CURRENCY, adjustEvent.currency);
        if (!z) {
            addMapJson(a2, Constants.CALLBACK_PARAMETERS, Util.mergeParameters(this.m.callbackParameters, adjustEvent.callbackParameters, "Callback"));
            addMapJson(a2, Constants.PARTNER_PARAMETERS, Util.mergeParameters(this.m.partnerParameters, adjustEvent.partnerParameters, "Partner"));
        }
        ActivityPackage a3 = a(ActivityKind.EVENT);
        a3.setPath("/event");
        if (adjustEvent.revenue == null) {
            str = Util.formatString("'%s'", adjustEvent.eventToken);
        } else {
            str = Util.formatString("(%.5f %s, '%s')", adjustEvent.revenue, adjustEvent.currency, adjustEvent.eventToken);
        }
        a3.setSuffix(str);
        a3.setParameters(a2);
        if (z) {
            a3.setCallbackParameters(adjustEvent.callbackParameters);
            a3.setPartnerParameters(adjustEvent.partnerParameters);
        }
        return a3;
    }

    public final ActivityPackage buildClickPackage(String str) {
        Map<String, String> a2 = a(false);
        addString(a2, "source", str);
        addDateInMilliseconds(a2, "click_time", this.g);
        addString(a2, Constants.REFTAG, this.c);
        addMapJson(a2, "params", this.f1943a);
        addString(a2, Constants.REFERRER, this.d);
        addString(a2, "raw_referrer", this.e);
        addString(a2, Constants.DEEPLINK, this.f);
        addDateInSeconds(a2, "click_time", this.h);
        addDateInSeconds(a2, "install_begin_time", this.i);
        AdjustAttribution adjustAttribution = this.f1944b;
        if (adjustAttribution != null) {
            addString(a2, "tracker", adjustAttribution.trackerName);
            addString(a2, FirebaseAnalytics.b.CAMPAIGN, this.f1944b.campaign);
            addString(a2, "adgroup", this.f1944b.adgroup);
            addString(a2, "creative", this.f1944b.creative);
        }
        ActivityPackage a3 = a(ActivityKind.CLICK);
        a3.setPath("/sdk_click");
        a3.setSuffix("");
        a3.setClickTimeInMilliseconds(this.g);
        a3.setClickTimeInSeconds(this.h);
        a3.setInstallBeginTimeInSeconds(this.i);
        a3.setParameters(a2);
        return a3;
    }

    public final ActivityPackage buildInfoPackage(String str) {
        Map<String, String> b2 = b();
        addString(b2, "source", str);
        ActivityPackage a2 = a(ActivityKind.INFO);
        a2.setPath("/sdk_info");
        a2.setSuffix("");
        a2.setParameters(b2);
        return a2;
    }

    public final ActivityPackage buildAttributionPackage() {
        Map<String, String> b2 = b();
        ActivityPackage a2 = a(ActivityKind.ATTRIBUTION);
        a2.setPath("attribution");
        a2.setSuffix("");
        a2.setParameters(b2);
        return a2;
    }

    private ActivityPackage a(ActivityKind activityKind) {
        ActivityPackage activityPackage = new ActivityPackage(activityKind);
        activityPackage.setClientSdk(this.k.g);
        return activityPackage;
    }

    private Map<String, String> a(boolean z) {
        Map<String, String> a2 = a();
        addDuration(a2, "last_interval", this.l.f1945a);
        addString(a2, "default_tracker", this.j.defaultTracker);
        addString(a2, "installed_at", this.k.A);
        addString(a2, "updated_at", this.k.B);
        if (!z) {
            addMapJson(a2, Constants.CALLBACK_PARAMETERS, this.m.callbackParameters);
            addMapJson(a2, Constants.PARTNER_PARAMETERS, this.m.partnerParameters);
        }
        return a2;
    }

    private Map<String, String> a() {
        HashMap hashMap = new HashMap();
        a((Map<String, String>) hashMap);
        c(hashMap);
        d(hashMap);
        e(hashMap);
        f(hashMap);
        return hashMap;
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        b(hashMap);
        c(hashMap);
        e(hashMap);
        f(hashMap);
        return hashMap;
    }

    private void a(Map<String, String> map) {
        b(map);
        addString(map, "fb_id", this.k.f);
        addString(map, "package_name", this.k.h);
        addString(map, "app_version", this.k.i);
        addString(map, "device_type", this.k.j);
        addString(map, "device_name", this.k.k);
        addString(map, "device_manufacturer", this.k.l);
        addString(map, "os_name", this.k.m);
        addString(map, "os_version", this.k.n);
        addString(map, "api_level", this.k.o);
        addString(map, "language", this.k.p);
        addString(map, "country", this.k.q);
        addString(map, "screen_size", this.k.r);
        addString(map, "screen_format", this.k.s);
        addString(map, "screen_density", this.k.t);
        addString(map, "display_width", this.k.u);
        addString(map, "display_height", this.k.v);
        addString(map, "hardware_name", this.k.w);
        addString(map, "cpu_type", this.k.x);
        addString(map, "os_build", this.k.y);
        addString(map, "vm_isa", this.k.z);
        addString(map, "mcc", Util.getMcc(this.j.context));
        addString(map, "mnc", Util.getMnc(this.j.context));
        addLong(map, "connectivity_type", (long) Util.getConnectivityType(this.j.context));
        addLong(map, "network_type", (long) Util.getNetworkType(this.j.context));
        g(map);
    }

    private void b(Map<String, String> map) {
        this.k.a(this.j.context);
        addBoolean(map, "tracking_enabled", this.k.f1942b);
        addString(map, "gps_adid", this.k.f1941a);
        if (this.k.f1941a == null) {
            addString(map, "mac_sha1", this.k.c);
            addString(map, "mac_md5", this.k.d);
            addString(map, "android_id", this.k.e);
        }
    }

    private void c(Map<String, String> map) {
        addString(map, "app_token", this.j.appToken);
        addString(map, "environment", this.j.environment);
        addBoolean(map, "device_known", this.j.deviceKnown);
        addBoolean(map, "event_buffering_enabled", Boolean.valueOf(this.j.eventBufferingEnabled));
        addString(map, "push_token", this.l.h);
        ContentResolver contentResolver = this.j.context.getContentResolver();
        addString(map, "fire_adid", Util.getFireAdvertisingId(contentResolver));
        addBoolean(map, "fire_tracking_enabled", Util.getFireTrackingEnabled(contentResolver));
        addString(map, "secret_id", this.j.secretId);
        addString(map, "app_secret", this.j.appSecret);
        if (this.j.readMobileEquipmentIdentity) {
            TelephonyManager telephonyManager = (TelephonyManager) this.j.context.getSystemService("phone");
            addString(map, "device_ids", Util.getTelephonyIds(telephonyManager));
            addString(map, "imeis", Util.getIMEIs(telephonyManager));
            addString(map, "meids", Util.getMEIDs(telephonyManager));
        }
    }

    private void d(Map<String, String> map) {
        addString(map, "android_uuid", this.l.c);
        addLong(map, "session_count", (long) this.l.d);
        addLong(map, "subsession_count", (long) this.l.e);
        addDuration(map, "session_length", this.l.f);
        addDuration(map, "time_spent", this.l.g);
    }

    private void e(Map<String, String> map) {
        addDateInMilliseconds(map, "created_at", this.n);
        addBoolean(map, "attribution_deeplink", Boolean.TRUE);
        addBoolean(map, "needs_response_details", Boolean.TRUE);
    }

    private static void f(Map<String, String> map) {
        if (!map.containsKey("mac_sha1") && !map.containsKey("mac_md5") && !map.containsKey("android_id") && !map.containsKey("gps_adid")) {
            o.error("Missing device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
        }
    }

    private void g(Map<String, String> map) {
        if (this.k.C != null) {
            for (Map.Entry next : this.k.C.entrySet()) {
                addString(map, (String) next.getKey(), (String) next.getValue());
            }
        }
    }

    public static void addString(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    public static void addLong(Map<String, String> map, String str, long j2) {
        if (j2 >= 0) {
            addString(map, str, Long.toString(j2));
        }
    }

    public static void addDateInMilliseconds(Map<String, String> map, String str, long j2) {
        if (j2 > 0) {
            addDate(map, str, new Date(j2));
        }
    }

    public static void addDateInSeconds(Map<String, String> map, String str, long j2) {
        if (j2 > 0) {
            addDate(map, str, new Date(j2 * 1000));
        }
    }

    public static void addDate(Map<String, String> map, String str, Date date) {
        if (date != null) {
            addString(map, str, Util.dateFormatter.format(date));
        }
    }

    public static void addDuration(Map<String, String> map, String str, long j2) {
        if (j2 >= 0) {
            addLong(map, str, (j2 + 500) / 1000);
        }
    }

    public static void addMapJson(Map<String, String> map, String str, Map<String, String> map2) {
        if (map2 != null && map2.size() != 0) {
            addString(map, str, new c((Map<?, ?>) map2).toString());
        }
    }

    public static void addBoolean(Map<String, String> map, String str, Boolean bool) {
        if (bool != null) {
            addLong(map, str, bool.booleanValue() ? 1 : 0);
        }
    }

    public static void addDouble(Map<String, String> map, String str, Double d2) {
        if (d2 != null) {
            addString(map, str, Util.formatString("%.5f", d2));
        }
    }
}
