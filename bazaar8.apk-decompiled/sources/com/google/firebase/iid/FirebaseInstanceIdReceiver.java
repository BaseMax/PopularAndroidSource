package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import b.q.a.a;
import c.e.a.b.d.g.n;
import c.e.c.d.C1002w;
import c.e.c.d.K;

public final class FirebaseInstanceIdReceiver extends a {

    /* renamed from: c  reason: collision with root package name */
    public static K f13517c;

    /* renamed from: d  reason: collision with root package name */
    public static K f13518d;

    public static int b(BroadcastReceiver broadcastReceiver, Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Binding to service: ".concat(valueOf) : new String("Binding to service: "));
        }
        if (broadcastReceiver.isOrderedBroadcast()) {
            broadcastReceiver.setResultCode(-1);
        }
        a(context, str).a(intent, broadcastReceiver.goAsync());
        return -1;
    }

    public final void a(Context context, Intent intent, String str) {
        String str2 = null;
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if ("google.com/iid".equals(intent.getStringExtra("from")) || "com.google.firebase.INSTANCE_ID_EVENT".equals(str)) {
            str2 = "com.google.firebase.INSTANCE_ID_EVENT";
        } else if ("com.google.android.c2dm.intent.RECEIVE".equals(str) || "com.google.firebase.MESSAGING_EVENT".equals(str)) {
            str2 = "com.google.firebase.MESSAGING_EVENT";
        } else {
            Log.d("FirebaseInstanceId", "Unexpected intent");
        }
        int i2 = -1;
        if (str2 != null) {
            i2 = a(this, context, str2, intent);
        }
        if (isOrderedBroadcast()) {
            setResultCode(i2);
        }
    }

    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            if (intent2 != null) {
                a(context, intent2, intent.getAction());
            } else {
                a(context, intent, intent.getAction());
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    public static int a(BroadcastReceiver broadcastReceiver, Context context, String str, Intent intent) {
        boolean z = true;
        boolean z2 = n.i() && context.getApplicationInfo().targetSdkVersion >= 26;
        if ((intent.getFlags() & 268435456) == 0) {
            z = false;
        }
        if (z2 && !z) {
            return b(broadcastReceiver, context, str, intent);
        }
        int b2 = C1002w.a().b(context, str, intent);
        if (!n.i() || b2 != 402) {
            return b2;
        }
        b(broadcastReceiver, context, str, intent);
        return 403;
    }

    public static synchronized K a(Context context, String str) {
        synchronized (FirebaseInstanceIdReceiver.class) {
            if ("com.google.firebase.MESSAGING_EVENT".equals(str)) {
                if (f13518d == null) {
                    f13518d = new K(context, str);
                }
                K k2 = f13518d;
                return k2;
            }
            if (f13517c == null) {
                f13517c = new K(context, str);
            }
            K k3 = f13517c;
            return k3;
        }
    }
}
