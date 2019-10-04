package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;

class au {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, at> f5522a = new HashMap();

    private static synchronized at a(Context context, Intent intent) {
        synchronized (au.class) {
            ResolveInfo resolveService = context.getApplicationContext().getPackageManager().resolveService(intent, 0);
            if (resolveService != null) {
                ServiceInfo serviceInfo = resolveService.serviceInfo;
                if (serviceInfo != null) {
                    String str = serviceInfo.name;
                    if (f5522a.get(str) == null) {
                        f5522a.put(str, new at(context, intent));
                    }
                    at atVar = f5522a.get(str);
                    return atVar;
                }
            }
            return null;
        }
    }

    public static void a(Context context, Intent intent, BroadcastReceiver broadcastReceiver) {
        try {
            context.getApplicationContext().startService(intent);
        } catch (IllegalStateException e) {
            Logger.e("WebEngage", "Exception while starting service: " + e.toString());
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    b(context, intent, broadcastReceiver);
                } catch (Exception unused) {
                    Logger.e("WebEngage", "Exception while connecting to service: ".concat(String.valueOf(intent)));
                }
            }
        } catch (Exception e2) {
            Logger.e("WebEngage", "Exception: " + e2.toString());
        }
    }

    private static void b(Context context, Intent intent, BroadcastReceiver broadcastReceiver) {
        BroadcastReceiver.PendingResult goAsync = broadcastReceiver != null ? broadcastReceiver.goAsync() : null;
        at a2 = a(context.getApplicationContext(), intent);
        if (a2 != null) {
            a2.a(intent, goAsync);
        }
    }
}
