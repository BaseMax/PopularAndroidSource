package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.ReporterConfig;

public class kr extends kt {
    private static final pa<String> f = new ow(new ou("Native crash"));
    private static final pa<Activity> g = new ow(new ov("Activity"));
    private static final pa<Application> h = new ow(new ov("Application"));
    private static final pa<Context> i = new ow(new ov("Context"));
    private static final pa<DeferredDeeplinkParametersListener> j = new ow(new ov("Deeplink listener"));
    private static final pa<AppMetricaDeviceIDListener> k = new ow(new ov("DeviceID listener"));
    private static final pa<ReporterConfig> l = new ow(new ov("Reporter Config"));
    private static final pa<String> m = new ow(new ou("Deeplink"));
    private static final pa<String> n = new ow(new ou("Referral url"));
    private static final pa<String> o = new ow(new pb());

    public void a() {
    }

    public void b() {
    }

    public void a(String str) {
        f.a(str);
    }

    public void a(Application application) {
        h.a(application);
    }

    public void a(Activity activity) {
        g.a(activity);
    }

    public void b(String str) {
        m.a(str);
    }

    public void c(String str) {
        n.a(str);
    }

    public void a(Context context) {
        i.a(context);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        j.a(deferredDeeplinkParametersListener);
    }

    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        k.a(appMetricaDeviceIDListener);
    }

    public void b(Context context) {
        i.a(context);
    }

    public void a(Context context, String str) {
        i.a(context);
        o.a(str);
    }

    public void a(Context context, ReporterConfig reporterConfig) {
        i.a(context);
        l.a(reporterConfig);
    }
}
