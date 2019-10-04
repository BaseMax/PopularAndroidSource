package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;

public interface IActivityHandler {
    void addSessionCallbackParameter(String str, String str2);

    void addSessionPartnerParameter(String str, String str2);

    void finishedTrackingActivity(ResponseData responseData);

    ActivityState getActivityState();

    String getAdid();

    AdjustConfig getAdjustConfig();

    AdjustAttribution getAttribution();

    Context getContext();

    a getDeviceInfo();

    SessionParameters getSessionParameters();

    void init(AdjustConfig adjustConfig);

    boolean isEnabled();

    void launchAttributionResponseTasks(AttributionResponseData attributionResponseData);

    void launchEventResponseTasks(EventResponseData eventResponseData);

    void launchSdkClickResponseTasks(SdkClickResponseData sdkClickResponseData);

    void launchSessionResponseTasks(SessionResponseData sessionResponseData);

    void onPause();

    void onResume();

    void readOpenUrl(Uri uri, long j);

    void removeSessionCallbackParameter(String str);

    void removeSessionPartnerParameter(String str);

    void resetSessionCallbackParameters();

    void resetSessionPartnerParameters();

    void sendFirstPackages();

    void sendInstallReferrer(long j, long j2, String str);

    void sendReftagReferrer();

    void setAskingAttribution(boolean z);

    void setEnabled(boolean z);

    void setOfflineMode(boolean z);

    void setPushToken(String str, boolean z);

    void teardown(boolean z);

    void trackEvent(AdjustEvent adjustEvent);

    boolean updateAttributionI(AdjustAttribution adjustAttribution);
}
