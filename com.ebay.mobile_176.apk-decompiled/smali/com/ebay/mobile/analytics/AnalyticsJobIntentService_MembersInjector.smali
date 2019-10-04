.class public final Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "AnalyticsJobIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final apptentiveConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final apptentiveManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;"
        }
    .end annotation
.end field

.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private final nonFatalReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingWorkHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->trackingWorkHandlerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->apptentiveManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->apptentiveConfigProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->nonFatalReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v6, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectApptentiveConfig(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    return-void
.end method

.method public static injectApptentiveManager(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->apptentiveManager:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;

    return-void
.end method

.method public static injectNonFatalReporterProvider(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->nonFatalReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectTrackingWorkHandler(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->trackingWorkHandler:Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseJobIntentService_MembersInjector;->injectEbayContext(Lcom/ebay/nautilus/shell/app/BaseJobIntentService;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->trackingWorkHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;

    invoke-static {p1, v0}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->injectTrackingWorkHandler(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;)V

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->apptentiveManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;

    invoke-static {p1, v0}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->injectApptentiveManager(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;)V

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->apptentiveConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    invoke-static {p1, v0}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->injectApptentiveConfig(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;)V

    .line 58
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->nonFatalReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->injectNonFatalReporterProvider(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;Ljavax/inject/Provider;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService_MembersInjector;->injectMembers(Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;)V

    return-void
.end method
