.class final Lio/fabric/sdk/android/services/concurrency/a/e;
.super Lio/fabric/sdk/android/services/concurrency/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/a/a<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field b:Lio/fabric/sdk/android/services/concurrency/a/g;

.field private final c:Lio/fabric/sdk/android/services/concurrency/a/h;

.field private final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/fabric/sdk/android/services/concurrency/a/g;Lio/fabric/sdk/android/services/concurrency/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lio/fabric/sdk/android/services/concurrency/a/g;",
            "Lio/fabric/sdk/android/services/concurrency/a/h;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/a/a;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->d:Ljava/util/concurrent/Callable;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    .line 33
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->c:Lio/fabric/sdk/android/services/concurrency/a/h;

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 39
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 44
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 1175
    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    .line 1324
    invoke-virtual {v3, v1, v2, v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 2060
    :try_start_1
    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/concurrency/a/g;->getRetryPolicy()Lio/fabric/sdk/android/services/concurrency/a/f;

    move-result-object v3

    .line 2068
    iget-object v4, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/concurrency/a/g;->getRetryCount()I

    move-result v4

    .line 47
    invoke-interface {v3, v4, v1}, Lio/fabric/sdk/android/services/concurrency/a/f;->shouldRetry(ILjava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3064
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/g;->getBackoff()Lio/fabric/sdk/android/services/concurrency/a/b;

    move-result-object v0

    .line 3068
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/a/g;->getRetryCount()I

    move-result v1

    .line 48
    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/a/b;->getDelayMillis(I)J

    move-result-wide v0

    .line 49
    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/concurrency/a/g;->nextRetryState()Lio/fabric/sdk/android/services/concurrency/a/g;

    move-result-object v3

    iput-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/g;

    .line 50
    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->c:Lio/fabric/sdk/android/services/concurrency/a/h;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lio/fabric/sdk/android/services/concurrency/a/h;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 3191
    :cond_1
    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    .line 3331
    invoke-virtual {v3, v2, v1, v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 55
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
