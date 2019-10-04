package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import io.fabric.sdk.android.c;

public final class g {
    @Deprecated
    public static String getApiKey(Context context) {
        c.getLogger().w(c.TAG, "getApiKey(context) is deprecated, please upgrade kit(s) to the latest version.");
        return new g().getValue(context);
    }

    @Deprecated
    public static String getApiKey(Context context, boolean z) {
        c.getLogger().w(c.TAG, "getApiKey(context, debug) is deprecated, please upgrade kit(s) to the latest version.");
        return new g().getValue(context);
    }

    public final String getValue(Context context) {
        String a2 = a(context);
        if (TextUtils.isEmpty(a2)) {
            a2 = null;
            int resourcesIdentifier = i.getResourcesIdentifier(context, "io.fabric.ApiKey", "string");
            if (resourcesIdentifier == 0) {
                c.getLogger().d(c.TAG, "Falling back to Crashlytics key lookup from Strings");
                resourcesIdentifier = i.getResourcesIdentifier(context, "com.crashlytics.ApiKey", "string");
            }
            if (resourcesIdentifier != 0) {
                a2 = context.getResources().getString(resourcesIdentifier);
            }
        }
        if (TextUtils.isEmpty(a2)) {
            if (c.isDebuggable() || i.isAppDebuggable(context)) {
                throw new IllegalArgumentException("Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
            }
            c.getLogger().e(c.TAG, "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
        }
        return a2;
    }

    private static String a(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            String string = bundle.getString("io.fabric.ApiKey");
            if (string != null) {
                return string;
            }
            c.getLogger().d(c.TAG, "Falling back to Crashlytics key lookup from Manifest");
            return bundle.getString("com.crashlytics.ApiKey");
        } catch (Exception e) {
            c.getLogger().d(c.TAG, "Caught non-fatal exception while retrieving apiKey: ".concat(String.valueOf(e)));
            return null;
        }
    }
}
