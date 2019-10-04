.class public Lcom/codahale/metrics/Timer;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Lcom/codahale/metrics/Metered;
.implements Lcom/codahale/metrics/Sampling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/Timer$Context;
    }
.end annotation


# instance fields
.field private final clock:Lcom/codahale/metrics/Clock;

.field private final histogram:Lcom/codahale/metrics/Histogram;

.field private final meter:Lcom/codahale/metrics/Meter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;

    invoke-direct {v0}, Lcom/codahale/metrics/ExponentiallyDecayingReservoir;-><init>()V

    invoke-direct {p0, v0}, Lcom/codahale/metrics/Timer;-><init>(Lcom/codahale/metrics/Reservoir;)V

    return-void
.end method

.method public constructor <init>(Lcom/codahale/metrics/Reservoir;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/codahale/metrics/Clock;->defaultClock()Lcom/codahale/metrics/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/Timer;-><init>(Lcom/codahale/metrics/Reservoir;Lcom/codahale/metrics/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/codahale/metrics/Reservoir;Lcom/codahale/metrics/Clock;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/codahale/metrics/Meter;

    invoke-direct {v0, p2}, Lcom/codahale/metrics/Meter;-><init>(Lcom/codahale/metrics/Clock;)V

    iput-object v0, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    .line 75
    iput-object p2, p0, Lcom/codahale/metrics/Timer;->clock:Lcom/codahale/metrics/Clock;

    .line 76
    new-instance p2, Lcom/codahale/metrics/Histogram;

    invoke-direct {p2, p1}, Lcom/codahale/metrics/Histogram;-><init>(Lcom/codahale/metrics/Reservoir;)V

    iput-object p2, p0, Lcom/codahale/metrics/Timer;->histogram:Lcom/codahale/metrics/Histogram;

    return-void
.end method

.method private update(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->histogram:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v0, p1, p2}, Lcom/codahale/metrics/Histogram;->update(J)V

    .line 150
    iget-object p1, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->mark()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->histogram:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v0}, Lcom/codahale/metrics/Histogram;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFifteenMinuteRate()D
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->getFifteenMinuteRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFiveMinuteRate()D
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->getFiveMinuteRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanRate()D
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->getMeanRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getOneMinuteRate()D
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->meter:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->getOneMinuteRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSnapshot()Lcom/codahale/metrics/Snapshot;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->histogram:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v0}, Lcom/codahale/metrics/Histogram;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public time()Lcom/codahale/metrics/Timer$Context;
    .locals 3

    .line 114
    new-instance v0, Lcom/codahale/metrics/Timer$Context;

    iget-object v1, p0, Lcom/codahale/metrics/Timer;->clock:Lcom/codahale/metrics/Clock;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/codahale/metrics/Timer$Context;-><init>(Lcom/codahale/metrics/Timer;Lcom/codahale/metrics/Clock;Lcom/codahale/metrics/Timer$1;)V

    return-object v0
.end method

.method public time(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/codahale/metrics/Timer;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v0}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v0

    .line 101
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v2, p0, Lcom/codahale/metrics/Timer;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v2}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/codahale/metrics/Timer;->update(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/codahale/metrics/Timer;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v2}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/codahale/metrics/Timer;->update(J)V

    throw p1
.end method

.method public update(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 86
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/codahale/metrics/Timer;->update(J)V

    return-void
.end method
