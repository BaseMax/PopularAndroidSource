package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class InstallTracker extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            WebEngage.get().analytics().installed(intent);
            i.a(context.getApplicationContext()).onAppInstalled(context, intent);
        } catch (Exception unused) {
        }
    }
}
