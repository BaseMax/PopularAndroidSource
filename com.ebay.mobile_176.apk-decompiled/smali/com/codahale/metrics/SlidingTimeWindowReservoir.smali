.class public Lcom/codahale/metrics/SlidingTimeWindowReservoir;
.super Ljava/lang/Object;
.source "SlidingTimeWindowReservoir.java"

# interfaces
.implements Lcom/codahale/metrics/Reservoir;


# instance fields
.field private final clock:Lcom/codahale/metrics/Clock;

.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastTick:Ljava/util/concurrent/atomic/AtomicLong;

.field private final measurements:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final window:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/codahale/metrics/Clock;->defaultClock()Lcom/codahale/metrics/Clock;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;-><init>(JLjava/util/concurrent/TimeUnit;Lcom/codahale/metrics/Clock;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/codahale/metrics/Clock;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p4, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->clock:Lcom/codahale/metrics/Clock;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->measurements:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 43
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const-wide/16 v0, 0x100

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->window:J

    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p4}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide p2

    mul-long p2, p2, v0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->lastTick:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private getTick()J
    .locals 8

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->lastTick:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 71
    iget-object v2, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v2}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v2

    const-wide/16 v4, 0x100

    mul-long v2, v2, v4

    sub-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 74
    :goto_0
    iget-object v4, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->lastTick:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method private trim()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->measurements:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->getTick()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->window:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/codahale/metrics/Snapshot;
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->trim()V

    .line 65
    new-instance v0, Lcom/codahale/metrics/UniformSnapshot;

    iget-object v1, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->measurements:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codahale/metrics/UniformSnapshot;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->trim()V

    .line 51
    iget-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->measurements:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result v0

    return v0
.end method

.method public update(J)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->trim()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->measurements:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Lcom/codahale/metrics/SlidingTimeWindowReservoir;->getTick()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
