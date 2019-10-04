package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;

public class Adjust {
    private static AdjustInstance defaultInstance;

    private Adjust() {
    }

    public static synchronized AdjustInstance getDefaultInstance() {
        AdjustInstance adjustInstance;
        synchronized (Adjust.class) {
            if (defaultInstance == null) {
                defaultInstance = new AdjustInstance();
            }
            adjustInstance = defaultInstance;
        }
        return adjustInstance;
    }

    public static void onCreate(AdjustConfig adjustConfig) {
        getDefaultInstance().onCreate(adjustConfig);
    }

    public static void trackEvent(AdjustEvent adjustEvent) {
        getDefaultInstance().trackEvent(adjustEvent);
    }

    public static void onResume() {
        getDefaultInstance().onResume();
    }

    public static void onPause() {
        getDefaultInstance().onPause();
    }

    public static void setEnabled(boolean z) {
        getDefaultInstance().setEnabled(z);
    }

    public static boolean isEnabled() {
        return getDefaultInstance().isEnabled();
    }

    public static void appWillOpenUrl(Uri uri) {
        getDefaultInstance().appWillOpenUrl(uri);
    }

    public static void setReferrer(String str, Context context) {
        getDefaultInstance().sendReferrer(str, context);
    }

    public static void setOfflineMode(boolean z) {
        getDefaultInstance().setOfflineMode(z);
    }

    public static void sendFirstPackages() {
        getDefaultInstance().sendFirstPackages();
    }

    public static void addSessionCallbackParameter(String str, String str2) {
        getDefaultInstance().addSessionCallbackParameter(str, str2);
    }

    public static void addSessionPartnerParameter(String str, String str2) {
        getDefaultInstance().addSessionPartnerParameter(str, str2);
    }

    public static void removeSessionCallbackParameter(String str) {
        getDefaultInstance().removeSessionCallbackParameter(str);
    }

    public static void removeSessionPartnerParameter(String str) {
        getDefaultInstance().removeSessionPartnerParameter(str);
    }

    public static void resetSessionCallbackParameters() {
        getDefaultInstance().resetSessionCallbackParameters();
    }

    public static void resetSessionPartnerParameters() {
        getDefaultInstance().resetSessionPartnerParameters();
    }

    public static void setPushToken(String str) {
        getDefaultInstance().setPushToken(str);
    }

    public static void setPushToken(String str, Context context) {
        getDefaultInstance().setPushToken(str, context);
    }

    public static void getGoogleAdId(Context context, OnDeviceIdsRead onDeviceIdsRead) {
        Util.getGoogleAdId(context, onDeviceIdsRead);
    }

    public static String getAmazonAdId(Context context) {
        return Util.getFireAdvertisingId(context.getContentResolver());
    }

    public static String getAdid() {
        return getDefaultInstance().getAdid();
    }

    public static AdjustAttribution getAttribution() {
        return getDefaultInstance().getAttribution();
    }
}
