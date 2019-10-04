.class public abstract Lcom/codahale/metrics/ScheduledReporter;
.super Ljava/lang/Object;
.source "ScheduledReporter.java"

# interfaces
.implements Lcom/codahale/metrics/Reporter;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/ScheduledReporter$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static final FACTORY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final durationFactor:D

.field private final durationUnit:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final filter:Lcom/codahale/metrics/MetricFilter;

.field private final rateFactor:D

.field private final rateUnit:Ljava/lang/String;

.field private final registry:Lcom/codahale/metrics/MetricRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/codahale/metrics/ScheduledReporter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codahale/metrics/ScheduledReporter;->LOG:Lorg/slf4j/Logger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/codahale/metrics/ScheduledReporter;->FACTORY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)V
    .locals 10

    .line 78
    new-instance v0, Lcom/codahale/metrics/ScheduledReporter$NamedThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codahale/metrics/ScheduledReporter;->FACTORY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codahale/metrics/ScheduledReporter$NamedThreadFactory;-><init>(Ljava/lang/String;Lcom/codahale/metrics/ScheduledReporter$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 78
    invoke-direct/range {v3 .. v9}, Lcom/codahale/metrics/ScheduledReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method protected constructor <init>(Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    .line 98
    iput-object p3, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 99
    iput-object p6, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 p1, 0x1

    .line 100
    invoke-virtual {p4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/codahale/metrics/ScheduledReporter;->rateFactor:D

    .line 101
    invoke-direct {p0, p4}, Lcom/codahale/metrics/ScheduledReporter;->calculateRateUnit(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/codahale/metrics/ScheduledReporter;->rateUnit:Ljava/lang/String;

    .line 102
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/codahale/metrics/ScheduledReporter;->durationFactor:D

    .line 103
    invoke-virtual {p5}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/ScheduledReporter;->durationUnit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 23
    sget-object v0, Lcom/codahale/metrics/ScheduledReporter;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private calculateRateUnit(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .line 202
    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/codahale/metrics/ScheduledReporter;->stop()V

    return-void
.end method

.method protected convertDuration(D)D
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/codahale/metrics/ScheduledReporter;->durationFactor:D

    mul-double p1, p1, v0

    return-wide p1
.end method

.method protected convertRate(D)D
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/codahale/metrics/ScheduledReporter;->rateFactor:D

    mul-double p1, p1, v0

    return-wide p1
.end method

.method protected getDurationUnit()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->durationUnit:Ljava/lang/String;

    return-object v0
.end method

.method protected getRateUnit()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->rateUnit:Ljava/lang/String;

    return-object v0
.end method

.method public report()V
    .locals 8

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->getGauges(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v3

    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 163
    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->getCounters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v4

    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 164
    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->getHistograms(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v5

    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 165
    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->getMeters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v6

    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/codahale/metrics/ScheduledReporter;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 166
    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->getTimers(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v7

    move-object v2, p0

    .line 162
    invoke-virtual/range {v2 .. v7}, Lcom/codahale/metrics/ScheduledReporter;->report(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract report(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Counter;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Histogram;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Meter;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Timer;",
            ">;)V"
        }
    .end annotation
.end method

.method public start(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/ScheduledReporter$1;

    invoke-direct {v1, p0}, Lcom/codahale/metrics/ScheduledReporter$1;-><init>(Lcom/codahale/metrics/ScheduledReporter;)V

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 137
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ScheduledExecutorService did not terminate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method
