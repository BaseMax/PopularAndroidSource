package com.webengage.sdk.android.callbacks;

import android.content.Context;
import com.webengage.sdk.android.actions.render.PushNotificationData;

public interface PushNotificationCallbacks {
    boolean onPushNotificationActionClicked(Context context, PushNotificationData pushNotificationData, String str);

    boolean onPushNotificationClicked(Context context, PushNotificationData pushNotificationData);

    void onPushNotificationDismissed(Context context, PushNotificationData pushNotificationData);

    PushNotificationData onPushNotificationReceived(Context context, PushNotificationData pushNotificationData);

    void onPushNotificationShown(Context context, PushNotificationData pushNotificationData);
}
