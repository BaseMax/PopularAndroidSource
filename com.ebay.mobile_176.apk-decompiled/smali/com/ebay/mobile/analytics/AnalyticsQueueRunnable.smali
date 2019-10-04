.class Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;
.super Ljava/lang/Object;
.source "AnalyticsQueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/mobile/analytics/TrackingQueue;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .param p1    # Lcom/ebay/mobile/analytics/TrackingQueue;
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
    .param p4    # Ldagger/Lazy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/analytics/TrackingQueue;",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;

    .line 40
    iput-object p2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyTrackingWorkHandler:Ldagger/Lazy;

    .line 41
    iput-object p3, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyApptentiveManager:Ldagger/Lazy;

    .line 42
    iput-object p4, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyApptentiveConfig:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;

    invoke-interface {v0}, Lcom/ebay/mobile/analytics/TrackingQueue;->getTasks()Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyTrackingWorkHandler:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;

    .line 53
    iget-object v2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyApptentiveManager:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;

    .line 54
    iget-object v3, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnable;->lazyApptentiveConfig:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;

    .line 58
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;->get()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;->submitApptentiveEvent(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    .line 60
    :cond_0
    invoke-virtual {v1, v4}, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;->handleWork(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
