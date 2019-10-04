.class public final Lcom/ebay/mobile/analytics/InstallTracking;
.super Ljava/lang/Object;
.source "InstallTracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;,
        Lcom/ebay/mobile/analytics/InstallTracking$InstallReceiver;
    }
.end annotation


# static fields
.field public static final CARRIER_LOG_TAG:Ljava/lang/String; = "ebay3pLinking"

.field public static final CLICK_THROUGH_RATE_TAG:Ljava/lang/String; = "ctr"

.field private static final MTS_PROHIBITED_PARAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_REDIRECT_TAG:Ljava/lang/String; = "nrd"

.field private static final PREINSTALL_REFERRER:Ljava/lang/String;

.field private static initPreinstall:Z

.field private static final logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static preinstallUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 102
    sget-object v0, Lcom/ebay/mobile/BuildConfig;->PREINSTALL_REFERRER:Ljava/lang/String;

    sput-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->PREINSTALL_REFERRER:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ebayInstallTracking"

    const-string v2, "Log details for install tracking."

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v0, 0x0

    .line 133
    sput-boolean v0, Lcom/ebay/mobile/analytics/InstallTracking;->initPreinstall:Z

    const/4 v0, 0x0

    .line 134
    sput-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->preinstallUrl:Landroid/net/Uri;

    const-string v1, "ai"

    const-string/jumbo v2, "udid"

    const-string v3, "mppid"

    const-string/jumbo v4, "rlutype"

    const-string/jumbo v5, "site"

    const-string/jumbo v6, "tz"

    const-string v7, "lt"

    const-string v8, "lv"

    const-string v9, "imp"

    .line 165
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->MTS_PROHIBITED_PARAMS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;
    .locals 1

    .line 72
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking;->sendInstalledMessage(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method static addRoverCommandsAndSessionData(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V
    .locals 6
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/analytics/model/TrackingData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "mppid"

    const-string v1, "mppid"

    .line 774
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rlutype"

    const-string/jumbo v1, "rlutype"

    .line 775
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mppid"

    .line 776
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->getSessionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rlutype"

    .line 777
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->getSessionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "usecase"

    const-string v1, "prm"

    .line 778
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 781
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    const-string/jumbo v1, "rvrcmd"

    .line 783
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/ebay/mobile/analytics/InstallTracking;->sanitizePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rvrpartnerid"

    .line 784
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/ebay/mobile/analytics/InstallTracking;->sanitizePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rvrrotnid"

    const/4 v5, 0x2

    .line 785
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/ebay/mobile/analytics/InstallTracking;->sanitizePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    const-string/jumbo v1, "rvrchannel"

    .line 789
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/mobile/analytics/InstallTracking;->sanitizePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 794
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object p0

    .line 795
    sget-object v0, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->MKTG_TECH:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v1, "Referrer URI : %s"

    invoke-interface {p0, v0, v1, p2}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    const-string p2, "&"

    .line 802
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 803
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_8

    aget-object v1, p0, v0

    const-string v2, "="

    .line 805
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    .line 808
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_7

    .line 810
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    .line 811
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->MTS_PROHIBITED_PARAMS:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 814
    :cond_6
    invoke-virtual {p1, v5, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static clearCoupon(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 202
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "incentive_coupon_uri"

    .line 203
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private static doTestFirstRun(Landroid/app/Activity;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 317
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_tracking_first_run"

    const/4 v2, 0x0

    .line 319
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 322
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_0

    .line 323
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First run referrer found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 325
    :cond_0
    instance-of v2, p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v2, :cond_1

    .line 327
    check-cast p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p0

    .line 328
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v3, "Install"

    sget-object v4, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string v3, "mlch"

    .line 329
    invoke-static {p0, v2, v3, v1}, Lcom/ebay/mobile/analytics/InstallTracking;->processInstallTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 334
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "install_tracking_first_run"

    .line 335
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 340
    :cond_2
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getCarrierIdRoverUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 341
    sget-object v3, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v3, v3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_3

    .line 344
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build is a carrier pre-install: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "install_tracking_preinstall"

    .line 345
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    sget-object v3, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Regular build updated with carrier pre-install data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "install_tracking_preinstall"

    .line 347
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_4
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "Regular build"

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "install_tracking_preinstall"

    .line 354
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 355
    invoke-static {p0, v1, v0}, Lcom/ebay/mobile/analytics/InstallTracking;->sendInstalledMessage(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 360
    :cond_6
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->sendInstalledMessageForNormalInstalls(Landroid/content/Context;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static getCarrierIdRoverUrl(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 646
    sget-boolean v0, Lcom/ebay/mobile/analytics/InstallTracking;->initPreinstall:Z

    if-eqz v0, :cond_0

    .line 647
    sget-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->preinstallUrl:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 648
    sput-boolean v0, Lcom/ebay/mobile/analytics/InstallTracking;->initPreinstall:Z

    .line 650
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 651
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking for a carrier preinstall package. PREINSTALL_REFERRER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->PREINSTALL_REFERRER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 653
    :cond_1
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->PREINSTALL_REFERRER:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 654
    sget-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->PREINSTALL_REFERRER:Ljava/lang/String;

    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->preinstallUrl:Landroid/net/Uri;

    return-object p0

    :cond_2
    if-eqz p0, :cond_7

    .line 660
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.ebay.carrier"

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_7

    const-string p0, "com.ebay.carrier"

    const/16 v1, 0x80

    .line 667
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 669
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 674
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "mppid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 675
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "oemid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "campid"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-le v0, v2, :cond_7

    .line 680
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_4

    .line 681
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier Package found: com.ebay.carrier Carrier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OEM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    const-string v2, "http://rover.ebay.com/rover/1/0/4"

    .line 684
    invoke-static {v2}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mppid"

    .line 685
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "rlutype"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 687
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oemid"

    .line 688
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 689
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "campid"

    .line 690
    invoke-virtual {v2, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 691
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->preinstallUrl:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :catch_0
    :cond_7
    sget-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->preinstallUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public static getCoupon(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->Coupons:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->RTC:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "incentive_coupon_uri"

    .line 195
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 196
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private static getLocalHandler(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 560
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 564
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 569
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.ebay.mobile"

    .line 570
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 573
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getPreInstallData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "install_tracking_preinstall"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 710
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->getQaMode()Lcom/ebay/nautilus/base/QaMode;

    move-result-object v0

    const-string v1, "com.ebay.mobile.prefs"

    const-string v2, "com.ebay.mobile.qa.prefs"

    const-string v3, "com.ebay.mobile.xstage.prefs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/nautilus/base/QaMode;->select(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static isRoverUrl(Landroid/net/Uri;)Z
    .locals 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "http"

    .line 589
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "rover."

    .line 598
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".ebay.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 601
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "rover"

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 638
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 639
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->isQaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rover.ebay.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v0, "rover.qa.ebay.com"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static processInstallTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/analytics/model/TrackingData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "1"

    .line 744
    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 747
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    const-string/jumbo v1, "roverimp"

    .line 751
    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 753
    invoke-virtual {p3, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 754
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 757
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking;->addRoverCommandsAndSessionData(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V

    return-void
.end method

.method public static processReferralTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V
    .locals 2
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/analytics/model/TrackingData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "nrd"

    .line 724
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "nrd"

    const-string v1, "1"

    .line 725
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "ctr"

    .line 726
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ctr"

    const-string v1, "0"

    .line 727
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking;->addRoverCommandsAndSessionData(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V

    return-void
.end method

.method private static removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 618
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 620
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const/16 v6, 0x26

    .line 625
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz v4, :cond_4

    .line 631
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {p0, v3}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 632
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static sanitizePathSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 835
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 838
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 841
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static sendInstalledMessage(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 422
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 434
    :cond_2
    invoke-static {p1}, Lcom/ebay/mobile/analytics/InstallTracking;->isRoverUrl(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    const-string/jumbo v0, "referrer"

    .line 437
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "custom"

    .line 438
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    move-object v4, v2

    goto :goto_1

    .line 445
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    move-object v4, p1

    move-object v2, v3

    goto :goto_1

    .line 447
    :cond_4
    invoke-static {v0}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/mobile/analytics/InstallTracking;->isRoverUrl(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 449
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "referrer"

    .line 450
    invoke-static {p1, v4}, Lcom/ebay/mobile/analytics/InstallTracking;->removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 455
    :cond_5
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :goto_1
    invoke-static {p0, v4}, Lcom/ebay/mobile/analytics/InstallTracking;->getLocalHandler(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    .line 461
    sget-object v5, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized referrer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsWarning(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    const-string p1, "com.ebay.mobile.tracking.Referrer"

    .line 463
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    :goto_2
    move-object p1, v2

    goto :goto_3

    :cond_8
    move-object v4, v3

    .line 466
    :goto_3
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    const-string v2, "mppid"

    .line 468
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    sget-object v5, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed:\n  - referrer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n  - link: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n  - mppid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 472
    :cond_9
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    const-string v5, "install_tracking_preinstall"

    .line 477
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->getCarrierIdRoverUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_b

    :cond_a
    move-object p1, v3

    :cond_b
    if-eqz p1, :cond_17

    .line 484
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v5

    iget-boolean v5, v5, Lcom/ebay/common/Preferences;->appPreviouslyExisted:Z

    const-string v6, "ebay3pLinking"

    .line 485
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "mppid"

    .line 487
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_c

    const-string v6, "First time launching carrier build. Tracking event."

    goto :goto_4

    .line 492
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloaded app with referrer \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\". Tracking event."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    if-nez v5, :cond_d

    .line 494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 495
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caching carrier ID "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_d
    const-string v1, "ebay3pLinking"

    .line 496
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_e
    instance-of v1, p0, Lcom/ebay/nautilus/shell/app/FwContext;

    if-eqz v1, :cond_f

    .line 501
    move-object v1, p0

    check-cast v1, Lcom/ebay/nautilus/shell/app/FwContext;

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    .line 503
    :cond_f
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v6, "Install"

    sget-object v7, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v6, v7}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 504
    invoke-static {v3, v1, p1}, Lcom/ebay/mobile/analytics/InstallTracking;->processReferralTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Landroid/net/Uri;)V

    if-eqz v3, :cond_10

    .line 506
    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 511
    :cond_10
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v6, "Install"

    sget-object v7, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v6, v7}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    if-eqz v5, :cond_11

    const-string p2, "maup"

    .line 515
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p2, p1}, Lcom/ebay/mobile/analytics/InstallTracking;->processInstallTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_17

    .line 517
    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_6

    :cond_11
    const-string v5, "mdnd"

    .line 521
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v5, v6}, Lcom/ebay/mobile/analytics/InstallTracking;->processInstallTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    .line 523
    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 525
    :cond_12
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "campid"

    .line 527
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "incentive_coupon_uri"

    .line 528
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_13
    if-eqz p2, :cond_15

    .line 534
    new-instance p2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v2, "Install"

    sget-object v5, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p2, v2, v5}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string v2, "mlch"

    .line 535
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p2, v2, p1}, Lcom/ebay/mobile/analytics/InstallTracking;->processInstallTrackingEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/TrackingData;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_14

    .line 537
    invoke-virtual {p2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_14
    const-string p1, "install_tracking_preinstall"

    .line 538
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_15
    const-string p2, "install_tracking_first_run"

    .line 543
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "mppid"

    .line 544
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "install_tracking_preinstall"

    .line 546
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    :cond_16
    :goto_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_17
    :goto_6
    if-eqz v4, :cond_18

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_18
    return-void
.end method

.method private static sendInstalledMessageForNormalInstalls(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->getInstalledVersionCode(I)I

    move-result v1

    const/4 v2, -0x1

    .line 377
    invoke-virtual {v0, v2}, Lcom/ebay/common/Preferences;->getLastInstalledVersionCode(I)I

    move-result v3

    .line 378
    new-instance v4, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v5, "Install"

    sget-object v6, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v4, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 380
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v5

    iget-boolean v5, v5, Lcom/ebay/common/Preferences;->appPreviouslyExisted:Z

    if-ne v3, v2, :cond_3

    if-eqz v5, :cond_1

    .line 387
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_0

    .line 388
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "normal install tracking: app previously existed"

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    const-string v2, "maup"

    const-string v3, "1"

    .line 389
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mlch"

    const-string v3, "1"

    .line 390
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_2

    .line 395
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "normal install tracking: first launch detected"

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    const-string v2, "maup"

    const-string v3, "0"

    .line 396
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mlch"

    const-string v3, "1"

    .line 397
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    check-cast p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_1

    :cond_3
    if-ge v3, v1, :cond_5

    .line 404
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_4

    .line 405
    sget-object v2, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "normal install tracking: last installed version code lower than installed version code, sending upgrade event"

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_4
    const-string v2, "maup"

    const-string v3, "1"

    .line 407
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mlch"

    const-string v3, "1"

    .line 408
    invoke-virtual {v4, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    check-cast p0, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_1

    .line 413
    :cond_5
    sget-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_6

    .line 414
    sget-object p0, Lcom/ebay/mobile/analytics/InstallTracking;->logging:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "normal install tracking: version codes match, not tracking"

    invoke-virtual {p0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 417
    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->setLastInstalledVersionCode(I)V

    return-void
.end method

.method public static testFirstRun(Landroid/app/Activity;)V
    .locals 0

    .line 184
    invoke-static {p0}, Lcom/ebay/mobile/analytics/InstallTracking;->doTestFirstRun(Landroid/app/Activity;)V

    return-void
.end method
