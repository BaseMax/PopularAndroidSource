.class public final Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;
.super Ljava/lang/Object;
.source "AnalyticsJobQueue_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/AnalyticsJobQueue;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->executorServiceProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAnalyticsJobQueue(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)Lcom/ebay/mobile/analytics/AnalyticsJobQueue;
    .locals 1

    .line 39
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;

    check-cast p1, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsJobQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsJobQueue;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/AnalyticsJobQueue;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->executorServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->factoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsJobQueue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue_Factory;->get()Lcom/ebay/mobile/analytics/AnalyticsJobQueue;

    move-result-object v0

    return-object v0
.end method
