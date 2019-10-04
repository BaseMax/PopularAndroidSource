package com.google.android.gms.common.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static IntentFilter f3009a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: b  reason: collision with root package name */
    private static long f3010b;
    private static float c = Float.NaN;

    public static int zzcw(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3009a);
        int i = 0;
        if (((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0) {
            i = 1;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((m.zzamm() ? powerManager.isInteractive() : powerManager.isScreenOn() ? 1 : 0) << true) | i;
    }

    public static synchronized float zzcx(Context context) {
        synchronized (g.class) {
            if (SystemClock.elapsedRealtime() - f3010b >= 60000 || Float.isNaN(c)) {
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3009a);
                if (registerReceiver != null) {
                    c = ((float) registerReceiver.getIntExtra(FirebaseAnalytics.b.LEVEL, -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
                }
                f3010b = SystemClock.elapsedRealtime();
                float f = c;
                return f;
            }
            float f2 = c;
            return f2;
        }
    }
}
