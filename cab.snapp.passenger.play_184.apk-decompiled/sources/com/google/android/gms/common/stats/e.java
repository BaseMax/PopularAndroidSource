package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.g;
import java.util.List;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f3002a = new e();

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f3003b;
    private static boolean c = false;

    public static void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        zza(context, str, 8, str2, str3, str4, i2, list, 0);
    }

    public static void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        int i3 = i;
        List<String> list2 = list;
        if (f3003b == null) {
            f3003b = Boolean.FALSE;
        }
        if (f3003b.booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "missing wakeLock key. ".concat(valueOf);
                } else {
                    new String("missing wakeLock key. ");
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (7 == i3 || 8 == i3 || 10 == i3 || 11 == i3) {
                    if (list2 != null && list.size() == 1 && "com.google.android.gms".equals(list2.get(0))) {
                        list2 = null;
                    }
                    List<String> list3 = list2;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    int zzcw = g.zzcw(context);
                    String packageName = context.getPackageName();
                    WakeLockEvent wakeLockEvent = r1;
                    WakeLockEvent wakeLockEvent2 = new WakeLockEvent(currentTimeMillis, i, str2, i2, list3, str, elapsedRealtime, zzcw, str3, "com.google.android.gms".equals(packageName) ? null : packageName, g.zzcx(context), j, str4);
                    try {
                        context.startService(new Intent().setComponent(b.zzgdd).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
                    } catch (Exception e) {
                        Log.wtf("WakeLockTracker", e);
                    }
                }
            }
        }
    }

    public static e zzamf() {
        return f3002a;
    }
}
