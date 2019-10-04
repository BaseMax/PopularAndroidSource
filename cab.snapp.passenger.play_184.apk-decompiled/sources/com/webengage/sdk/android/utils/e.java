package com.webengage.sdk.android.utils;

import android.content.Context;

public class e {
    public static boolean a(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
