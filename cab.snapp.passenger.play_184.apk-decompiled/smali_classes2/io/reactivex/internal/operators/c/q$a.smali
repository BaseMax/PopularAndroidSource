.class final Lio/reactivex/internal/operators/c/q$a;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/q;
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
        "Lio/reactivex/internal/c/u<",
        "TT;TU;TU;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;

.field final h:I

.field final i:Z

.field final j:Lio/reactivex/ah$c;

.field k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field l:Lio/reactivex/b/c;

.field m:Lio/reactivex/b/c;

.field n:J

.field o:J


# direct methods
.method constructor <init>(Lio/reactivex/ag;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/ah$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 412
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 413
    iput-object p2, p0, Lio/reactivex/internal/operators/c/q$a;->e:Ljava/util/concurrent/Callable;

    .line 414
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/q$a;->f:J

    .line 415
    iput-object p5, p0, Lio/reactivex/internal/operators/c/q$a;->g:Ljava/util/concurrent/TimeUnit;

    .line 416
    iput p6, p0, Lio/reactivex/internal/operators/c/q$a;->h:I

    .line 417
    iput-boolean p7, p0, Lio/reactivex/internal/operators/c/q$a;->i:Z

    .line 418
    iput-object p8, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Lio/reactivex/ag;Ljava/lang/Object;)V
    .locals 0

    .line 388
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/c/q$a;->accept(Lio/reactivex/ag;Ljava/util/Collection;)V

    return-void
.end method

.method public final accept(Lio/reactivex/ag;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 518
    invoke-interface {p1, p2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 523
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/q$a;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/q$a;->cancelled:Z

    .line 525
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->m:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 526
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 527
    monitor-enter p0

    const/4 v0, 0x0

    .line 528
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 529
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/q$a;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 499
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 504
    iput-object v1, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 505
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$a;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v1, v0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/q$a;->b:Z

    .line 510
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/q$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/o;->drainLoop(Lio/reactivex/internal/b/i;Lio/reactivex/ag;ZLio/reactivex/b/c;Lio/reactivex/internal/util/k;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 505
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 490
    monitor-enter p0

    const/4 v0, 0x0

    .line 491
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 494
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    .line 492
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

    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 452
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Lio/reactivex/internal/operators/c/q$a;->h:I

    if-ge p1, v1, :cond_1

    .line 458
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 460
    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 461
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/q$a;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/c/q$a;->n:J

    .line 462
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 464
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/q$a;->i:Z

    if-eqz p1, :cond_2

    .line 465
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->l:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_2
    const/4 p1, 0x0

    .line 468
    invoke-virtual {p0, v0, p1, p0}, Lio/reactivex/internal/operators/c/q$a;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/b/c;)V

    .line 471
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->e:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    monitor-enter p0

    .line 480
    :try_start_2
    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 481
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/q$a;->o:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/c/q$a;->o:J

    .line 482
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/q$a;->i:Z

    if-eqz p1, :cond_3

    .line 484
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/q$a;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/q$a;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->l:Lio/reactivex/b/c;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 482
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 473
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 474
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 475
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/q$a;->dispose()V

    return-void

    :catchall_2
    move-exception p1

    .line 462
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 7

    .line 423
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->m:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->m:Lio/reactivex/b/c;

    .line 429
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iput-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 440
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 442
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/q$a;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/q$a;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->l:Lio/reactivex/b/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 431
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 432
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 433
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    .line 434
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$a;->j:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 7

    .line 543
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    monitor-enter p0

    .line 554
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 555
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/q$a;->n:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/q$a;->o:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/c/q$a;->k:Ljava/util/Collection;

    .line 559
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/operators/c/q$a;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/b/c;)V

    return-void

    .line 556
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 559
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 545
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 546
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/q$a;->dispose()V

    .line 547
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$a;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
