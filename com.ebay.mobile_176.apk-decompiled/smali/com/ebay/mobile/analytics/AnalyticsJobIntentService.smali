.class public Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;
.super Lcom/ebay/nautilus/shell/app/BaseJobIntentService;
.source "AnalyticsJobIntentService.java"


# instance fields
.field apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field apptentiveManager:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nonFatalReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field trackingWorkHandler:Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseJobIntentService;-><init>()V

    return-void
.end method

.method public static enqueue(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ebay.mobile.analytics.tracking_info"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-class p1, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;

    const/16 v1, 0x7d0

    invoke-static {p0, p1, v1, v0}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "com.ebay.mobile.analytics.tracking_info"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->nonFatalReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nonfatalreporter/NonFatalReporter;

    .line 76
    sget-object v1, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->FOUNDATIONS:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v2, "Unable to un-Parcel TrackingInfo"

    invoke-interface {v0, p1, v1, v2}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Ljava/lang/Throwable;Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->apptentiveManager:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;->submitApptentiveEvent(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->trackingWorkHandler:Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;->handleWork(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    :cond_1
    return-void
.end method
