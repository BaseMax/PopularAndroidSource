.class Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;
.super Ljava/lang/Object;
.source "RemoteImageViewMultiPassLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/android/widget/ImageViewLoaderCallbacks;


# static fields
.field private static final CANCELED:Lcom/codahale/metrics/Counter;

.field private static final CONFIG_PROVIDER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FAILED:Lcom/codahale/metrics/Counter;

.field private static final FINAL:Lcom/codahale/metrics/Timer;

.field private static final FIRST:Lcom/codahale/metrics/Timer;

.field private static final INTERMEDIATE:Lcom/codahale/metrics/Timer;

.field private static final IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final LOAD:Lcom/codahale/metrics/Timer;

.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

.field private static final RESET:Lcom/codahale/metrics/Counter;

.field private static final TOTAL:Lcom/codahale/metrics/Counter;


# instance fields
.field private final applicationContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private configuration:Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

.field private currentLoader:Lcom/ebay/android/widget/ImageViewLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private currentLoaderIsLocalOnly:Z

.field private currentLoaderIsTerminal:Z

.field private final destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private finalTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inFlight:Z

.field private intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private loadTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final trafficRates:Lcom/ebay/nautilus/kernel/connection/TrafficRates;

.field private final use565Decode:Z

.field private final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RIVMultiPass"

    const-string v2, "RemoteImageView multi-pass image loader"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    invoke-direct {v0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;-><init>()V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CONFIG_PROVIDER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "load"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOAD:Lcom/codahale/metrics/Timer;

    .line 79
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "first"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FIRST:Lcom/codahale/metrics/Timer;

    .line 85
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "intermediate"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->INTERMEDIATE:Lcom/codahale/metrics/Timer;

    .line 91
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "final"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FINAL:Lcom/codahale/metrics/Timer;

    .line 97
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "total"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->TOTAL:Lcom/codahale/metrics/Counter;

    .line 102
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->RESET:Lcom/codahale/metrics/Counter;

    .line 107
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "failed"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FAILED:Lcom/codahale/metrics/Counter;

    .line 112
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "canceled"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CANCELED:Lcom/codahale/metrics/Counter;

    return-void
.end method

.method constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/ImageViewLoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/android/widget/ViewVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/domain/data/image/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destination may not be null"

    .line 200
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility may not be null"

    .line 201
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 202
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->applicationContext:Landroid/content/Context;

    .line 203
    iput-object p4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 204
    iput-object p5, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    .line 205
    iput p6, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    .line 206
    iput p7, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    .line 207
    iput-boolean p8, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->use565Decode:Z

    .line 209
    invoke-static {p3}, Lcom/ebay/nautilus/kernel/connection/Connection;->getInstance(Landroid/content/Context;)Lcom/ebay/nautilus/kernel/connection/Connection;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getTrafficRatesProvider()Ljavax/inject/Provider;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/connection/TrafficRates;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->trafficRates:Lcom/ebay/nautilus/kernel/connection/TrafficRates;

    .line 213
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->setupInitialLoader()V

    .line 215
    sget-object p1, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->TOTAL:Lcom/codahale/metrics/Counter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Counter;->inc()V

    .line 217
    sget-object p1, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_1

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p5, Lcom/ebay/nautilus/domain/data/image/ImageData;->url:Ljava/lang/String;

    .line 220
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Constructed.  URL="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkQueueDispatch()V
    .locals 4

    const-string v0, "checkQueueDispatch"

    .line 539
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->trafficRates:Lcom/ebay/nautilus/kernel/connection/TrafficRates;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/connection/TrafficRates;->sample()V

    .line 542
    :cond_0
    :goto_0
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->getConfig()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->getMaxInFlight()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 544
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->poll()Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->getLoader()Lcom/ebay/android/widget/ImageViewLoader;

    move-result-object v1

    .line 546
    :goto_1
    sget-object v2, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_2

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "polled. loader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->getMultiPassLoader()Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

    move-result-object v0

    const/4 v2, 0x1

    .line 551
    iput-boolean v2, v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->inFlight:Z

    .line 552
    sget-object v2, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_3

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 554
    :cond_3
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 555
    invoke-interface {v1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private enqueueFinalLoad()V
    .locals 9

    const-string v0, "enqueueFinal"

    .line 524
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->startFinalLoadTimer()V

    .line 526
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v5, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->use565Decode:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    .line 528
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;-><init>(Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/android/widget/ViewVisibility;Z)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    .line 529
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->add(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)V

    return-void
.end method

.method private enqueueIntermediateLoad()V
    .locals 10

    const-string v0, "enqueueIntermediate"

    .line 510
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->startIntermediateLoadTimer()V

    .line 512
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->getConfig()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->getIntermediateDownscale()I

    move-result v0

    .line 513
    new-instance v9, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v5, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    div-int v6, v1, v0

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    div-int v7, v1, v0

    iget-boolean v8, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->use565Decode:Z

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v9, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    .line 515
    new-instance v1, Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;-><init>(Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/android/widget/ViewVisibility;Z)V

    iput-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    .line 516
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->add(Lcom/ebay/android/widget/RemoteImageViewQueueNode;)V

    return-void
.end method

.method private getConfig()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;
    .locals 5

    .line 690
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CONFIG_PROVIDER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    if-nez v0, :cond_1

    .line 693
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 695
    new-instance v1, Lcom/ebay/nautilus/kernel/util/WeakTtlReference;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/ebay/nautilus/kernel/util/WeakTtlReference;-><init>(Ljavax/inject/Provider;JLjava/util/concurrent/TimeUnit;)V

    .line 696
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CONFIG_PROVIDER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CONFIG_PROVIDER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 700
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->configuration:Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    .line 701
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->configuration:Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    return-object v0
.end method

.method private isFinalLoader(Lcom/ebay/android/widget/ImageViewLoader;)Z
    .locals 2

    .line 458
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    invoke-interface {p1, v0, v1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLoadable()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/image/ImageData;->isValid(Lcom/ebay/nautilus/domain/data/image/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUrlRewritable()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/image/ImageData;->zoomImage:Lcom/ebay/nautilus/domain/data/image/ZoomImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 4

    .line 739
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->getStateString()Ljava/lang/String;

    move-result-object v0

    .line 742
    sget-object v1, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private noLongerInFlight()V
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->inFlight:Z

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->inFlight:Z

    :cond_0
    return-void
.end method

.method private notifyFailure()V
    .locals 1

    const-string v0, "notifyFailure"

    .line 587
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    .line 591
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    .line 593
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    return-void
.end method

.method private notifySuccess(Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 2

    .line 566
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuccess / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->stopFirstLoadTimer()V

    .line 572
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->stopIntermediateLoadTimer()V

    .line 573
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->stopFinalLoadTimer()V

    .line 576
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->stopLoadTimer()V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0, p1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    return-void
.end method

.method private progressToNextLoader()V
    .locals 5

    .line 468
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-nez v0, :cond_5

    .line 470
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->getConfig()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    move-result-object v0

    .line 471
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->isUrlRewritable()Z

    move-result v1

    .line 472
    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->isIntermediateLoadEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 473
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->isFinalLoadEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 474
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    if-nez v0, :cond_3

    .line 475
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->enqueueIntermediateLoad()V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    .line 476
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->isFinalLoad()Z

    move-result v0

    if-nez v0, :cond_5

    .line 477
    :cond_4
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->enqueueFinalLoad()V

    .line 480
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->checkQueueDispatch()V

    return-void
.end method

.method private setupInitialLoader()V
    .locals 9

    .line 422
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->isLoadable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;

    iget-object v4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v5, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    iget v7, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->use565Decode:Z

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ebay/android/widget/RemoteImageViewCacheLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    .line 426
    iput-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    goto :goto_0

    .line 430
    :cond_0
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->width:I

    iget v4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->height:I

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/ebay/android/widget/RemoteImageViewFailedLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/nautilus/domain/data/image/ImageData;II)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 431
    iput-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    .line 432
    iput-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    :goto_0
    return-void
.end method

.method private startFinalLoadTimer()V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->finalTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FINAL:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->finalTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private startFirstLoadTimer()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 623
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FIRST:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private startIntermediateLoadTimer()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 644
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->INTERMEDIATE:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private startLoadTimer()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 602
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->LOAD:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopFinalLoadTimer()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->finalTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->finalTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->finalTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopFirstLoadTimer()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->firstLoadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopIntermediateLoadTimer()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->intermediateTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopLoadTimer()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 286
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->CANCELED:Lcom/codahale/metrics/Counter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->inc()V

    .line 287
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->cancel()V

    .line 288
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->noLongerInFlight()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    return-void
.end method

.method public dispatch()V
    .locals 1

    .line 311
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    const-string v0, "dispatch"

    .line 312
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->startLoadTimer()V

    .line 316
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->startFirstLoadTimer()V

    .line 319
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsLocalOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->checkQueueDispatch()V

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v0

    return-object v0
.end method

.method getStateString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    invoke-virtual {v2}, Lcom/ebay/android/widget/RemoteImageViewQueueNode;->isFinalLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "F"

    .line 711
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    if-eqz v2, :cond_1

    const-string v2, "I"

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "_"

    .line 715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :goto_0
    iget-boolean v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-eqz v2, :cond_2

    const-string v2, "T"

    goto :goto_1

    :cond_2
    const-string v2, "_"

    .line 718
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "F"

    goto :goto_2

    :cond_3
    const-string v2, "_"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IF="

    .line 720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->inFlight:Z

    if-eqz v2, :cond_4

    const-string v2, "Y"

    goto :goto_3

    :cond_4
    const-string v2, "N"

    .line 721
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 722
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 723
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " QS="

    .line 724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->QUEUE:Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;

    .line 725
    invoke-virtual {v2}, Lcom/ebay/android/widget/RemoteImageViewLoaderQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 726
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result p1

    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1, p2}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result p1

    return p1
.end method

.method public isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V
    .locals 1

    const-string/jumbo v0, "onFailure"

    .line 367
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->noLongerInFlight()V

    .line 371
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->isFinalLoader(Lcom/ebay/android/widget/ImageViewLoader;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    sget-object p1, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->FAILED:Lcom/codahale/metrics/Counter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Counter;->inc()V

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    .line 382
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-eqz p1, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->notifyFailure()V

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->progressToNextLoader()V

    return-void
.end method

.method public onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 1
    .param p2    # Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 336
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    return-void

    :cond_0
    const-string/jumbo v0, "onSuccess"

    .line 342
    invoke-direct {p0, v0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->log(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->noLongerInFlight()V

    .line 349
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->isFinalLoader(Lcom/ebay/android/widget/ImageViewLoader;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoaderIsTerminal:Z

    .line 352
    :cond_1
    invoke-direct {p0, p2}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->notifySuccess(Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    .line 353
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->progressToNextLoader()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 298
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->RESET:Lcom/codahale/metrics/Counter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->inc()V

    .line 299
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    .line 300
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->noLongerInFlight()V

    .line 301
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->setupInitialLoader()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->node:Lcom/ebay/android/widget/RemoteImageViewQueueNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIVMPLoader{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;->currentLoader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
