.class public Lcom/codahale/metrics/InstrumentedScheduledExecutorService;
.super Ljava/lang/Object;
.source "InstrumentedScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;,
        Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedPeriodicRunnable;,
        Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;
    }
.end annotation


# static fields
.field private static final nameCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final completed:Lcom/codahale/metrics/Meter;

.field private final delegate:Ljava/util/concurrent/ScheduledExecutorService;

.field private final duration:Lcom/codahale/metrics/Timer;

.field private final percentOfPeriod:Lcom/codahale/metrics/Histogram;

.field private final running:Lcom/codahale/metrics/Counter;

.field private final scheduledOnce:Lcom/codahale/metrics/Meter;

.field private final scheduledOverrun:Lcom/codahale/metrics/Counter;

.field private final scheduledRepetitively:Lcom/codahale/metrics/Meter;

.field private final submitted:Lcom/codahale/metrics/Meter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->nameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/codahale/metrics/MetricRegistry;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instrumented-scheduled-executor-service-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->nameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo p1, "submitted"

    .line 51
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    const-string/jumbo p1, "running"

    .line 53
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->counter(Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->running:Lcom/codahale/metrics/Counter;

    const-string p1, "completed"

    .line 54
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->completed:Lcom/codahale/metrics/Meter;

    const-string p1, "duration"

    .line 55
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->timer(Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->duration:Lcom/codahale/metrics/Timer;

    const-string/jumbo p1, "scheduled.once"

    .line 57
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledOnce:Lcom/codahale/metrics/Meter;

    const-string/jumbo p1, "scheduled.repetitively"

    .line 58
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledRepetitively:Lcom/codahale/metrics/Meter;

    const-string/jumbo p1, "scheduled.overrun"

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->counter(Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledOverrun:Lcom/codahale/metrics/Counter;

    const-string/jumbo p1, "scheduled.percent-of-period"

    .line 60
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->histogram(Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->percentOfPeriod:Lcom/codahale/metrics/Histogram;

    return-void
.end method

.method static synthetic access$000(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;)Lcom/codahale/metrics/Counter;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->running:Lcom/codahale/metrics/Counter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;)Lcom/codahale/metrics/Timer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->duration:Lcom/codahale/metrics/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;)Lcom/codahale/metrics/Meter;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->completed:Lcom/codahale/metrics/Meter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;)Lcom/codahale/metrics/Counter;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledOverrun:Lcom/codahale/metrics/Counter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;)Lcom/codahale/metrics/Histogram;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->percentOfPeriod:Lcom/codahale/metrics/Histogram;

    return-object p0
.end method

.method private instrument(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 209
    new-instance v2, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;

    invoke-direct {v2, p0, v1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 220
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 172
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 182
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 192
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 202
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledOnce:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 69
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledOnce:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 78
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledRepetitively:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 87
    iget-object v1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedPeriodicRunnable;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedPeriodicRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    move-wide v3, p2

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->scheduledRepetitively:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 96
    iget-object v1, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;

    invoke-direct {v2, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;)V

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 163
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 154
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 145
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedScheduledExecutorService;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedScheduledExecutorService$InstrumentedCallable;-><init>(Lcom/codahale/metrics/InstrumentedScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
