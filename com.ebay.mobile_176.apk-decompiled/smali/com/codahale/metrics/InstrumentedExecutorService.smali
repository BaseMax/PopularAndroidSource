.class public Lcom/codahale/metrics/InstrumentedExecutorService;
.super Ljava/lang/Object;
.source "InstrumentedExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;,
        Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;
    }
.end annotation


# static fields
.field private static final nameCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final completed:Lcom/codahale/metrics/Meter;

.field private final delegate:Ljava/util/concurrent/ExecutorService;

.field private final duration:Lcom/codahale/metrics/Timer;

.field private final running:Lcom/codahale/metrics/Counter;

.field private final submitted:Lcom/codahale/metrics/Meter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/codahale/metrics/InstrumentedExecutorService;->nameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/codahale/metrics/MetricRegistry;)V
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instrumented-delegate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codahale/metrics/InstrumentedExecutorService;->nameCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codahale/metrics/InstrumentedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    const-string/jumbo p1, "submitted"

    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    const-string/jumbo p1, "running"

    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->counter(Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->running:Lcom/codahale/metrics/Counter;

    const-string p1, "completed"

    .line 51
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->completed:Lcom/codahale/metrics/Meter;

    const-string p1, "duration"

    .line 52
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codahale/metrics/MetricRegistry;->timer(Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->duration:Lcom/codahale/metrics/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Counter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->running:Lcom/codahale/metrics/Counter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Timer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->duration:Lcom/codahale/metrics/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Meter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->completed:Lcom/codahale/metrics/Meter;

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

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 134
    new-instance v2, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;

    invoke-direct {v2, p0, v1}, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;-><init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/util/concurrent/Callable;)V

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

    .line 161
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 61
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

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

    .line 96
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 97
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

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

    .line 106
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 107
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

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
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 117
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

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
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Meter;->mark(J)V

    .line 127
    invoke-direct {p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService;->instrument(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

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

    .line 146
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

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

    .line 69
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 70
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

    .line 78
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 79
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedRunnable;-><init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

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

    .line 87
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->submitted:Lcom/codahale/metrics/Meter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    .line 88
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;

    invoke-direct {v1, p0, p1}, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;-><init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
