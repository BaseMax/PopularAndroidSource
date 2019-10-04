package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import com.webengage.sdk.android.q;
import java.util.List;

public class WebEngageReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            Logger.d("WebEngage", "WebEngageReceiver received intent with action : ".concat(String.valueOf(action)));
            if ("com.google.android.c2dm.intent.RECEIVE".equals(action)) {
                Logger.w("WebEngage", "GCM/FCM message received in WebEngageReceiver, Please fix your integration");
                return;
            }
            if ("com.webengage.sdk.android.intent.ACTION".equals(action)) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    Location a2 = p.a(context).a(intent);
                    if (a2 != null) {
                        WebEngage.get().a(a2, (BroadcastReceiver) this);
                        Logger.d("WebEngage", "UserUpdateGeoInfo: ".concat(String.valueOf(a2)));
                    }
                    List<q.a> b2 = p.a(context).b(intent);
                    if (b2 != null) {
                        for (q.a next : b2) {
                            WebEngage.get().a(next, (BroadcastReceiver) this);
                            Logger.d("WebEngage", next.toString());
                        }
                    }
                    String string = extras.getString("action");
                    Logger.d("WebEngage", "WebEngageReceiver received intent with task : ".concat(String.valueOf(string)));
                    if ("session_destroy".equals(string)) {
                        WebEngage.get().a((BroadcastReceiver) this);
                    } else if ("sync".equals(string)) {
                        WebEngage.get().b((BroadcastReceiver) this);
                    } else if ("config_refresh".equals(string)) {
                        WebEngage.get().c((BroadcastReceiver) this);
                    } else if ("session_delay_event".equals(string)) {
                        WebEngage.get().b(intent, this);
                    } else if ("page_delay_event".equals(string)) {
                        WebEngage.get().c(intent, this);
                    } else if ("leave_intent_event".equals(string)) {
                        WebEngage.get().c(intent);
                    } else if ("user_profile".equals(string)) {
                        WebEngage.get().d(this);
                    } else if ("journey_context".equals(string)) {
                        WebEngage.get().e(this);
                    } else if ("amplify".equals(string)) {
                        WebEngage.get().f(this);
                    }
                }
            }
        } catch (Exception e) {
            Logger.e("WebEngage", e.toString());
        }
    }
}
