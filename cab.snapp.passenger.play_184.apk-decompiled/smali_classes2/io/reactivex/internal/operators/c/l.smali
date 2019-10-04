.class public final Lio/reactivex/internal/operators/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subscribe(Lio/reactivex/ae;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lio/reactivex/internal/util/e;

    invoke-direct {v0}, Lio/reactivex/internal/util/e;-><init>()V

    .line 78
    new-instance v1, Lio/reactivex/internal/c/t;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    .line 79
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/c/t;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)V

    .line 81
    invoke-interface {p0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 83
    invoke-static {v0, v1}, Lio/reactivex/internal/util/d;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/b/c;)V

    .line 84
    iget-object p0, v0, Lio/reactivex/internal/util/e;->error:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static subscribe(Lio/reactivex/ae;Lio/reactivex/ag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 45
    new-instance v1, Lio/reactivex/internal/c/i;

    invoke-direct {v1, v0}, Lio/reactivex/internal/c/i;-><init>(Ljava/util/Queue;)V

    .line 46
    invoke-interface {p1, v1}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 48
    invoke-interface {p0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 50
    :cond_0
    invoke-virtual {v1}, Lio/reactivex/internal/c/i;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 56
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {v1}, Lio/reactivex/internal/c/i;->dispose()V

    .line 59
    invoke-interface {p1, p0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/c/i;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lio/reactivex/internal/c/i;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v3, :cond_2

    .line 65
    invoke-static {v2, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/ag;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return-void
.end method

.method public static subscribe(Lio/reactivex/ae;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 100
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 101
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 102
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lio/reactivex/internal/c/t;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/c/t;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/c/l;->subscribe(Lio/reactivex/ae;Lio/reactivex/ag;)V

    return-void
.end method
