.class public Lcom/codahale/metrics/ExponentiallyDecayingReservoir;
.super Ljava/lang/Object;
.source "ExponentiallyDecayingReservoir.java"

# interfaces
.implements Lcom/codahale/metrics/Reservoir;


# static fields
.field private static final RESCALE_THRESHOLD:J


# instance fields
.field private final alpha:D

.field private final clock:Lcom/codahale/metrics/Clock;

.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final nextScaleTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final size:I

.field private volatile startTime:J

.field private final values:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Double;",
            "Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->RESCALE_THRESHOLD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x404

    const-wide v1, 0x3f8eb851eb851eb8L    # 0.015

    .line 43
    invoke-direct {p0, v0, v1, v2}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/codahale/metrics/Clock;->defaultClock()Lcom/codahale/metrics/Clock;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;-><init>(IDLcom/codahale/metrics/Clock;)V

    return-void
.end method

.method public constructor <init>(IDLcom/codahale/metrics/Clock;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 68
    iput-wide p2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->alpha:D

    .line 69
    iput p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->size:I

    .line 70
    iput-object p4, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->clock:Lcom/codahale/metrics/Clock;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->currentTimeInSeconds()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->startTime:J

    .line 73
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p4}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide p2

    sget-wide v0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->RESCALE_THRESHOLD:J

    add-long/2addr p2, v0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->nextScaleTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private currentTimeInSeconds()J
    .locals 3

    .line 136
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v1}, Lcom/codahale/metrics/Clock;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lockForRegularUsage()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    return-void
.end method

.method private lockForRescale()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    return-void
.end method

.method private rescale(JJ)V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->nextScaleTime:Ljava/util/concurrent/atomic/AtomicLong;

    sget-wide v1, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->RESCALE_THRESHOLD:J

    add-long/2addr p1, v1

    invoke-virtual {v0, p3, p4, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lockForRescale()V

    .line 165
    :try_start_0
    iget-wide p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->startTime:J

    .line 166
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->currentTimeInSeconds()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->startTime:J

    .line 167
    iget-wide p3, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->alpha:D

    neg-double p3, p3

    iget-wide v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->startTime:J

    const/4 v2, 0x0

    sub-long/2addr v0, p1

    long-to-double p1, v0

    mul-double p3, p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    .line 169
    new-instance p3, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Double;

    .line 171
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;

    .line 172
    new-instance v1, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;

    iget-wide v2, v0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    iget-wide v4, v0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->weight:D

    mul-double v4, v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;-><init>(JD)V

    .line 173
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {v0, p4, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRescale()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRescale()V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private rescaleIfNeeded()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v0}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->nextScaleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 121
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->rescale(JJ)V

    :cond_0
    return-void
.end method

.method private unlockForRegularUsage()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method private unlockForRescale()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method private weight(J)D
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->alpha:D

    long-to-double p1, p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public getSnapshot()Lcom/codahale/metrics/Snapshot;
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lockForRegularUsage()V

    .line 129
    :try_start_0
    new-instance v0, Lcom/codahale/metrics/WeightedSnapshot;

    iget-object v1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codahale/metrics/WeightedSnapshot;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRegularUsage()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRegularUsage()V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 78
    iget v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->size:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public update(J)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->currentTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->update(JJ)V

    return-void
.end method

.method public update(JJ)V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->rescaleIfNeeded()V

    .line 94
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->lockForRegularUsage()V

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->startTime:J

    const/4 v2, 0x0

    sub-long/2addr p3, v0

    invoke-direct {p0, p3, p4}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->weight(J)D

    move-result-wide p3

    .line 97
    new-instance v0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;-><init>(JD)V

    .line 98
    invoke-static {}, Lcom/codahale/metrics/ThreadLocalRandom;->current()Lcom/codahale/metrics/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codahale/metrics/ThreadLocalRandom;->nextDouble()D

    move-result-wide p1

    div-double/2addr p3, p1

    .line 100
    iget-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p1

    .line 101
    iget v1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->size:I

    int-to-long v1, v1

    cmp-long p1, p1, v1

    if-gtz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->firstKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double p2, v1, p3

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 107
    :goto_0
    iget-object p2, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->values:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->firstKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRegularUsage()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;->unlockForRegularUsage()V

    throw p1
.end method
