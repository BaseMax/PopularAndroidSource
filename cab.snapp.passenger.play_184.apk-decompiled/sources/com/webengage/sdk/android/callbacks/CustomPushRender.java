package com.webengage.sdk.android.callbacks;

import android.content.Context;
import com.webengage.sdk.android.actions.render.PushNotificationData;

public interface CustomPushRender {
    boolean onRender(Context context, PushNotificationData pushNotificationData);
}
