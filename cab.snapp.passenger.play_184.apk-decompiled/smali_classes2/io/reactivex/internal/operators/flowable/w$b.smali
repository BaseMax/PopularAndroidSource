.class final Lio/reactivex/internal/operators/flowable/w$b;
.super Lio/reactivex/internal/operators/flowable/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/w$a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final m:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final n:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/w$a;-><init>(Lio/reactivex/e/h;I)V

    .line 391
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    .line 392
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/w$b;->n:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 446
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    .line 449
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 453
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->k:Z

    if-nez v0, :cond_b

    .line 455
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->h:Z

    if-eqz v0, :cond_2

    .line 457
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->n:Z

    if-nez v1, :cond_2

    .line 458
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 460
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 468
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v1}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 480
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 482
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 484
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    if-nez v4, :cond_b

    .line 493
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->b:Lio/reactivex/e/h;

    invoke-interface {v0, v1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 503
    iget v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->l:I

    if-eq v1, v3, :cond_7

    .line 504
    iget v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->f:I

    add-int/2addr v1, v3

    .line 505
    iget v4, p0, Lio/reactivex/internal/operators/flowable/w$b;->d:I

    if-ne v1, v4, :cond_6

    .line 506
    iput v2, p0, Lio/reactivex/internal/operators/flowable/w$b;->f:I

    .line 507
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/b/d;->request(J)V

    goto :goto_2

    .line 509
    :cond_6
    iput v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->f:I

    .line 513
    :cond_7
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_a

    .line 515
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 520
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 522
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 523
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 524
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->n:Z

    if-nez v0, :cond_8

    .line 525
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 526
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/w$d;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 537
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 540
    :cond_9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/w$b;->k:Z

    .line 541
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    new-instance v2, Lio/reactivex/internal/operators/flowable/w$f;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/flowable/w$f;-><init>(Ljava/lang/Object;Lorg/b/c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/flowable/w$d;->setSubscription(Lorg/b/d;)V

    goto :goto_4

    .line 544
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/w$b;->k:Z

    .line 545
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 495
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 497
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 498
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 499
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 470
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 471
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 472
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 473
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 549
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$b;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method final b()V
    .locals 1

    .line 397
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->i:Z

    .line 439
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/w$d;->cancel()V

    .line 440
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->n:Z

    if-nez p1, :cond_0

    .line 419
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->e:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    const/4 p1, 0x1

    .line 420
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->h:Z

    :cond_0
    const/4 p1, 0x0

    .line 422
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->k:Z

    .line 423
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$b;->a()V

    return-void

    .line 425
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->m:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->j:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/w$b;->h:Z

    .line 404
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w$b;->a()V

    return-void

    .line 406
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 431
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$b;->a:Lio/reactivex/internal/operators/flowable/w$d;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/w$d;->request(J)V

    return-void
.end method
