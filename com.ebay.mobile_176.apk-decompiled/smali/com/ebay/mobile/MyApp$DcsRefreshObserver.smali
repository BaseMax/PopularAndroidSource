.class final Lcom/ebay/mobile/MyApp$DcsRefreshObserver;
.super Landroid/database/DataSetObserver;
.source "MyApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/MyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DcsRefreshObserver"
.end annotation


# instance fields
.field private final nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

.field final synthetic this$0:Lcom/ebay/mobile/MyApp;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/MyApp;Lcom/ebay/nonfatalreporter/NonFatalReporter;)V
    .locals 0
    .param p2    # Lcom/ebay/nonfatalreporter/NonFatalReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 510
    iput-object p1, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

    return-void
.end method

.method static synthetic lambda$onChanged$0(Lcom/ebay/mobile/dagger/AppComponent;)V
    .locals 3

    .line 566
    invoke-interface {p0}, Lcom/ebay/mobile/dagger/AppComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0}, Lcom/ebay/mobile/dagger/AppComponent;->getDeviceConfiguration()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 567
    invoke-interface {p0}, Lcom/ebay/mobile/dagger/AppComponent;->getPreferences()Lcom/ebay/common/Preferences;

    move-result-object v2

    invoke-interface {p0}, Lcom/ebay/mobile/dagger/AppComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p0

    .line 566
    invoke-static {v0, v1, v2, p0}, Lcom/ebay/mobile/notifications/NotificationUtil;->notifyOfDcsChange(Landroid/content/Context;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/Preferences;Lcom/ebay/nautilus/domain/content/dm/UserContext;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .line 517
    iget-object v0, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    invoke-virtual {v0}, Lcom/ebay/mobile/MyApp;->getAppComponent()Lcom/ebay/mobile/dagger/AppComponent;

    move-result-object v0

    .line 518
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 519
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    .line 522
    iget-object v3, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    const-string v4, "adf0901f1861"

    sget-object v5, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->providerForter:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    .line 523
    invoke-interface {v1, v5}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v5

    .line 522
    invoke-static {v3, v4, v5}, Lcom/ebay/nautilus/domain/analytics/forter/AnalyticsProviderModule;->initialize(Landroid/app/Application;Ljava/lang/String;Z)V

    .line 526
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object v3

    sget-object v4, Lcom/ebay/mobile/dcs/Dcs$App$I;->designSystem6:Lcom/ebay/mobile/dcs/Dcs$App$I;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v4

    .line 527
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v5

    iget-object v5, v5, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getDS6Treatment(Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v5

    .line 526
    invoke-interface {v3, v4, v5}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->updateDs6Preferences(ILcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 530
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;

    move-result-object v3

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->experienceService:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    .line 531
    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v4

    .line 532
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchExperimentExpSvcTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v5

    .line 531
    invoke-virtual {v3, v4, v5}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchExperienceServiceEpConfiguration;->updateSearchCurrentEp(ZLcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 534
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDynamicPaginationEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDynamicPaginationEpConfiguration;

    move-result-object v3

    .line 535
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchExperimentDynamicPaginationTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v4

    .line 534
    invoke-virtual {v3, v1, v4}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDynamicPaginationEpConfiguration;->updateDynamicPaginationCurrentEp(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 538
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDefaultWatchEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDefaultWatchEpConfiguration;

    move-result-object v3

    .line 539
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchExperimentDefaultWatchTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v4

    .line 538
    invoke-virtual {v3, v1, v4}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchDefaultWatchEpConfiguration;->updateDefaultWatchCurrentEp(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 541
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchTopSuggestionEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchTopSuggestionEpConfiguration;

    move-result-object v3

    .line 542
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchExperimentTopSuggestionTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v4

    .line 541
    invoke-virtual {v3, v1, v4}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchTopSuggestionEpConfiguration;->update(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 545
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;

    move-result-object v3

    .line 547
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v4

    iget-object v4, v4, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {v4, v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchHotnessTreatment(Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v4

    .line 546
    invoke-virtual {v3, v1, v4}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;->updateSearchHotnessEp(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 550
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;->getInstance()Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;

    move-result-object v3

    .line 551
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getSearchHotnessRedTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v2

    .line 550
    invoke-virtual {v3, v1, v2}, Lcom/ebay/nautilus/domain/content/dm/search/ep/SearchHotnessEpConfiguration;->updateSearchHotnessRedEp(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 554
    invoke-static {}, Lcom/ebay/mobile/viewitem/ep/ViewItemExpSvcMigrationEpConfiguration;->getInstance()Lcom/ebay/mobile/viewitem/ep/ViewItemExpSvcMigrationEpConfiguration;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/experimentation/Experiments;->viewItemExpSvcMigrationExperiment:Lcom/ebay/nautilus/domain/experimentation/FactorExperiment;

    .line 555
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/domain/experimentation/FactorExperiment;->getCurrentTreatment(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object v3

    .line 554
    invoke-virtual {v2, v1, v3}, Lcom/ebay/mobile/viewitem/ep/ViewItemExpSvcMigrationEpConfiguration;->update(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)V

    .line 558
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->epJobService:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    .line 559
    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->isScheduled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    invoke-static {v2, v1}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->start(Landroid/content/Context;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->isScheduled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    invoke-static {v2}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->stop(Landroid/content/Context;)V

    .line 565
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/ebay/mobile/-$$Lambda$MyApp$DcsRefreshObserver$yyEyMjVkjKvPyFc5yx3sFduZA6o;

    invoke-direct {v3, v0}, Lcom/ebay/mobile/-$$Lambda$MyApp$DcsRefreshObserver$yyEyMjVkjKvPyFc5yx3sFduZA6o;-><init>(Lcom/ebay/mobile/dagger/AppComponent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 570
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;->imageSearch:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Search$B;

    invoke-interface {v1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    .line 573
    iget-object v2, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->this$0:Lcom/ebay/mobile/MyApp;

    iget-object v3, p0, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->nonFatalReporter:Lcom/ebay/nonfatalreporter/NonFatalReporter;

    sget-object v4, Lcom/ebay/mobile/dcs/Dcs$App$B;->sharedImageActivity:Lcom/ebay/mobile/dcs/Dcs$App$B;

    .line 576
    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 573
    invoke-static {v2, v3, v1, v0}, Lcom/ebay/mobile/activities/SharedImageActivity;->setComponentEnabledState(Landroid/content/Context;Lcom/ebay/nonfatalreporter/NonFatalReporter;ZZ)V

    return-void
.end method
