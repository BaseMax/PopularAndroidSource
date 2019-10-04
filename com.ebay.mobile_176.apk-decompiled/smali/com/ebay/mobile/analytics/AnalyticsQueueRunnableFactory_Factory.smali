.class public final Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;
.super Ljava/lang/Object;
.source "AnalyticsQueueRunnableFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->trackingWorkHandlerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->apptentiveManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->apptentiveConfigProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAnalyticsQueueRunnableFactory(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;
    .locals 1
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
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/tracking/TrackingWorkHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    .line 40
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 41
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    .line 42
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->trackingWorkHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->apptentiveManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->apptentiveConfigProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory_Factory;->get()Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    move-result-object v0

    return-object v0
.end method
