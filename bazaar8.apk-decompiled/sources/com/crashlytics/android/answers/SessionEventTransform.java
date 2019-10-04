package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.os.Build;
import e.a.a.a.a.d.a;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class SessionEventTransform implements a<SessionEvent> {
    public static final String APP_BUNDLE_ID_KEY = "appBundleId";
    public static final String APP_VERSION_CODE_KEY = "appVersionCode";
    public static final String APP_VERSION_NAME_KEY = "appVersionName";
    public static final String BETA_DEVICE_TOKEN_KEY = "betaDeviceToken";
    public static final String BUILD_ID_KEY = "buildId";
    public static final String CUSTOM_ATTRIBUTES = "customAttributes";
    public static final String CUSTOM_TYPE = "customType";
    public static final String DETAILS_KEY = "details";
    public static final String DEVICE_MODEL_KEY = "deviceModel";
    public static final String EXECUTION_ID_KEY = "executionId";
    public static final String INSTALLATION_ID_KEY = "installationId";
    public static final String LIMIT_AD_TRACKING_ENABLED_KEY = "limitAdTrackingEnabled";
    public static final String OS_VERSION_KEY = "osVersion";
    public static final String PREDEFINED_ATTRIBUTES = "predefinedAttributes";
    public static final String PREDEFINED_TYPE = "predefinedType";
    public static final String TIMESTAMP_KEY = "timestamp";
    public static final String TYPE_KEY = "type";

    @TargetApi(9)
    public JSONObject buildJsonForEvent(SessionEvent sessionEvent) {
        try {
            JSONObject jSONObject = new JSONObject();
            SessionEventMetadata sessionEventMetadata = sessionEvent.sessionEventMetadata;
            jSONObject.put(APP_BUNDLE_ID_KEY, sessionEventMetadata.appBundleId);
            jSONObject.put(EXECUTION_ID_KEY, sessionEventMetadata.executionId);
            jSONObject.put(INSTALLATION_ID_KEY, sessionEventMetadata.installationId);
            jSONObject.put(LIMIT_AD_TRACKING_ENABLED_KEY, sessionEventMetadata.limitAdTrackingEnabled);
            jSONObject.put(BETA_DEVICE_TOKEN_KEY, sessionEventMetadata.betaDeviceToken);
            jSONObject.put(BUILD_ID_KEY, sessionEventMetadata.buildId);
            jSONObject.put(OS_VERSION_KEY, sessionEventMetadata.osVersion);
            jSONObject.put(DEVICE_MODEL_KEY, sessionEventMetadata.deviceModel);
            jSONObject.put(APP_VERSION_CODE_KEY, sessionEventMetadata.appVersionCode);
            jSONObject.put(APP_VERSION_NAME_KEY, sessionEventMetadata.appVersionName);
            jSONObject.put("timestamp", sessionEvent.timestamp);
            jSONObject.put(TYPE_KEY, sessionEvent.type.toString());
            if (sessionEvent.details != null) {
                jSONObject.put(DETAILS_KEY, new JSONObject(sessionEvent.details));
            }
            jSONObject.put(CUSTOM_TYPE, sessionEvent.customType);
            if (sessionEvent.customAttributes != null) {
                jSONObject.put(CUSTOM_ATTRIBUTES, new JSONObject(sessionEvent.customAttributes));
            }
            jSONObject.put(PREDEFINED_TYPE, sessionEvent.predefinedType);
            if (sessionEvent.predefinedAttributes != null) {
                jSONObject.put(PREDEFINED_ATTRIBUTES, new JSONObject(sessionEvent.predefinedAttributes));
            }
            return jSONObject;
        } catch (JSONException e2) {
            if (Build.VERSION.SDK_INT >= 9) {
                throw new IOException(e2.getMessage(), e2);
            }
            throw new IOException(e2.getMessage());
        }
    }

    public byte[] toBytes(SessionEvent sessionEvent) {
        return buildJsonForEvent(sessionEvent).toString().getBytes("UTF-8");
    }
}
