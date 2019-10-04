package com.adjust.sdk.plugin;

import android.content.Context;
import android.provider.Settings;

public class AndroidIdUtil {
    public static String getAndroidId(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
