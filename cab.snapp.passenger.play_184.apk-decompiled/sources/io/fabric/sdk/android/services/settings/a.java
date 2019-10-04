package io.fabric.sdk.android.services.settings;

import android.content.res.Resources;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.common.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.network.d;
import java.io.InputStream;
import java.util.Locale;

abstract class a extends io.fabric.sdk.android.services.common.a {
    public static final String APP_BUILD_VERSION_PARAM = "app[build_version]";
    public static final String APP_BUILT_SDK_VERSION_PARAM = "app[built_sdk_version]";
    public static final String APP_DISPLAY_VERSION_PARAM = "app[display_version]";
    public static final String APP_ICON_DATA_PARAM = "app[icon][data]";
    public static final String APP_ICON_HASH_PARAM = "app[icon][hash]";
    public static final String APP_ICON_HEIGHT_PARAM = "app[icon][height]";
    public static final String APP_ICON_PRERENDERED_PARAM = "app[icon][prerendered]";
    public static final String APP_ICON_WIDTH_PARAM = "app[icon][width]";
    public static final String APP_IDENTIFIER_PARAM = "app[identifier]";
    public static final String APP_INSTANCE_IDENTIFIER_PARAM = "app[instance_identifier]";
    public static final String APP_MIN_SDK_VERSION_PARAM = "app[minimum_sdk_version]";
    public static final String APP_NAME_PARAM = "app[name]";
    public static final String APP_SDK_MODULES_PARAM_BUILD_TYPE = "app[build][libraries][%s][type]";
    public static final String APP_SDK_MODULES_PARAM_PREFIX = "app[build][libraries][%s]";
    public static final String APP_SDK_MODULES_PARAM_VERSION = "app[build][libraries][%s][version]";
    public static final String APP_SOURCE_PARAM = "app[source]";

    public a(i iVar, String str, String str2, d dVar, HttpMethod httpMethod) {
        super(iVar, str, str2, dVar, httpMethod);
    }

    public boolean invoke(d dVar) {
        c a2 = a(a().header(io.fabric.sdk.android.services.common.a.HEADER_API_KEY, dVar.apiKey).header(io.fabric.sdk.android.services.common.a.HEADER_CLIENT_TYPE, io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE).header(io.fabric.sdk.android.services.common.a.HEADER_CLIENT_VERSION, this.f6583b.getVersion()), dVar);
        l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(io.fabric.sdk.android.c.TAG, "Sending app info to " + this.f6582a);
        if (dVar.icon != null) {
            l logger2 = io.fabric.sdk.android.c.getLogger();
            logger2.d(io.fabric.sdk.android.c.TAG, "App icon hash is " + dVar.icon.hash);
            l logger3 = io.fabric.sdk.android.c.getLogger();
            logger3.d(io.fabric.sdk.android.c.TAG, "App icon size is " + dVar.icon.width + "x" + dVar.icon.height);
        }
        int code = a2.code();
        String str = c.METHOD_POST.equals(a2.method()) ? "Create" : "Update";
        l logger4 = io.fabric.sdk.android.c.getLogger();
        logger4.d(io.fabric.sdk.android.c.TAG, str + " app request ID: " + a2.header(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID));
        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Result was ".concat(String.valueOf(code)));
        return p.parse(code) == 0;
    }

    private c a(c cVar, d dVar) {
        c part = cVar.part(APP_IDENTIFIER_PARAM, dVar.appId).part(APP_NAME_PARAM, dVar.name).part(APP_DISPLAY_VERSION_PARAM, dVar.displayVersion).part(APP_BUILD_VERSION_PARAM, dVar.buildVersion).part(APP_SOURCE_PARAM, (Number) Integer.valueOf(dVar.source)).part(APP_MIN_SDK_VERSION_PARAM, dVar.minSdkVersion).part(APP_BUILT_SDK_VERSION_PARAM, dVar.builtSdkVersion);
        if (!io.fabric.sdk.android.services.common.i.isNullOrEmpty(dVar.instanceIdentifier)) {
            part.part(APP_INSTANCE_IDENTIFIER_PARAM, dVar.instanceIdentifier);
        }
        if (dVar.icon != null) {
            InputStream inputStream = null;
            try {
                inputStream = this.f6583b.getContext().getResources().openRawResource(dVar.icon.iconResourceId);
                part.part(APP_ICON_HASH_PARAM, dVar.icon.hash).part(APP_ICON_DATA_PARAM, "icon.png", "application/octet-stream", inputStream).part(APP_ICON_WIDTH_PARAM, (Number) Integer.valueOf(dVar.icon.width)).part(APP_ICON_HEIGHT_PARAM, (Number) Integer.valueOf(dVar.icon.height));
            } catch (Resources.NotFoundException e) {
                l logger = io.fabric.sdk.android.c.getLogger();
                logger.e(io.fabric.sdk.android.c.TAG, "Failed to find app icon with resource ID: " + dVar.icon.iconResourceId, e);
            } catch (Throwable th) {
                io.fabric.sdk.android.services.common.i.closeOrLog(inputStream, "Failed to close app icon InputStream.");
                throw th;
            }
            io.fabric.sdk.android.services.common.i.closeOrLog(inputStream, "Failed to close app icon InputStream.");
        }
        if (dVar.sdkKits != null) {
            for (k next : dVar.sdkKits) {
                part.part(String.format(Locale.US, APP_SDK_MODULES_PARAM_VERSION, new Object[]{next.getIdentifier()}), next.getVersion());
                part.part(String.format(Locale.US, APP_SDK_MODULES_PARAM_BUILD_TYPE, new Object[]{next.getIdentifier()}), next.getBuildType());
            }
        }
        return part;
    }
}
