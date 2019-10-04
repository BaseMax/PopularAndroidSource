.class final Lio/reactivex/internal/operators/flowable/ex$a;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ex$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/n<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/ah;

.field final d:I

.field final e:Z

.field final f:J

.field final g:Lio/reactivex/ah$c;

.field h:J

.field i:J

.field j:Lorg/b/d;

.field k:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile l:Z

.field final m:Lio/reactivex/internal/disposables/f;


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IJZ)V"
        }
    .end annotation

    .line 302
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 296
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    .line 303
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ex$a;->a:J

    .line 304
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ex$a;->b:Ljava/util/concurrent/TimeUnit;

    .line 305
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ex$a;->c:Lio/reactivex/ah;

    .line 306
    iput p6, p0, Lio/reactivex/internal/operators/flowable/ex$a;->d:I

    .line 307
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/ex$a;->f:J

    .line 308
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/ex$a;->e:Z

    if-eqz p9, :cond_0

    .line 310
    invoke-virtual {p5}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 20

    move-object/from16 v0, p0

    .line 460
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->queue:Lio/reactivex/internal/b/i;

    .line 461
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    .line 462
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    move-object v5, v3

    const/4 v3, 0x1

    .line 468
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/ex$a;->l:Z

    if-eqz v6, :cond_1

    .line 469
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    invoke-interface {v2}, Lorg/b/d;->cancel()V

    .line 470
    invoke-interface {v1}, Lio/reactivex/internal/b/i;->clear()V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void

    .line 475
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/ex$a;->o:Z

    .line 477
    invoke-interface {v1}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 480
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/flowable/ex$a$a;

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    .line 483
    :cond_3
    iput-object v10, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 484
    invoke-interface {v1}, Lio/reactivex/internal/b/i;->clear()V

    .line 485
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->p:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 487
    invoke-virtual {v5, v1}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 489
    :cond_4
    invoke-virtual {v5}, Lio/reactivex/h/c;->onComplete()V

    .line 491
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void

    :cond_5
    if-nez v8, :cond_e

    const-wide/16 v13, 0x0

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_9

    .line 500
    check-cast v7, Lio/reactivex/internal/operators/flowable/ex$a$a;

    .line 501
    iget-boolean v8, v0, Lio/reactivex/internal/operators/flowable/ex$a;->e:Z

    if-nez v8, :cond_7

    iget-wide v8, v0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    iget-wide v6, v7, Lio/reactivex/internal/operators/flowable/ex$a$a;->a:J

    cmp-long v17, v8, v6

    if-nez v17, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v5

    goto/16 :goto_4

    .line 502
    :cond_7
    :goto_3
    invoke-virtual {v5}, Lio/reactivex/h/c;->onComplete()V

    .line 503
    iput-wide v13, v0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    .line 504
    iget v5, v0, Lio/reactivex/internal/operators/flowable/ex$a;->d:I

    invoke-static {v5}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v5

    .line 505
    iput-object v5, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->requested()J

    move-result-wide v6

    cmp-long v8, v6, v13

    if-eqz v8, :cond_8

    .line 509
    invoke-interface {v2, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v12, v6, v8

    if-eqz v12, :cond_0

    .line 511
    invoke-virtual {v0, v10, v11}, Lio/reactivex/internal/operators/flowable/ex$a;->produced(J)J

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 514
    iput-object v3, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 515
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v1}, Lio/reactivex/internal/b/i;->clear()V

    .line 516
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 517
    new-instance v1, Lio/reactivex/c/c;

    const-string v3, "Could not deliver first window due to lack of requests."

    invoke-direct {v1, v3}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void

    .line 525
    :cond_9
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    .line 526
    iget-wide v7, v0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    add-long/2addr v7, v10

    move-object v9, v5

    .line 528
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->f:J

    cmp-long v17, v7, v4

    if-ltz v17, :cond_d

    .line 529
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    add-long/2addr v4, v10

    iput-wide v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    .line 530
    iput-wide v13, v0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    .line 532
    invoke-virtual {v9}, Lio/reactivex/h/c;->onComplete()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->requested()J

    move-result-wide v4

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    .line 537
    iget v6, v0, Lio/reactivex/internal/operators/flowable/ex$a;->d:I

    invoke-static {v6}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v6

    .line 538
    iput-object v6, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 539
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    invoke-interface {v7, v6}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v4, v7

    if-eqz v9, :cond_a

    .line 541
    invoke-virtual {v0, v10, v11}, Lio/reactivex/internal/operators/flowable/ex$a;->produced(J)J

    .line 544
    :cond_a
    iget-boolean v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->e:Z

    if-eqz v4, :cond_b

    .line 545
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v4}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/b/c;

    .line 546
    invoke-interface {v4}, Lio/reactivex/b/c;->dispose()V

    .line 548
    iget-object v13, v0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    new-instance v14, Lio/reactivex/internal/operators/flowable/ex$a$a;

    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    invoke-direct {v14, v4, v5, v0}, Lio/reactivex/internal/operators/flowable/ex$a$a;-><init>(JLio/reactivex/internal/operators/flowable/ex$a;)V

    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/ex$a;->a:J

    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/ex$a;->b:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v4

    move-wide/from16 v17, v4

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v4

    .line 550
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v5, v4}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    :cond_b
    move-object v5, v6

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    .line 554
    iput-object v3, v0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 555
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    invoke-interface {v1}, Lorg/b/d;->cancel()V

    .line 556
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    new-instance v2, Lio/reactivex/c/c;

    const-string v3, "Could not deliver window due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void

    .line 561
    :cond_d
    iput-wide v7, v0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    goto :goto_4

    :cond_e
    move-object v9, v5

    neg-int v3, v3

    .line 565
    invoke-virtual {v0, v3}, Lio/reactivex/internal/operators/flowable/ex$a;->leave(I)I

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    :goto_4
    move-object v5, v9

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->cancelled:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 452
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 453
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->o:Z

    .line 433
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->a()V

    .line 437
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 438
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 420
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->p:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->o:Z

    .line 422
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->a()V

    .line 426
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 427
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 368
    invoke-virtual {v0, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    .line 370
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 372
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/ex$a;->f:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_3

    .line 373
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    const-wide/16 v1, 0x0

    .line 374
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    .line 376
    invoke-virtual {v0}, Lio/reactivex/h/c;->onComplete()V

    .line 378
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->requested()J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-eqz p1, :cond_2

    .line 381
    iget p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->d:I

    invoke-static {p1}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object p1

    .line 382
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 383
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v5, v0

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/operators/flowable/ex$a;->produced(J)J

    .line 387
    :cond_1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->e:Z

    if-eqz p1, :cond_4

    .line 388
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    .line 390
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 391
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/ex$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/ex$a$a;-><init>(JLio/reactivex/internal/operators/flowable/ex$a;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/ex$a;->a:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/ex$a;->b:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 396
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 397
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 398
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "Could not deliver window due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 399
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->dispose()V

    return-void

    .line 403
    :cond_3
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->h:J

    :cond_4
    :goto_0
    const/4 p1, -0x1

    .line 406
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ex$a;->leave(I)I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 410
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->queue:Lio/reactivex/internal/b/i;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->enter()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 415
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 11

    .line 318
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->j:Lorg/b/d;

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$a;->n:Lorg/b/c;

    .line 324
    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 326
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->cancelled:Z

    if-eqz v1, :cond_0

    return-void

    .line 330
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->d:I

    invoke-static {v1}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v1

    .line 331
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->k:Lio/reactivex/h/c;

    .line 333
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ex$a;->requested()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 335
    invoke-interface {v0, v1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x1

    .line 337
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/operators/flowable/ex$a;->produced(J)J

    .line 347
    :cond_1
    new-instance v5, Lio/reactivex/internal/operators/flowable/ex$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex$a;->i:J

    invoke-direct {v5, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/ex$a$a;-><init>(JLio/reactivex/internal/operators/flowable/ex$a;)V

    .line 348
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ex$a;->e:Z

    if-eqz v2, :cond_2

    .line 349
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ex$a;->g:Lio/reactivex/ah$c;

    iget-wide v8, p0, Lio/reactivex/internal/operators/flowable/ex$a;->a:J

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/ex$a;->b:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v2

    goto :goto_0

    .line 351
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ex$a;->c:Lio/reactivex/ah;

    iget-wide v8, p0, Lio/reactivex/internal/operators/flowable/ex$a;->a:J

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/ex$a;->b:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v2

    .line 354
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/ex$a;->m:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 340
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/ex$a;->cancelled:Z

    .line 341
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 342
    new-instance p1, Lio/reactivex/c/c;

    const-string v1, "Could not deliver initial window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 443
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/ex$a;->requested(J)V

    return-void
.end method
