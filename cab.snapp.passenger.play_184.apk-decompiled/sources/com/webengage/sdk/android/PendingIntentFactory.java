package com.webengage.sdk.android;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.actions.render.CallToAction;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.actions.render.i;

public class PendingIntentFactory {
    static PendingIntent a(long j, Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "session_delay_event");
        intent.putExtra("delay_value", j);
        Context applicationContext = context.getApplicationContext();
        return PendingIntent.getBroadcast(applicationContext, ("we_wk_session_delay" + j).hashCode(), intent, 134217728);
    }

    static PendingIntent a(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "session_destroy");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "sessionDestroy".hashCode(), intent, 134217728);
    }

    static PendingIntent a(Context context, int i, int i2) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "amplify");
        return PendingIntent.getBroadcast(context, i, intent, i2);
    }

    static PendingIntent a(String str, long j, Context context) {
        if (str.equals("we_wk_page_delay")) {
            return b(j, context);
        }
        if (str.equals("we_wk_session_delay")) {
            return a(j, context);
        }
        return null;
    }

    static PendingIntent b(long j, Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "page_delay_event");
        intent.putExtra("delay_value", j);
        Context applicationContext = context.getApplicationContext();
        return PendingIntent.getBroadcast(applicationContext, ("we_wk_page_delay" + j).hashCode(), intent, 134217728);
    }

    static PendingIntent b(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "sync");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "next_sync".hashCode(), intent, 134217728);
    }

    static PendingIntent c(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "config_refresh");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "config_refresh".hashCode(), intent, 134217728);
    }

    public static PendingIntent constructCarouselBrowsePendingIntent(Context context, PushNotificationData pushNotificationData, int i, String str, String str2, Bundle bundle) {
        pushNotificationData.setCurrentIndex(i);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString(NotificationCompat.CATEGORY_NAVIGATION, str);
        bundle.putInt("current", i);
        return constructRerenderPendingIntent(context, pushNotificationData, str2, bundle);
    }

    public static PendingIntent constructPushClickPendingIntent(Context context, PushNotificationData pushNotificationData, CallToAction callToAction, boolean z) {
        return new i.a(context, pushNotificationData, callToAction).a(z).a("push_notification_click").a();
    }

    public static PendingIntent constructPushDeletePendingIntent(Context context, PushNotificationData pushNotificationData) {
        return new i.a(context, pushNotificationData, "notification_close").a();
    }

    public static PendingIntent constructPushRatingSubmitPendingIntent(Context context, PushNotificationData pushNotificationData, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("we_wk_rating", i);
        return new i.a(context, pushNotificationData, pushNotificationData.getRatingV1().getSubmitCTA()).a("push_notification_rating_submitted").a(bundle).b("rating_v1_submit").b(false).a();
    }

    public static PendingIntent constructRerenderPendingIntent(Context context, PushNotificationData pushNotificationData, String str, Bundle bundle) {
        return new i.a(context, pushNotificationData, str).b(bundle).c(true).a();
    }

    static PendingIntent d(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "user_profile");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "user_profile".hashCode(), intent, 134217728);
    }

    static PendingIntent e(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        intent.putExtra("action", "journey_context");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "journey_context".hashCode(), intent, 134217728);
    }

    static PendingIntent f(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "WebEngageLocation".hashCode(), intent, 134217728);
    }

    static boolean g(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "WebEngageLocation".hashCode(), intent, 536870912) != null;
    }

    static PendingIntent h(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), WebEngageReceiver.class);
        intent.setAction("com.webengage.sdk.android.intent.ACTION");
        return PendingIntent.getBroadcast(context.getApplicationContext(), "WebEngageGeofence".hashCode(), intent, 134217728);
    }
}
