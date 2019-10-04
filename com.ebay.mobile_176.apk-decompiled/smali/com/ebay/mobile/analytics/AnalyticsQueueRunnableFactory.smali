.class Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;
.super Ljava/lang/Object;
.source "AnalyticsQueueRunnableFactory.java"


# instance fields
.field private final lazyApptentiveConfig:Ldagger/Lazy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyApptentiveManager:Ldagger/Lazy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyTrackingWorkHandler:Ldagger/Lazy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .param p1    # Ldagger/Lazy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ldagger/Lazy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ldagger/Lazy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyTrackingWorkHandler:Ldagger/Lazy;

    .line 32
    iput-object p2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyApptentiveManager:Ldagger/Lazy;

    .line 33
    iput-object p3, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyApptentiveConfig:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method createRunnable(Lcom/ebay/mobile/analytics/TrackingQueue;)Ljava/lang/Runnable;
    .locals 4
    .param p1    # Lcom/ebay/mobile/analytics/TrackingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 45
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyTrackingWorkHandler:Ldagger/Lazy;

    iget-object v2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyApptentiveManager:Ldagger/Lazy;

    iget-object v3, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->lazyApptentiveConfig:Ldagger/Lazy;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;-><init>(Lcom/ebay/mobile/analytics/TrackingQueue;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method
