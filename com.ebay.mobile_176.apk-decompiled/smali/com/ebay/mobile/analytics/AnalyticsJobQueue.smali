.class Lcom/ebay/mobile/analytics/AnalyticsJobQueue;
.super Ljava/lang/Object;
.source "AnalyticsJobQueue.java"

# interfaces
.implements Lcom/ebay/mobile/analytics/TrackingQueue;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final isRunnableInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/ebay/nautilus/domain/analytics/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->isRunnableInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-virtual {p2, p0}, Lcom/ebay/mobile/analytics/AnalyticsQueueRunnableFactory;->createRunnable(Lcom/ebay/mobile/analytics/TrackingQueue;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addToQueue(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    sget-object v0, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding tracking to job queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->isRunnableInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->isTerminalEvent(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 83
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Submitted runnable to be executed."

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getTasks()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/analytics/TrackingInfo;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 62
    iget-object v1, p0, Lcom/ebay/mobile/analytics/AnalyticsJobQueue;->isRunnableInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Giving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event(s) to runnable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method isTerminalEvent(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Background"

    .line 47
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
