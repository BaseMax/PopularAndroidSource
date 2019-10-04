package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.google.android.gms.common.internal.ap;

public final class jo {

    /* renamed from: a  reason: collision with root package name */
    private final jq f3255a;

    public jo(jq jqVar) {
        ap.checkNotNull(jqVar);
        this.f3255a = jqVar;
    }

    public static boolean zzbk(Context context) {
        ap.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 2);
            if (receiverInfo != null && receiverInfo.enabled) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public final void onReceive(Context context, Intent intent) {
        jx zzdx = jx.zzdx(context);
        iz zzawy = zzdx.zzawy();
        if (intent == null) {
            zzawy.zzazf().log("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzawy.zzazj().zzj("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzawy.zzazj().log("Starting wakeful intent.");
            this.f3255a.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            BroadcastReceiver.PendingResult doGoAsync = this.f3255a.doGoAsync();
            String stringExtra = intent.getStringExtra(Constants.REFERRER);
            if (stringExtra == null) {
                zzawy.zzazj().log("Install referrer extras are null");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                }
                return;
            }
            zzawy.zzazh().zzj("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                stringExtra = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle zzp = zzdx.zzawu().zzp(Uri.parse(stringExtra));
            if (zzp == null) {
                zzawy.zzazj().log("No campaign defined in install referrer broadcast");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                }
            } else {
                long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0) * 1000;
                if (longExtra == 0) {
                    zzawy.zzazf().log("Install referrer is missing timestamp");
                }
                js zzawx = zzdx.zzawx();
                jp jpVar = new jp(zzdx, longExtra, zzp, context, zzawy, doGoAsync);
                zzawx.zzg(jpVar);
            }
        }
    }
}
