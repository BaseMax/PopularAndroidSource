package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;

public class ManifestUnityVersionProvider implements UnityVersionProvider {
    public static final String FABRIC_UNITY_CRASHLYTICS_VERSION_KEY = "io.fabric.unity.crashlytics.version";
    public final Context context;
    public final String packageName;

    public ManifestUnityVersionProvider(Context context2, String str) {
        this.context = context2;
        this.packageName = str;
    }

    public String getUnityVersion() {
        try {
            Bundle bundle = this.context.getPackageManager().getApplicationInfo(this.packageName, 128).metaData;
            if (bundle != null) {
                return bundle.getString(FABRIC_UNITY_CRASHLYTICS_VERSION_KEY);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
