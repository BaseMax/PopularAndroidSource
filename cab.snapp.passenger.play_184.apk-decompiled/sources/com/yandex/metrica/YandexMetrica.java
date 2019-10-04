package com.yandex.metrica;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.location.Location;
import com.yandex.metrica.impl.by;
import com.yandex.metrica.impl.ob.kq;
import com.yandex.metrica.impl.ob.ov;
import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;

public final class YandexMetrica {

    /* renamed from: a  reason: collision with root package name */
    private static final pa<Context> f5636a = new ow(new ov("Context"));

    /* renamed from: b  reason: collision with root package name */
    private static final pa<YandexMetricaConfig> f5637b = new ow(new ov("Config"));
    private static final pa<ReporterConfig> c = new ow(new ov("Reporter config"));
    private static final pa<Application> d = new ow(new ov("Application"));
    private static final pa<Activity> e = new ow(new ov("Activity"));
    private static final pa<BroadcastReceiver[]> f = new ow(new ov("Broadcast receivers"));
    private static final pa<DeferredDeeplinkParametersListener> g = new ow(new ov("Deferred deeplink parameters listener"));
    private static final pa<AppMetricaDeviceIDListener> h = new ow(new ov("AppMetrica DeviceID listener"));
    private static final kq i = new kq(by.a());

    public static int getLibraryApiLevel() {
        return 70;
    }

    public static String getLibraryVersion() {
        return "3.2.2";
    }

    private YandexMetrica() {
    }

    public static void activate(Context context, YandexMetricaConfig yandexMetricaConfig) {
        f5636a.a(context);
        f5637b.a(yandexMetricaConfig);
        i.a(context, yandexMetricaConfig);
    }

    public static void sendEventsBuffer() {
        i.e();
    }

    public static void resumeSession(Activity activity) {
        i.a(activity);
    }

    public static void pauseSession(Activity activity) {
        i.b(activity);
    }

    public static void enableActivityAutoTracking(Application application) {
        d.a(application);
        i.a(application);
    }

    public static void reportEvent(String str) {
        i.a(str);
    }

    public static void reportError(String str, Throwable th) {
        i.a(str, th);
    }

    public static void reportUnhandledException(Throwable th) {
        i.a(th);
    }

    public static void reportNativeCrash(String str) {
        i.b(str);
    }

    public static void reportEvent(String str, String str2) {
        i.a(str, str2);
    }

    public static void reportEvent(String str, Map<String, Object> map) {
        i.a(str, map);
    }

    public static void reportAppOpen(Activity activity) {
        e.a(activity);
        i.c(activity);
    }

    public static void reportAppOpen(String str) {
        i.c(str);
    }

    public static void reportReferralUrl(String str) {
        i.d(str);
    }

    public static void setLocation(Location location) {
        i.a(location);
    }

    public static void setLocationTracking(boolean z) {
        i.a(z);
    }

    public static void setLocationTracking(Context context, boolean z) {
        i.a(context, z);
    }

    public static void setStatisticsSending(Context context, boolean z) {
        i.b(context, z);
    }

    public static void activateReporter(Context context, ReporterConfig reporterConfig) {
        f5636a.a(context);
        c.a(reporterConfig);
        i.a(context, reporterConfig);
    }

    public static IReporter getReporter(Context context, String str) {
        f5636a.a(context);
        return i.a(context, str);
    }

    public static void registerReferrerBroadcastReceivers(BroadcastReceiver... broadcastReceiverArr) {
        f.a(broadcastReceiverArr);
        MetricaEventHandler.a(broadcastReceiverArr);
    }

    public static void requestDeferredDeeplinkParameters(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        g.a(deferredDeeplinkParametersListener);
        i.a(deferredDeeplinkParametersListener);
    }

    public static void requestAppMetricaDeviceID(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        h.a(appMetricaDeviceIDListener);
        i.a(appMetricaDeviceIDListener);
    }

    public static void setUserProfileID(String str) {
        i.e(str);
    }

    public static void reportUserProfile(UserProfile userProfile) {
        i.a(userProfile);
    }

    public static void reportRevenue(Revenue revenue) {
        i.a(revenue);
    }
}
