.class public Lcom/ebay/mobile/MyApp;
.super Landroid/app/Application;
.source "MyApp.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/app/ActivityShimManager$InitUiCallback;
.implements Ldagger/android/HasActivityInjector;
.implements Ldagger/android/HasBroadcastReceiverInjector;
.implements Ldagger/android/HasContentProviderInjector;
.implements Ldagger/android/HasServiceInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/MyApp$DcsRefreshObserver;
    }
.end annotation


# static fields
.field static alternateInitializer:Lcom/ebay/mobile/MyAppInitializer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static logTag:Ljava/lang/String;

.field private static m_deviceConfig:Lcom/ebay/mobile/dcs/DcsHelper;

.field private static m_myself:Lcom/ebay/mobile/MyApp;

.field private static final strictMode:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private applicationStrongReferences:Lcom/ebay/nautilus/kernel/android/ApplicationStrongReferences;

.field applicationVersionHandler:Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field ds6TreatmentsObserver:Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m_prefs:Lcom/ebay/common/Preferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field onTrimMemoryHandler:Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field providerInstallListener:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 113
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "eBayStrictMode"

    const-string v2, "Log StrictMode violations"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/MyApp;->strictMode:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 115
    const-class v0, Lcom/ebay/mobile/MyApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/MyApp;->logTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    sget-object v0, Lcom/ebay/mobile/MyApp;->m_myself:Lcom/ebay/mobile/MyApp;

    return-object v0
.end method

.method public static getCurrentSite()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    sget-object v0, Lcom/ebay/mobile/MyApp;->m_myself:Lcom/ebay/mobile/MyApp;

    iget-object v0, v0, Lcom/ebay/mobile/MyApp;->m_prefs:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbaySite;->id:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;
    .locals 1

    .line 392
    sget-object v0, Lcom/ebay/mobile/MyApp;->m_deviceConfig:Lcom/ebay/mobile/dcs/DcsHelper;

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->refresh()V

    .line 393
    sget-object v0, Lcom/ebay/mobile/MyApp;->m_deviceConfig:Lcom/ebay/mobile/dcs/DcsHelper;

    return-object v0
.end method

.method public static getDisplayableServiceError(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/content/EbaySimpleNetLoader;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/common/content/EbaySimpleNetLoader<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/MyApp;->getDisplayableServiceError(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayableServiceError(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 419
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasWarning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 431
    invoke-static {p0, v4}, Lcom/ebay/mobile/MyApp;->getMessageFromResponseError(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_0

    .line 436
    :cond_1
    invoke-interface {v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->displayToUser()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_2

    .line 437
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v6, 0x7f120dfb

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 438
    invoke-interface {v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 439
    invoke-static {p0, v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 438
    invoke-interface {v0, v6, v7}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v6, 0x7f120dfa

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-interface {v0, v6, v7}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getMaintenanceTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 472
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->isMaintenanceWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12073f

    .line 473
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessageFromResponseError(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;
    .locals 1

    .line 455
    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;->errorCodeRepresentsCongestion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object p0

    const p1, 0x7f120223

    invoke-interface {p0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPrefs()Lcom/ebay/common/Preferences;
    .locals 1

    .line 369
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    .line 370
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getPreferences()Lcom/ebay/common/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.ebay.mobile"

    const/4 v1, 0x0

    .line 594
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 595
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic lambda$onCreate$0(Lcom/ebay/nautilus/kernel/net/AsBeaconManager;Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V
    .locals 1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    .line 202
    new-instance p2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v0, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_closed:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {p2, v0}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {p0, p1, p2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->retireBeacon(Lcom/ebay/nautilus/kernel/net/AsBeacon;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 323
    sget-object v0, Lcom/ebay/mobile/MyApp;->logTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static signOut(ZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/dagger/KernelComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object v0

    .line 318
    invoke-interface {v0, p0, p1}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOut(ZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    return-void
.end method

.method public static signOutForIafTokenFailure(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/dagger/KernelComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object v0

    .line 302
    invoke-interface {v0, p0}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public activityInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getDispatchingActivityInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public broadcastReceiverInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getDispatchingBroadcastReceiverInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public contentProviderInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getDispatchingContentProviderInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 376
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    return-object v0
.end method

.method public initForUi()V
    .locals 4

    .line 253
    const-class v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 254
    const-class v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 255
    invoke-static {}, Lcom/ebay/mobile/themes/ThemeShimFactory;->init()V

    .line 256
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 257
    const-class v0, Lcom/ebay/mobile/dcs/DcsHelper$KillSwitch;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 258
    const-class v0, Lcom/ebay/mobile/MagnesUpdateShim;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 259
    const-class v0, Lcom/ebay/mobile/util/TransitionImageHolderShim;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 260
    const-class v0, Lcom/ebay/mobile/screenshare/ScreenShareShim;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 262
    const-class v0, Lcom/ebay/mobile/reporting/CrashlyticsWrapper;

    invoke-static {v0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->addActivityShimClass(Ljava/lang/Class;)V

    .line 264
    iget-object v0, p0, Lcom/ebay/mobile/MyApp;->m_prefs:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/service/PreferenceSyncService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ebay.mobile.service.PreferenceSyncService.updatePrefsAll"

    .line 268
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/MyApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.ebay.mobile.APPLICATION_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 274
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->PROVIDER_ID_MARKETPLACE:Ljava/lang/String;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->addIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.common.intent.action.EBAY_UI_INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ebay/common/content/EbayBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 279
    invoke-static {p0}, Lcom/ebay/mobile/util/LocationUtil;->primeLastLocationFromNetwork(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 10

    .line 148
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 150
    sput-object p0, Lcom/ebay/mobile/MyApp;->m_myself:Lcom/ebay/mobile/MyApp;

    .line 152
    sget-object v0, Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;->INSTANCE:Lcom/ebay/mobile/-$$Lambda$2CVHX1EL_uy3-yqwcbQn5M7KlMU;

    invoke-static {p0, v0}, Lcom/ebay/mobile/InitializationExceptionTrap;->invoke(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    .line 156
    invoke-interface {v0, p0}, Lcom/ebay/mobile/dagger/AppComponent;->inject(Lcom/ebay/mobile/MyApp;)V

    .line 158
    invoke-static {}, Lcom/ebay/mobile/datamapping/DaggerGsonDataMapperAppComponent;->create()Lcom/ebay/mobile/datamapping/GsonDataMapperAppComponent;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->initializeWithComponent(Lcom/ebay/nautilus/domain/datamapping/gson/GsonDataMapperDomainComponent;)V

    .line 159
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getApplicationStrongReferences()Lcom/ebay/nautilus/kernel/android/ApplicationStrongReferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/MyApp;->applicationStrongReferences:Lcom/ebay/nautilus/kernel/android/ApplicationStrongReferences;

    .line 161
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getUncaughtExceptionHandler()Lcom/ebay/nautilus/kernel/android/AggregateUncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/kernel/android/AggregateUncaughtExceptionHandler;->attach()V

    .line 163
    sget-object v2, Lcom/ebay/mobile/MyApp;->alternateInitializer:Lcom/ebay/mobile/MyAppInitializer;

    if-eqz v2, :cond_0

    .line 165
    sget-object v0, Lcom/ebay/mobile/MyApp;->alternateInitializer:Lcom/ebay/mobile/MyAppInitializer;

    invoke-interface {v0, v1}, Lcom/ebay/mobile/MyAppInitializer;->initialize(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 166
    sget-object v0, Lcom/ebay/mobile/MyApp;->alternateInitializer:Lcom/ebay/mobile/MyAppInitializer;

    invoke-interface {v0}, Lcom/ebay/mobile/MyAppInitializer;->getDcsHelper()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/MyApp;->m_deviceConfig:Lcom/ebay/mobile/dcs/DcsHelper;

    .line 167
    sget-object v0, Lcom/ebay/mobile/MyApp;->alternateInitializer:Lcom/ebay/mobile/MyAppInitializer;

    invoke-interface {v0}, Lcom/ebay/mobile/MyAppInitializer;->getInitializationCompleteRunnable()Ljava/lang/Runnable;

    move-result-object v0

    goto/16 :goto_2

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/MyApp;->providerInstallListener:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    invoke-static {p0, v2}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    .line 178
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/ebay/mobile/MyApp;->applicationVersionHandler:Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;

    const-string v3, "com.ebay.mobile"

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;->invokeUpgradeTasks(Ljava/lang/String;)Z

    move-result v2

    .line 185
    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getAsBeaconManager()Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    move-result-object v9

    if-eqz v2, :cond_1

    const-string v2, "FirstLaunch"

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_1
    const-string v2, "Launch"

    goto :goto_0

    .line 188
    :goto_1
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {p0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->deriveBeaconTags(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 190
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    move-object v3, v9

    .line 186
    invoke-virtual/range {v3 .. v8}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->createCurrentBeacon(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object v0

    .line 191
    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_start:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    .line 193
    new-instance v3, Lcom/ebay/mobile/dcs/DcsHelper;

    invoke-direct {v3, p0}, Lcom/ebay/mobile/dcs/DcsHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/ebay/mobile/MyApp;->m_deviceConfig:Lcom/ebay/mobile/dcs/DcsHelper;

    .line 194
    iget-object v3, p0, Lcom/ebay/mobile/MyApp;->m_prefs:Lcom/ebay/common/Preferences;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ebay/common/Preferences;->isDeveloperOptionsEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "eBayDevOptions"

    const/4 v4, 0x3

    .line 195
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    :cond_2
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->developerOptionsEnabled(Z)V

    .line 198
    :cond_3
    new-instance v3, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;

    invoke-direct {v3, v9, v0, v2}, Lcom/ebay/mobile/-$$Lambda$MyApp$umrBFKU2FvmGaASjHDVlC49l44U;-><init>(Lcom/ebay/nautilus/kernel/net/AsBeaconManager;Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    .line 207
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v2, "app_launch"

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->APPTENTIVE_EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 212
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 213
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->providerForter:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v4, "adf0901f1861"

    .line 216
    invoke-static {p0, v4, v2}, Lcom/ebay/nautilus/domain/analytics/forter/AnalyticsProviderModule;->initialize(Landroid/app/Application;Ljava/lang/String;Z)V

    .line 219
    :cond_4
    invoke-static {}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;->getInstance()Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;->getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;

    move-result-object v2

    .line 221
    iget-object v4, p0, Lcom/ebay/mobile/MyApp;->ds6TreatmentsObserver:Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 223
    new-instance v4, Lcom/ebay/mobile/uxcomponents/viewmodel/header/ModuleHeaderTreatmentsObserver;

    invoke-direct {v4, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/header/ModuleHeaderTreatmentsObserver;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 225
    new-instance v4, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchTreatmentsObserver;

    invoke-direct {v4, v0}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchTreatmentsObserver;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 227
    new-instance v4, Lcom/ebay/mobile/myebay/ep/GuestWatchTreatmentsObserver;

    invoke-direct {v4, v0}, Lcom/ebay/mobile/myebay/ep/GuestWatchTreatmentsObserver;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 229
    new-instance v4, Lcom/ebay/mobile/viewitem/ep/ViewItemTreatmentsObserver;

    invoke-direct {v4, v0}, Lcom/ebay/mobile/viewitem/ep/ViewItemTreatmentsObserver;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->registerObserver(Ljava/lang/Object;)V

    move-object v0, v3

    .line 233
    :goto_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ebay.mobile.APPLICATION_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ebay/mobile/service/ApplicationLaunchReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 235
    sget-object v2, Lcom/ebay/mobile/MyApp;->strictMode:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_5

    .line 236
    invoke-static {}, Lcom/ebay/mobile/StrictModeCompat;->enable()V

    .line 238
    :cond_5
    invoke-static {p0}, Lcom/ebay/nautilus/shell/app/ActivityShimManager;->setInitUiCallback(Lcom/ebay/nautilus/shell/app/ActivityShimManager$InitUiCallback;)V

    .line 241
    new-instance v2, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;

    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;-><init>(Lcom/ebay/mobile/MyApp;Lcom/ebay/nonfatalreporter/NonFatalReporter;)V

    .line 242
    const-class v3, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    .line 243
    invoke-interface {v1, v3}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getDeviceConfigurationObservable()Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;->registerObserver(Landroid/database/DataSetObserver;)V

    if-eqz v0, :cond_6

    .line 247
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 336
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string v0, "onLowMemory called"

    .line 337
    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->log(Ljava/lang/String;)V

    const-string v0, "activity"

    .line 338
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/MyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 339
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available memory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->log(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "low mem threshold: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->log(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is low memory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    const-string v0, "MyApp.onTerminate <<<<<<<<<<<<<<<<<<<<<<<"

    .line 350
    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    sput-object v0, Lcom/ebay/mobile/MyApp;->m_myself:Lcom/ebay/mobile/MyApp;

    .line 354
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/ebay/mobile/MyApp;->onTrimMemoryHandler:Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;->onTrimMemory(I)V

    .line 330
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

.method public serviceInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getDispatchingServiceInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    .line 620
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v0

    sget-object v1, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->COMMON:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v2, "Service started while app in background!"

    .line 625
    invoke-interface {v0, p1, v1, v2}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Ljava/lang/Throwable;Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
