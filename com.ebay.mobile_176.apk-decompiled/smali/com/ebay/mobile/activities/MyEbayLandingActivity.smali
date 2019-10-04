.class public abstract Lcom/ebay/mobile/activities/MyEbayLandingActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "MyEbayLandingActivity.java"

# interfaces
.implements Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;
.implements Lcom/ebay/mobile/util/ContentSyncManager$ContentSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;,
        Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;,
        Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;
    }
.end annotation


# static fields
.field protected static final EXTRA_TAB_TARGET:Ljava/lang/String; = "my_ebay_tab_taget"

.field public static final logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field protected previousTabIndex:I

.field private shouldSendTracking:Z

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    sget-object v0, Lcom/ebay/mobile/connection/myebay/MyEbayListFragmentBase;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->previousTabIndex:I

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public static getBidsOffersActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 162
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$MyEbay$B;->bidsOffersExperienceService:Lcom/ebay/mobile/dcs/Dcs$MyEbay$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ebay/mobile/myebay/experience/BidsOffersExperienceActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/ebay/mobile/connection/myebay/MyEbayBidsOffersActivity;

    :goto_0
    const/4 v1, 0x0

    .line 161
    invoke-static {p0, v1, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getBidsOffersActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;)Landroid/content/Intent;
    .locals 1

    .line 177
    const-class v0, Lcom/ebay/mobile/connection/myebay/MyEbayBidsOffersActivity;

    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPurchasesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 253
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$MyEbay$B;->purchasesExperienceService:Lcom/ebay/mobile/dcs/Dcs$MyEbay$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ebay/mobile/myebay/experience/PurchasesExperienceActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/ebay/mobile/connection/myebay/MyEbayPurchasesActivity;

    :goto_0
    const/4 v1, 0x0

    .line 252
    invoke-static {p0, v1, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string p0, "my_ebay_tab_taget"

    .line 271
    invoke-interface {p1}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;->getTargetList()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getTrackingSortTypeFromServiceSortType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, -0x1

    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CurrentPrice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "RecentlyAdded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "seller_name"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "relevance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "EndTime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "EndTimeDescending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "CurrentPriceDescending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "TimeLeft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string/jumbo p0, "sellerName"

    return-object p0

    :pswitch_1
    const-string p0, "mostRelevant"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "recentlyAdded"

    return-object p0

    :pswitch_3
    const-string p0, "priceHighest"

    return-object p0

    :pswitch_4
    const-string p0, "priceLowest"

    return-object p0

    :pswitch_5
    if-eqz p1, :cond_1

    const-string p0, "endDateReversed"

    return-object p0

    :cond_1
    const-string/jumbo p0, "startDate"

    return-object p0

    :pswitch_6
    const-string p0, "endDate"

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77fb636c -> :sswitch_7
        -0x773a2978 -> :sswitch_6
        -0x122a08c0 -> :sswitch_5
        0x36c0228 -> :sswitch_4
        0x6772f59 -> :sswitch_3
        0x4a5fbb4b -> :sswitch_2
        0x4f477098 -> :sswitch_1
        0x6084db70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWatchingActivityInEditStateIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 205
    invoke-static {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getWatchingActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "state_launch_in_edit_mode"

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public static getWatchingActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getWatchingActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getWatchingActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;)Landroid/content/Intent;
    .locals 1

    .line 221
    invoke-static {}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->getInstance()Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->isGuestWatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ebay/mobile/myebay/experience/WatchListExperienceActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/ebay/mobile/connection/myebay/MyEbayWatchingActivity;

    .line 223
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getWatchingActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;Z)Landroid/content/Intent;
    .locals 0

    if-eqz p2, :cond_0

    .line 239
    invoke-static {p0, p1}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getWatchingActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    const-class p2, Lcom/ebay/mobile/connection/myebay/MyEbayWatchingActivity;

    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getStartActivityIntent(Landroid/content/Context;Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static setBuyingInvalid(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 2

    .line 470
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/MyEbayBuyingDataManager$KeyParams;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayBuyingDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-static {p0, v1}, Lcom/ebay/nautilus/domain/content/dm/MyEbayBuyingDataManager;->getIfExists(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/content/dm/MyEbayBuyingDataManager;

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayBuyingDataManager;->invalidateRelatedDataManagers()V

    .line 481
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 482
    invoke-virtual {p0, v0, v1}, Lcom/ebay/common/Preferences;->setMyEbayLastBidsRefresh(J)V

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/ebay/common/Preferences;->setMyEbayLastOffersRefresh(J)V

    .line 484
    invoke-virtual {p0, v0, v1}, Lcom/ebay/common/Preferences;->setMyEbayLastDidntWinRefresh(J)V

    .line 485
    invoke-virtual {p0, v0, v1}, Lcom/ebay/common/Preferences;->setMyEbayLastPurchasesRefresh(J)V

    return-void
.end method

.method public static setWatchingInvalid(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 495
    invoke-static {v0, v1}, Lcom/ebay/mobile/connection/myebay/MyEbayWatchingActivity;->setLastRefreshTime(J)V

    .line 497
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->getIfExists(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    if-eqz p0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->invalidateRelatedDataManagers()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreviousTabIndex()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->previousTabIndex:I

    return v0
.end method

.method protected abstract getTitleResource()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 292
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getTitleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->setTitle(I)V

    .line 296
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    sget-object p1, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 299
    sget-object p1, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "User should not be brought here without authentication."

    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->finish()V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "noti_sys_id"

    const/4 v1, -0x1

    .line 307
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v1, "notification"

    .line 310
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 311
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    const-string v0, "event_type"

    .line 314
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 316
    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/ServiceStarter;->startUpdateNotificationCacheService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_3
    const-class p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    if-eqz p1, :cond_4

    .line 324
    invoke-virtual {p1}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->init()V

    :cond_4
    const/4 p1, 0x1

    .line 326
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-class v1, Lcom/ebay/mobile/Item;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ContentSyncManager;->register(Lcom/ebay/mobile/util/ContentSyncManager$ContentSync;[Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 339
    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/ebay/mobile/Item;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ContentSyncManager;->unregister(Lcom/ebay/mobile/util/ContentSyncManager$ContentSync;[Ljava/lang/String;)V

    .line 340
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onDestroy()V

    return-void
.end method

.method public onDismissMessage(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->shouldSendTracking:Z

    return-void
.end method

.method public sendTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 3
    .param p7    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 384
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->shouldSendTracking:Z

    if-nez v0, :cond_0

    if-eqz p6, :cond_3

    .line 386
    :cond_0
    new-instance p6, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p6, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 387
    invoke-virtual {p6, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p6

    .line 389
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    const-string v2, "event_type"

    .line 391
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {v1, p6, v0, v2}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->addNotificationTracking(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "noti_type_id"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p6, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    .line 404
    invoke-virtual {p6, p7}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_2
    :goto_0
    const/4 p7, 0x1

    .line 406
    invoke-static {p6, v0, p7}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Z)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string p7, "filterby"

    .line 408
    invoke-virtual {p6, p7, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 409
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p3, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string/jumbo p1, "sortBy"

    .line 411
    invoke-static {p2, p5}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getTrackingSortTypeFromServiceSortType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 410
    invoke-virtual {p6, p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 413
    invoke-virtual {p6}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 p1, 0x0

    .line 415
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->shouldSendTracking:Z

    :cond_3
    return-void
.end method

.method public showSnackbarWithCount(I)V
    .locals 6

    const v0, 0x7f0a1339

    .line 345
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    const p1, 0x7f1200a7

    .line 355
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {v0, p1, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 361
    iget-object v1, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 363
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
