.class public Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;
.super Ljava/lang/Object;
.source "DisabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTimeBasedFileRollOver()V
    .locals 0

    return-void
.end method

.method public deleteAllEvents()V
    .locals 0

    return-void
.end method

.method public processEvent(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V
    .locals 0

    return-void
.end method

.method public rollFileOver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTimeBasedRollOverIfNeeded()V
    .locals 0

    return-void
.end method

.method public sendEvents()V
    .locals 0

    return-void
.end method

.method public setAnalyticsSettingsData(Le/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
