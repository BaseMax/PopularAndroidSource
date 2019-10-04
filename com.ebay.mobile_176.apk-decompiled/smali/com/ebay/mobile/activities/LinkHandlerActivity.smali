.class public final Lcom/ebay/mobile/activities/LinkHandlerActivity;
.super Lcom/ebay/nautilus/shell/app/BaseActivity;
.source "LinkHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkBuilder;,
        Lcom/ebay/mobile/activities/LinkHandlerActivity$LinkSource;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDITIONAL_TAGS:Ljava/lang/String; = "additional_tags"

.field public static final EXTRA_NOTIFICATION_ACTION:Ljava/lang/String; = "notification_action"

.field public static final EXTRA_NOTIFICATION_OPTION_COUNT:Ljava/lang/String; = "notification_option_count"

.field public static final EXTRA_SUPPRESS_SIGNIN:Ljava/lang/String; = "noSignIn"

.field private static final LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field public static final SOURCE_APP_STORE:Ljava/lang/String; = "extstore"

.field public static final SOURCE_EXPERIENCE_SVC:Ljava/lang/String; = "expsvc"

.field public static final SOURCE_IN_APP_AD:Ljava/lang/String; = "inappad"

.field public static final SOURCE_MESSAGES_INBOX:Ljava/lang/String; = "minbox"

.field public static final SOURCE_NOTIFICATIONS_INBOX:Ljava/lang/String; = "ninbox"

.field public static final SOURCE_NOTIFICATIONS_TRAY:Ljava/lang/String; = "ntray"

.field public static final SOURCE_PARTNER:Ljava/lang/String; = "extpartner"

.field public static final SOURCE_QR_CODE:Ljava/lang/String; = "qrcode"

.field public static final SOURCE_RTM:Ljava/lang/String; = "rtm"

.field public static final SOURCE_SEO:Ljava/lang/String; = "google"

.field public static final SOURCE_UNKNOWN:Ljava/lang/String; = "ext"


# instance fields
.field private homeIntent:Landroid/content/Intent;

.field private playServicesCheckDialogFragmentHelper:Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;

.field semTrackingIntentHandler:Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-class v1, Lcom/ebay/mobile/activities/LinkHandlerActivity;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkHandlerActivity debugging"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;

    invoke-direct {v0}, Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->playServicesCheckDialogFragmentHelper:Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;

    return-void
.end method

.method private static addLinkIntentFlags(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->shouldAddFlags(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x4000000

    .line 317
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method private static convertOldLinks(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 589
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v1, "pages.ebay.com"

    .line 592
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 595
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const-string v2, "android"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "item"

    .line 596
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 597
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "ebay"

    .line 600
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "item"

    .line 602
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 605
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 606
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_0
    const-string/jumbo v1, "query"

    .line 610
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    .line 611
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "nav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private directAndClose(Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 464
    iget-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->semTrackingIntentHandler:Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;->handleIntent(Landroid/content/Intent;)V

    .line 466
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nid"

    const/4 v2, -0x1

    .line 469
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mc3id"

    .line 470
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dl_source"

    .line 471
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "additional_tags"

    .line 472
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "noti_rid_list"

    .line 476
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 478
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 480
    invoke-direct {p0, v1, v5, v2, v4}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->dismissNotification(ILjava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 481
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v5, "notification"

    .line 486
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz v5, :cond_1

    .line 488
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    move-object v1, v7

    :goto_0
    const-string v5, "android.intent.action.VIEW"

    .line 491
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 493
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->convertOldLinks(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEffectiveUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v5, "referrer"

    .line 496
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "android.intent.extra.REFERRER_NAME"

    .line 497
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-direct {p0, v5, v8}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->handleReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->testFirstRun(Landroid/app/Activity;)V

    .line 502
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v5

    iget-object v8, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->homeIntent:Landroid/content/Intent;

    invoke-static {v5, v0, v3, p1, v8}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getDeepLinkIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    const-string v8, "nav"

    .line 505
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "notification_action"

    .line 509
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "notification_option_count"

    .line 512
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 514
    new-instance v10, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v11, "DeepLinkAction"

    invoke-direct {v10, v11}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 515
    invoke-virtual {v10, v11}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v10

    const-string v11, "naid"

    .line 516
    invoke-virtual {v10, v11, v9}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v9

    const-string v10, "nid"

    .line 517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v1, "null"

    :cond_3
    invoke-virtual {v9, v10, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    const-string v9, "navp"

    .line 518
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "null"

    goto :goto_1

    :cond_4
    move-object v10, v8

    :goto_1
    invoke-virtual {v1, v9, v10}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    const-string v9, "mc3id"

    .line 519
    invoke-virtual {v1, v9, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    const-string v2, "deeplink"

    .line 520
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "dlsource"

    .line 521
    invoke-virtual {v0, v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string/jumbo v1, "opt"

    .line 522
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 523
    invoke-static {p1, v4}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->addAdditionalTags(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Ljava/util/Map;)V

    .line 524
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 526
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "user."

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "noSignIn"

    .line 527
    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 529
    invoke-static {v7, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 532
    sget-object v0, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->EXTRA_REDIRECT_INTENTS:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    .line 533
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 532
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 536
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->homeIntent:Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const-string p1, "noSignIn"

    .line 538
    invoke-virtual {v5, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->finish()V

    return-void
.end method

.method private dismissNotification(ILjava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/notifications/EventService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clearNotificationCache"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "noti_type_id"

    const/16 v2, 0x28

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event_type"

    const-string v2, "GENERIC"

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mc3id"

    .line 435
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "noti_sys_id"

    .line 436
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "do_not_track"

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    const-string p1, "collapsedNotificationCount"

    .line 441
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "noti_rid_list"

    .line 442
    move-object v1, p2

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo p1, "rid"

    .line 445
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "rid"

    .line 448
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 452
    invoke-static {p0, p1, p3, p4}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->createNotificationReceivedTrackingData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 455
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    const-string p3, "GENERIC"

    invoke-static {p2, p1, v0, p3, p4}, Lcom/ebay/mobile/notifications/NotificationTrackingUtil;->addNotificationTracking(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static getDeepLinkIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "nav"

    .line 662
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "webview"

    .line 665
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->deepLinkWebViewsEnabled:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    new-instance p1, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p2, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p1

    .line 669
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/mktgtech/deeplinking/LinkHandler;->getInstance()Lcom/ebay/mobile/mktgtech/deeplinking/LinkHandler;

    move-result-object v1

    .line 670
    invoke-virtual {v1, p0, p1, p2}, Lcom/ebay/mobile/mktgtech/deeplinking/LinkHandler;->getLinkIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 672
    invoke-static {p0, p3}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->addLinkIntentFlags(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object p0, p4

    :cond_2
    if-nez p0, :cond_5

    .line 680
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_3

    const-string p2, "ext"

    :cond_3
    move-object v2, p2

    .line 685
    sget-object p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 686
    sget-object p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "Unable to parse deep link, sending failure information to APLS"

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;)V

    .line 688
    :cond_4
    new-instance p0, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    const-string v1, "DeepLinking"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 689
    invoke-static {p0}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    goto :goto_0

    :cond_5
    move-object p4, p0

    :goto_0
    return-object p4
.end method

.method public static getEffectiveUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/QueryParam;->fromQueryString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 356
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "nav_andr"

    .line 365
    invoke-static {v0, v2}, Lcom/ebay/mobile/util/QueryParam;->getByKey(Ljava/util/List;Ljava/lang/String;)Lcom/ebay/mobile/util/QueryParam;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 371
    :try_start_0
    iget-object v2, v2, Lcom/ebay/mobile/util/QueryParam;->value:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/mobile/util/QueryParam;->fromQueryString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 375
    sget-object v3, Lcom/ebay/mobile/activities/LinkHandlerActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v4, "Unable to decode URL: "

    invoke-virtual {v3, v4, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const-string v2, "alt_andr"

    .line 380
    invoke-static {v0, v2}, Lcom/ebay/mobile/util/QueryParam;->getByKey(Ljava/util/List;Ljava/lang/String;)Lcom/ebay/mobile/util/QueryParam;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 382
    new-instance v3, Lcom/ebay/mobile/util/QueryParam;

    const-string v4, "alt"

    iget-object v2, v2, Lcom/ebay/mobile/util/QueryParam;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/ebay/mobile/util/QueryParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/util/QueryParam;

    .line 389
    iget-object v3, v2, Lcom/ebay/mobile/util/QueryParam;->key:Ljava/lang/String;

    const-string v4, "nav_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/ebay/mobile/util/QueryParam;->key:Ljava/lang/String;

    const-string v4, "alt_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/ebay/mobile/util/QueryParam;->key:Ljava/lang/String;

    .line 390
    invoke-static {v1, v3}, Lcom/ebay/mobile/util/QueryParam;->getByKey(Ljava/util/List;Ljava/lang/String;)Lcom/ebay/mobile/util/QueryParam;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 392
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "?"

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 404
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 406
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/mobile/util/QueryParam;

    if-lez v4, :cond_7

    const-string v6, "&"

    .line 408
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_7
    invoke-virtual {v5}, Lcom/ebay/mobile/util/QueryParam;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 412
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected static getHomeIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x10008000

    .line 303
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private handleReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ebay3pLinking"

    const/4 v1, 0x3

    .line 551
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ebay3pLinking"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Linked to app with referrer \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". Tracking event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 557
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->appIndexingReferrerTracking:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "mpvl"

    .line 569
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 574
    :cond_2
    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v0, "Referral"

    invoke-direct {p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 575
    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p2

    .line 576
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/ebay/mobile/analytics/InstallTracking;->processReferralTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V

    .line 577
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public static isDeepLinkValid(Landroid/content/Intent;Lcom/ebay/nautilus/kernel/content/EbayContext;)Z
    .locals 4
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 627
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 634
    :cond_1
    invoke-static {v1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->convertOldLinks(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getEffectiveUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const-string v2, "dl_source"

    .line 639
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 641
    invoke-static {p1, v1, v2, p0, v3}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getDeepLinkIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private static shouldAddFlags(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "inAppLink"

    .line 335
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 276
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 277
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-static {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getHomeIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->homeIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->playServicesCheckDialogFragmentHelper:Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;

    invoke-virtual {v0, p0}, Lcom/ebay/mobile/playservices/PlayServicesCheckDialogFragmentHelper;->playServicesNotAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->homeIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->directAndClose(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_2
    sget-object p1, Lcom/ebay/mobile/activities/LinkHandlerActivity;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "LinkHandlerActivity started with null intent!"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getHomeIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->finish()V

    :goto_0
    return-void
.end method
