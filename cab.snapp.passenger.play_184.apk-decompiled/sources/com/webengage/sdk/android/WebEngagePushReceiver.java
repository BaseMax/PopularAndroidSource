package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.webengage.sdk.android.utils.h;

public class WebEngagePushReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            Logger.d("WebEngage", "WebEngagePushReceiver received intent with action : ".concat(String.valueOf(action)));
            if ("com.google.android.c2dm.intent.RECEIVE".equals(action)) {
                if (!h.a()) {
                    Logger.e("WebEngage", "Google Play Services library missing");
                    return;
                }
                if (intent.getExtras() != null) {
                    WebEngage.get().a(intent);
                }
                i.a(context.getApplicationContext()).onGCMMessageReceived(context, intent);
            }
        } catch (Exception e) {
            Logger.e("WebEngage", e.toString());
        }
    }
}
