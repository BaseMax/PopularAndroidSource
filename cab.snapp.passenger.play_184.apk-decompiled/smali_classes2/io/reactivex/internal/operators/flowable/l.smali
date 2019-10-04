.class public final Lio/reactivex/internal/operators/flowable/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subscribe(Lorg/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Lio/reactivex/internal/util/e;

    invoke-direct {v0}, Lio/reactivex/internal/util/e;-><init>()V

    .line 84
    new-instance v1, Lio/reactivex/internal/f/m;

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/a/a;->REQUEST_MAX:Lio/reactivex/e/g;

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/f/m;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)V

    .line 87
    invoke-interface {p0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 89
    invoke-static {v0, v1}, Lio/reactivex/internal/util/d;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/b/c;)V

    .line 90
    iget-object p0, v0, Lio/reactivex/internal/util/e;->error:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static subscribe(Lorg/b/b;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
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

    .line 106
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 107
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 108
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lio/reactivex/internal/f/m;

    sget-object v1, Lio/reactivex/internal/a/a;->REQUEST_MAX:Lio/reactivex/e/g;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/f/m;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/l;->subscribe(Lorg/b/b;Lorg/b/c;)V

    return-void
.end method

.method public static subscribe(Lorg/b/b;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 123
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 124
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 125
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "number > 0 required"

    .line 126
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 127
    new-instance v0, Lio/reactivex/internal/f/g;

    invoke-static {p4}, Lio/reactivex/internal/a/a;->boundedConsumer(I)Lio/reactivex/e/g;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/f/g;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/g;I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/l;->subscribe(Lorg/b/b;Lorg/b/c;)V

    return-void
.end method

.method public static subscribe(Lorg/b/b;Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 46
    new-instance v1, Lio/reactivex/internal/f/f;

    invoke-direct {v1, v0}, Lio/reactivex/internal/f/f;-><init>(Ljava/util/Queue;)V

    .line 48
    invoke-interface {p0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/reactivex/internal/f/f;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 55
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 57
    invoke-virtual {v1}, Lio/reactivex/internal/f/f;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 60
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 61
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    .line 63
    :cond_1
    invoke-virtual {v1}, Lio/reactivex/internal/f/f;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    sget-object v2, Lio/reactivex/internal/f/f;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v2, :cond_2

    .line 67
    invoke-static {p0, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lorg/b/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {v1}, Lio/reactivex/internal/f/f;->cancel()V

    .line 73
    invoke-interface {p1, p0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
