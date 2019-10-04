.class final Lio/reactivex/internal/operators/flowable/q$a;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/f/n<",
        "TT;TU;TU;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:I

.field final e:Z

.field final f:Lio/reactivex/ah$c;

.field g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/b/c;

.field i:Lorg/b/d;

.field j:J

.field k:J


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/ah$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 407
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 408
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ljava/util/concurrent/Callable;

    .line 409
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    .line 410
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 411
    iput p6, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:I

    .line 412
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/q$a;->e:Z

    .line 413
    iput-object p8, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0

    .line 383
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$a;->accept(Lorg/b/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final accept(Lorg/b/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    .line 516
    invoke-interface {p1, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final cancel()V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->cancelled:Z

    .line 529
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$a;->dispose()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 535
    monitor-enter p0

    const/4 v0, 0x0

    .line 536
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 537
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->i:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 539
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    .line 537
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 501
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 502
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 505
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v1, v0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->o:Z

    .line 507
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 502
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 489
    monitor-enter p0

    const/4 v0, 0x0

    .line 490
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 491
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 493
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    .line 491
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 450
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:I

    if-ge p1, v1, :cond_1

    .line 456
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 459
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 460
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->j:J

    .line 461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 463
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->e:Z

    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->h:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_2
    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0, v0, p1, p0}, Lio/reactivex/internal/operators/flowable/q$a;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/b/c;)V

    .line 470
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The supplied buffer is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    monitor-enter p0

    .line 479
    :try_start_2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 480
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->k:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->k:J

    .line 481
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->e:Z

    if-eqz p1, :cond_3

    .line 483
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->h:Lio/reactivex/b/c;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 481
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 472
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 473
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$a;->cancel()V

    .line 474
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 461
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 8

    .line 418
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->i:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->i:Lorg/b/d;

    .line 426
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 437
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 439
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->h:Lio/reactivex/b/c;

    const-wide v0, 0x7fffffffffffffffL

    .line 441
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 428
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 429
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    .line 430
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 431
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 522
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$a;->requested(J)V

    return-void
.end method

.method public final run()V
    .locals 7

    .line 552
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    monitor-enter p0

    .line 563
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 564
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/q$a;->j:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/q$a;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->g:Ljava/util/Collection;

    .line 568
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/operators/flowable/q$a;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/b/c;)V

    return-void

    .line 565
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 568
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 554
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 555
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$a;->cancel()V

    .line 556
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$a;->n:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
