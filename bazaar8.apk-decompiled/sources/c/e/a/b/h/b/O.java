package c.e.a.b.h.b;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import c.e.a.b.d.d.r;
import com.google.android.gms.internal.measurement.zzy;

public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final S f10701a;

    public O(S s) {
        r.a(s);
        this.f10701a = s;
    }

    public static boolean a(Context context) {
        r.a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0);
            if (receiverInfo != null && receiverInfo.enabled) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public final void a(Context context, Intent intent) {
        Y a2 = Y.a(context, (zzy) null);
        C0957t e2 = a2.e();
        if (intent == null) {
            e2.w().a("Receiver called with null intent");
            return;
        }
        a2.a();
        String action = intent.getAction();
        e2.B().a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            e2.B().a("Starting wakeful intent.");
            this.f10701a.a(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                a2.d().a((Runnable) new P(this, a2, e2));
            } catch (Exception e3) {
                e2.w().a("Install Referrer Reporter encountered a problem", e3);
            }
            BroadcastReceiver.PendingResult a3 = this.f10701a.a();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                e2.B().a("Install referrer extras are null");
                if (a3 != null) {
                    a3.finish();
                }
                return;
            }
            e2.z().a("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                stringExtra = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle a4 = a2.i().a(Uri.parse(stringExtra));
            if (a4 == null) {
                e2.B().a("No campaign defined in install referrer broadcast");
                if (a3 != null) {
                    a3.finish();
                }
            } else {
                long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0) * 1000;
                if (longExtra == 0) {
                    e2.w().a("Install referrer is missing timestamp");
                }
                U d2 = a2.d();
                Q q = new Q(this, a2, longExtra, a4, context, e2, a3);
                d2.a((Runnable) q);
            }
        }
    }
}
