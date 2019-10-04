package com.webengage.sdk.android.callbacks;

import android.content.Context;
import android.os.Bundle;
import com.webengage.sdk.android.actions.render.PushNotificationData;

public interface CustomPushRerender {
    boolean onRerender(Context context, PushNotificationData pushNotificationData, Bundle bundle);
}
