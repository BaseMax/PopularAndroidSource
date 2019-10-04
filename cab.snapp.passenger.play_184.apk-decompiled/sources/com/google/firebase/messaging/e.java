package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;

final class e {
    private static AppMeasurement a(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    private static void a(Context context, String str, Intent intent) {
        Bundle bundle = new Bundle();
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        if (stringExtra != null) {
            bundle.putString("_nmid", stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("google.c.a.c_l");
        if (stringExtra2 != null) {
            bundle.putString("_nmn", stringExtra2);
        }
        String stringExtra3 = intent.getStringExtra("from");
        if (stringExtra3 == null || !stringExtra3.startsWith("/topics/")) {
            stringExtra3 = null;
        }
        if (stringExtra3 != null) {
            bundle.putString("_nt", stringExtra3);
        }
        try {
            bundle.putInt("_nmt", Integer.valueOf(intent.getStringExtra("google.c.a.ts")).intValue());
        } catch (NumberFormatException unused) {
        }
        if (intent.hasExtra("google.c.a.udt")) {
            try {
                bundle.putInt("_ndt", Integer.valueOf(intent.getStringExtra("google.c.a.udt")).intValue());
            } catch (NumberFormatException unused2) {
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(valueOf).length());
            sb.append("Sending event=");
            sb.append(str);
            sb.append(" params=");
            sb.append(valueOf);
        }
        AppMeasurement a2 = a(context);
        if (a2 != null) {
            a2.logEventInternal(AppMeasurement.FCM_ORIGIN, str, bundle);
        }
    }

    public static void zzf(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("google.c.a.abt");
        if (stringExtra != null) {
            d.zza(context, AppMeasurement.FCM_ORIGIN, Base64.decode(stringExtra, 0), new c(), 1);
        }
        a(context, "_nr", intent);
    }

    public static void zzg(Context context, Intent intent) {
        if (intent != null && "1".equals(intent.getStringExtra("google.c.a.tc"))) {
            AppMeasurement a2 = a(context);
            if (a2 != null) {
                String stringExtra = intent.getStringExtra("google.c.a.c_id");
                a2.setUserPropertyInternal(AppMeasurement.FCM_ORIGIN, AppMeasurement.e.FIREBASE_LAST_NOTIFICATION, stringExtra);
                Bundle bundle = new Bundle();
                bundle.putString("source", "Firebase");
                bundle.putString("medium", "notification");
                bundle.putString(FirebaseAnalytics.b.CAMPAIGN, stringExtra);
                a2.logEventInternal(AppMeasurement.FCM_ORIGIN, "_cmp", bundle);
            }
        }
        a(context, "_no", intent);
    }

    public static void zzh(Context context, Intent intent) {
        a(context, "_nd", intent);
    }

    public static void zzi(Context context, Intent intent) {
        a(context, "_nf", intent);
    }
}
