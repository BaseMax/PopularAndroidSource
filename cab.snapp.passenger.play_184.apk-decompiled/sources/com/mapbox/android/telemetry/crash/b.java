package com.mapbox.android.telemetry.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

public final class b extends BroadcastReceiver {
    public static void register(Context context) {
        LocalBroadcastManager.getInstance(context).registerReceiver(new b(), new IntentFilter("com.mapbox.android.telemetry.action.TOKEN_CHANGED"));
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            CrashReporterJobIntentService.a(context);
            LocalBroadcastManager.getInstance(context).unregisterReceiver(this);
        } catch (Throwable unused) {
        }
    }
}
