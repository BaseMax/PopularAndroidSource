.class public interface abstract Lcom/adjust/sdk/IActivityHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
.end method

.method public abstract getActivityState()Lcom/adjust/sdk/ActivityState;
.end method

.method public abstract getAdid()Ljava/lang/String;
.end method

.method public abstract getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;
.end method

.method public abstract getAttribution()Lcom/adjust/sdk/AdjustAttribution;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeviceInfo()Lcom/adjust/sdk/a;
.end method

.method public abstract getSessionParameters()Lcom/adjust/sdk/SessionParameters;
.end method

.method public abstract init(Lcom/adjust/sdk/AdjustConfig;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V
.end method

.method public abstract launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V
.end method

.method public abstract launchSdkClickResponseTasks(Lcom/adjust/sdk/SdkClickResponseData;)V
.end method

.method public abstract launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract readOpenUrl(Landroid/net/Uri;J)V
.end method

.method public abstract removeSessionCallbackParameter(Ljava/lang/String;)V
.end method

.method public abstract removeSessionPartnerParameter(Ljava/lang/String;)V
.end method

.method public abstract resetSessionCallbackParameters()V
.end method

.method public abstract resetSessionPartnerParameters()V
.end method

.method public abstract sendFirstPackages()V
.end method

.method public abstract sendInstallReferrer(JJLjava/lang/String;)V
.end method

.method public abstract sendReftagReferrer()V
.end method

.method public abstract setAskingAttribution(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOfflineMode(Z)V
.end method

.method public abstract setPushToken(Ljava/lang/String;Z)V
.end method

.method public abstract teardown(Z)V
.end method

.method public abstract trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
.end method

.method public abstract updateAttributionI(Lcom/adjust/sdk/AdjustAttribution;)Z
.end method
