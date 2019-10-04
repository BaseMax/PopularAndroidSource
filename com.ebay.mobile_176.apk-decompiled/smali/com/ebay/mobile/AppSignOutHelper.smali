.class public Lcom/ebay/mobile/AppSignOutHelper;
.super Ljava/lang/Object;
.source "AppSignOutHelper.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/SignOutHelper;


# instance fields
.field private final app:Landroid/app/Application;

.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final loggedOutNotificationTask:Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;

.field private final mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

.field private final prefs:Lcom/ebay/common/Preferences;

.field private final taskManager:Lcom/ebay/mobile/util/TaskManager;

.field private final userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/dm/UserContext;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/common/Preferences;Lcom/ebay/mobile/util/TaskManager;Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/content/dm/UserContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/app/Authentication;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/common/Preferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/mobile/util/TaskManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/ebay/nautilus/domain/content/MainThreadHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    .line 59
    iput-object p2, p0, Lcom/ebay/mobile/AppSignOutHelper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 60
    iput-object p3, p0, Lcom/ebay/mobile/AppSignOutHelper;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    .line 61
    iput-object p4, p0, Lcom/ebay/mobile/AppSignOutHelper;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 62
    iput-object p5, p0, Lcom/ebay/mobile/AppSignOutHelper;->prefs:Lcom/ebay/common/Preferences;

    .line 63
    iput-object p6, p0, Lcom/ebay/mobile/AppSignOutHelper;->taskManager:Lcom/ebay/mobile/util/TaskManager;

    .line 64
    iput-object p7, p0, Lcom/ebay/mobile/AppSignOutHelper;->loggedOutNotificationTask:Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;

    .line 65
    iput-object p8, p0, Lcom/ebay/mobile/AppSignOutHelper;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    return-void
.end method

.method private clearWebViewStoredData(Landroid/app/Application;)V
    .locals 5
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/AppSignOutHelper;->clearWebViewCache(Landroid/app/Application;)V

    .line 199
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "app_webview"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Web Data"

    const-string v1, "Web Data-journal"

    const-string v2, "Cookies"

    const-string v3, "Cookies-journal"

    .line 209
    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 210
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 212
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$signOut$0(Lcom/ebay/mobile/AppSignOutHelper;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/AppSignOutHelper;->clearWebViewStoredData(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected clearPreferences()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->prefs:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->clearMyEbayPreferences()V

    .line 226
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->prefs:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->clearSellerSegment()V

    .line 227
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->prefs:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->clearLastSignInEnteredPuuid()V

    return-void
.end method

.method protected clearWebViewCache(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 258
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method protected deactivateMdnsJobIntentService(Z)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/AppSignOutHelper;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ebay/mobile/notifications/mdnssubscriptions/DeactivateMdnsJobIntentService;->enqueueWork(Landroid/content/Context;Lcom/ebay/nautilus/domain/app/Authentication;Z)V

    return-void
.end method

.method protected executeLoggedOutNotificationTask()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->loggedOutNotificationTask:Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public signOut(ZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 6
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    invoke-virtual {p0}, Lcom/ebay/mobile/AppSignOutHelper;->clearPreferences()V

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/ebay/mobile/eBayDictionaryProvider;->clearHistory(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/ebay/mobile/search/LruVisitedItemCache;->get()Lcom/ebay/common/util/LruHistoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/util/LruHistoryCache;->clear()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/AppSignOutHelper;->deactivateMdnsJobIntentService(Z)V

    .line 124
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/service/GoogleNowAuthenticationService;->stop(Landroid/content/Context;Lcom/ebay/nautilus/domain/app/Authentication;Z)V

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ebay/mobile/notifications/NotificationUtil$NotificationType;

    const/4 v4, 0x0

    invoke-static {}, Lcom/ebay/mobile/notifications/NotificationUtil;->getCurrentConfiguration()Lcom/ebay/mobile/notifications/NotificationUtil$NotificationType;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/ebay/mobile/notifications/NotificationUtil$NotificationType;->GOOGLE_NOW:Lcom/ebay/mobile/notifications/NotificationUtil$NotificationType;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/ebay/mobile/service/LogoutService;->start(Landroid/content/Context;Lcom/ebay/nautilus/domain/app/Authentication;[Lcom/ebay/mobile/notifications/NotificationUtil$NotificationType;)V

    .line 133
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/ebay/mobile/-$$Lambda$X-KejFpY2Ami0PYzYOxITEsedz4;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/-$$Lambda$X-KejFpY2Ami0PYzYOxITEsedz4;-><init>(Lcom/ebay/nautilus/domain/content/dm/UserContext;)V

    .line 138
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/content/MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->signOutCurrentUser()V

    .line 143
    :goto_0
    invoke-static {}, Lcom/ebay/common/UserCache;->clearDetailsForLogout()V

    .line 144
    invoke-static {}, Lcom/ebay/nautilus/domain/content/ServiceContentOverride;->clear()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    const-class v2, Lcom/ebay/mobile/notifications/EventService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clearNotificationCache"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/AppSignOutHelper;->clearWebViewStoredData(Landroid/app/Application;)V

    goto :goto_1

    .line 162
    :cond_2
    new-instance v0, Lcom/ebay/mobile/-$$Lambda$AppSignOutHelper$TulgVmOOVYl-mHMQ09at-zVsyTE;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/-$$Lambda$AppSignOutHelper$TulgVmOOVYl-mHMQ09at-zVsyTE;-><init>(Lcom/ebay/mobile/AppSignOutHelper;)V

    .line 163
    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    invoke-interface {v1, v0}, Lcom/ebay/nautilus/domain/content/MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/ebay/mobile/reporting/CrashlyticsWrapper;->updateMetadata(Landroid/content/Context;)V

    .line 169
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "UserSignOut"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 170
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string/jumbo v1, "sor"

    if-eqz p1, :cond_3

    const-string p1, "iaf"

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "user"

    .line 171
    :goto_2
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 174
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 175
    :cond_4
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/AppSignOutHelper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public signOutForIafTokenFailure(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/AppSignOutHelper;->signOut(ZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 94
    invoke-virtual {p0}, Lcom/ebay/mobile/AppSignOutHelper;->executeLoggedOutNotificationTask()V

    if-eqz p1, :cond_0

    .line 97
    instance-of v0, p1, Lcom/ebay/mobile/connection/idsignin/SignInActivity;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper;->taskManager:Lcom/ebay/mobile/util/TaskManager;

    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-virtual {v0, p1, v1}, Lcom/ebay/mobile/util/TaskManager;->replaceTask(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
