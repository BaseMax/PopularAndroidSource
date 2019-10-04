package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;

public class ResourceUnityVersionProvider implements UnityVersionProvider {
    public final Context context;
    public final UnityVersionProvider fallback;
    public boolean hasRead = false;
    public String unityVersion;

    public ResourceUnityVersionProvider(Context context2, UnityVersionProvider unityVersionProvider) {
        this.context = context2;
        this.fallback = unityVersionProvider;
    }

    public String getUnityVersion() {
        if (!this.hasRead) {
            this.unityVersion = CommonUtils.o(this.context);
            this.hasRead = true;
        }
        String str = this.unityVersion;
        if (str != null) {
            return str;
        }
        UnityVersionProvider unityVersionProvider = this.fallback;
        if (unityVersionProvider != null) {
            return unityVersionProvider.getUnityVersion();
        }
        return null;
    }
}
