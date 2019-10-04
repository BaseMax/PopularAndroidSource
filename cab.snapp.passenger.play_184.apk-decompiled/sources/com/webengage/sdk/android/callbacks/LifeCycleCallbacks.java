package com.webengage.sdk.android.callbacks;

import android.content.Context;
import android.content.Intent;

public interface LifeCycleCallbacks {
    void onAppInstalled(Context context, Intent intent);

    void onAppUpgraded(Context context, int i, int i2);

    void onGCMMessageReceived(Context context, Intent intent);

    void onGCMRegistered(Context context, String str);
}
