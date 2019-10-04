package com.webengage.sdk.android;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

public class NotificationClickHandlerService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            String action = intent.getAction();
            Logger.d("WebEngage", "NotificationClickHandlerService received intent with action : ".concat(String.valueOf(action)));
            if ("com.webengage.sdk.android.intent.ACTION".equals(action)) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String string = extras.getString("action");
                    Logger.d("WebEngage", "NotificationClickHandlerService received intent with task : ".concat(String.valueOf(string)));
                    if ("WebEngageDeeplink".equals(string)) {
                        WebEngage.get().a(intent, (BroadcastReceiver) null);
                    } else if ("push_rerender".equals(string)) {
                        WebEngage.get().b(intent);
                    }
                }
            }
        } catch (Exception e) {
            Logger.e("WebEngage", "Exception while executing push click", e);
        }
        stopSelf(i2);
        return 2;
    }
}
