package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.ap;

public final class bv {

    /* renamed from: a  reason: collision with root package name */
    static Object f3106a = new Object();

    /* renamed from: b  reason: collision with root package name */
    static on f3107b;
    private static Boolean c;

    public static void onReceive(Context context, Intent intent) {
        bp zzwt = z.zzbm(context).zzwt();
        if (intent == null) {
            zzwt.zzdx("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzwt.zza("Local AnalyticsReceiver got", action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zzbo = bw.zzbo(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (f3106a) {
                context.startService(intent2);
                if (zzbo) {
                    try {
                        if (f3107b == null) {
                            on onVar = new on(context, 1, "Analytics WakeLock");
                            f3107b = onVar;
                            onVar.setReferenceCounted(false);
                        }
                        f3107b.acquire(1000);
                    } catch (SecurityException unused) {
                        zzwt.zzdx("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }

    public static boolean zzbk(Context context) {
        ap.checkNotNull(context);
        Boolean bool = c;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zzb = ce.zzb(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        c = Boolean.valueOf(zzb);
        return zzb;
    }
}
