.class public final Lio/reactivex/internal/e/d;
.super Lio/reactivex/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/d$a;,
        Lio/reactivex/internal/e/d$b;,
        Lio/reactivex/internal/e/d$c;
    }
.end annotation


# static fields
.field static final d:Lio/reactivex/ah;


# instance fields
.field final b:Z

.field final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lio/reactivex/i/a;->single()Lio/reactivex/ah;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/e/d;->d:Lio/reactivex/ah;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/reactivex/ah;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    .line 43
    iput-boolean p2, p0, Lio/reactivex/internal/e/d;->b:Z

    return-void
.end method


# virtual methods
.method public final createWorker()Lio/reactivex/ah$c;
    .locals 3

    .line 49
    new-instance v0, Lio/reactivex/internal/e/d$c;

    iget-object v1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, Lio/reactivex/internal/e/d;->b:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/e/d$c;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 2

    .line 55
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 57
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lio/reactivex/internal/e/m;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/m;-><init>(Ljava/lang/Runnable;)V

    .line 59
    iget-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lio/reactivex/internal/e/m;->setFuture(Ljava/util/concurrent/Future;)V

    return-object v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/e/d;->b:Z

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lio/reactivex/internal/e/d$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/e/d$c$b;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/c;)V

    .line 66
    iget-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lio/reactivex/internal/e/d$c$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/d$c$a;-><init>(Ljava/lang/Runnable;)V

    .line 70
    iget-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 75
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 2

    .line 82
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    new-instance v0, Lio/reactivex/internal/e/m;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/m;-><init>(Ljava/lang/Runnable;)V

    .line 86
    iget-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lio/reactivex/internal/e/m;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 91
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 95
    :cond_0
    new-instance v0, Lio/reactivex/internal/e/d$b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/e/d$b;-><init>(Ljava/lang/Runnable;)V

    .line 97
    sget-object p1, Lio/reactivex/internal/e/d;->d:Lio/reactivex/ah;

    new-instance v1, Lio/reactivex/internal/e/d$a;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/e/d$a;-><init>(Lio/reactivex/internal/e/d;Lio/reactivex/internal/e/d$b;)V

    invoke-virtual {p1, v1, p2, p3, p4}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 99
    iget-object p2, v0, Lio/reactivex/internal/e/d$b;->a:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p2, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-object v0
.end method

.method public final schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 8

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 110
    :try_start_0
    new-instance v7, Lio/reactivex/internal/e/l;

    invoke-direct {v7, p1}, Lio/reactivex/internal/e/l;-><init>(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lio/reactivex/internal/e/d;->c:Ljava/util/concurrent/Executor;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 112
    invoke-virtual {v7, p1}, Lio/reactivex/internal/e/l;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 116
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 119
    :cond_0
    invoke-super/range {p0 .. p6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method
