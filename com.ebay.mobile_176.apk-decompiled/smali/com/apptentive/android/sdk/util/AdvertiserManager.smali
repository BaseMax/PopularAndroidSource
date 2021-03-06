.class public Lcom/apptentive/android/sdk/util/AdvertiserManager;
.super Ljava/lang/Object;
.source "AdvertiserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;
    }
.end annotation


# static fields
.field private static cachedClientInfo:Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAdvertisingIdClientInfo()Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/util/AdvertiserManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/util/AdvertiserManager;->cachedClientInfo:Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static notifyClientInfoChanged(Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;)V
    .locals 5

    .line 84
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "ADVERTISER_ID_DID_RESOLVE"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "successful"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    const/4 v4, 0x1

    .line 86
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "clientInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static resolveAdvertisingIdClientInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 51
    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Invocation;->fromClass(Ljava/lang/String;)Lcom/apptentive/android/sdk/util/Invocation;

    move-result-object v2

    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    .line 52
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v1

    invoke-virtual {v2, v3, v5, v6}, Lcom/apptentive/android/sdk/util/Invocation;->invokeMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Unable to resolve advertising ID: \'%s\' did not return a valid value"

    .line 54
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "getAdvertisingIdInfo"

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Invocation;->fromObject(Ljava/lang/Object;)Lcom/apptentive/android/sdk/util/Invocation;

    move-result-object p0

    const-string v2, "getId"

    .line 59
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/util/Invocation;->invokeStringMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    .line 60
    invoke-virtual {p0, v3}, Lcom/apptentive/android/sdk/util/Invocation;->invokeBooleanMethod(Ljava/lang/String;)Z

    move-result p0

    .line 61
    new-instance v3, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    invoke-direct {v3, v2, p0}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GooglePlayServicesNotAvailableException"

    invoke-static {v3, v4}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "Unable to resolve advertising ID: Google Play is not installed on this device"

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GooglePlayServicesRepairableException"

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Unable to resolve advertising ID: error connecting to Google Play Services"

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const-string v2, "Unable to resolve advertising ID"

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static declared-synchronized updateAdvertisingIdClientInfo(Landroid/content/Context;)Z
    .locals 6

    const-class v0, Lcom/apptentive/android/sdk/util/AdvertiserManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Updating advertiser ID client info..."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->resolveAdvertisingIdClientInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    sget-object v1, Lcom/apptentive/android/sdk/util/AdvertiserManager;->cachedClientInfo:Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 40
    monitor-exit v0

    return v3

    .line 43
    :cond_0
    :try_start_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->ADVERTISER_ID:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Advertiser ID client info changed: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v1, v2, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sput-object p0, Lcom/apptentive/android/sdk/util/AdvertiserManager;->cachedClientInfo:Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    .line 45
    sget-object p0, Lcom/apptentive/android/sdk/util/AdvertiserManager;->cachedClientInfo:Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;

    invoke-static {p0}, Lcom/apptentive/android/sdk/util/AdvertiserManager;->notifyClientInfoChanged(Lcom/apptentive/android/sdk/util/AdvertiserManager$AdvertisingIdClientInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    throw p0
.end method
