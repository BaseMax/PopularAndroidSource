.class final Lio/reactivex/internal/operators/c/ek$a;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ek$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/c/u<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/z<",
        "TT;>;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;

.field final g:Lio/reactivex/ah;

.field final h:I

.field final i:Z

.field final j:J

.field final k:Lio/reactivex/ah$c;

.field l:J

.field m:J

.field n:Lio/reactivex/b/c;

.field o:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile p:Z

.field final q:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IJZ)V"
        }
    .end annotation

    .line 275
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 269
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    .line 276
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ek$a;->e:J

    .line 277
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ek$a;->f:Ljava/util/concurrent/TimeUnit;

    .line 278
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ek$a;->g:Lio/reactivex/ah;

    .line 279
    iput p6, p0, Lio/reactivex/internal/operators/c/ek$a;->h:I

    .line 280
    iput-wide p7, p0, Lio/reactivex/internal/operators/c/ek$a;->j:J

    .line 281
    iput-boolean p9, p0, Lio/reactivex/internal/operators/c/ek$a;->i:Z

    if-eqz p9, :cond_0

    .line 283
    invoke-virtual {p5}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 398
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 399
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 14

    .line 406
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->queue:Lio/reactivex/internal/b/i;

    check-cast v0, Lio/reactivex/internal/d/a;

    .line 407
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    .line 408
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 414
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$a;->p:Z

    if-eqz v5, :cond_1

    .line 415
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$a;->n:Lio/reactivex/b/c;

    invoke-interface {v1}, Lio/reactivex/b/c;->dispose()V

    .line 416
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 417
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->a()V

    return-void

    .line 421
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$a;->b:Z

    .line 423
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 426
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/c/ek$a$a;

    if-eqz v5, :cond_5

    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    :cond_3
    const/4 v1, 0x0

    .line 429
    iput-object v1, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 430
    invoke-virtual {v0}, Lio/reactivex/internal/d/a;->clear()V

    .line 431
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->a()V

    .line 432
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 434
    invoke-virtual {v2, v0}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 436
    :cond_4
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    return-void

    :cond_5
    if-nez v7, :cond_9

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_7

    .line 446
    check-cast v6, Lio/reactivex/internal/operators/c/ek$a$a;

    .line 447
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$a;->i:Z

    if-nez v5, :cond_6

    iget-wide v7, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    iget-wide v5, v6, Lio/reactivex/internal/operators/c/ek$a$a;->a:J

    cmp-long v11, v7, v5

    if-nez v11, :cond_0

    .line 448
    :cond_6
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    .line 449
    iput-wide v9, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    .line 450
    iget v2, p0, Lio/reactivex/internal/operators/c/ek$a;->h:I

    invoke-static {v2}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v2

    .line 451
    iput-object v2, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 453
    invoke-interface {v1, v2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    .line 459
    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 461
    iget-wide v11, p0, Lio/reactivex/internal/operators/c/ek$a;->j:J

    cmp-long v13, v5, v11

    if-ltz v13, :cond_8

    .line 462
    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    .line 463
    iput-wide v9, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    .line 465
    invoke-virtual {v2}, Lio/reactivex/j/e;->onComplete()V

    .line 467
    iget v2, p0, Lio/reactivex/internal/operators/c/ek$a;->h:I

    invoke-static {v2}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v2

    .line 468
    iput-object v2, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 469
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    invoke-interface {v5, v2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 471
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ek$a;->i:Z

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/b/c;

    .line 473
    invoke-interface {v5}, Lio/reactivex/b/c;->dispose()V

    .line 475
    iget-object v6, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    new-instance v7, Lio/reactivex/internal/operators/c/ek$a$a;

    iget-wide v8, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    invoke-direct {v7, v8, v9, p0}, Lio/reactivex/internal/operators/c/ek$a$a;-><init>(JLio/reactivex/internal/operators/c/ek$a;)V

    iget-wide v10, p0, Lio/reactivex/internal/operators/c/ek$a;->e:J

    iget-object v12, p0, Lio/reactivex/internal/operators/c/ek$a;->f:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object v6

    .line 477
    iget-object v7, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 478
    invoke-interface {v6}, Lio/reactivex/b/c;->dispose()V

    goto/16 :goto_0

    .line 483
    :cond_8
    iput-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    goto/16 :goto_0

    :cond_9
    neg-int v4, v4

    .line 487
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/c/ek$a;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->cancelled:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->b:Z

    .line 379
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->b()V

    .line 383
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 384
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 366
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->c:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->b:Z

    .line 368
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->b()V

    .line 372
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 373
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 327
    invoke-virtual {v0, p1}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    .line 329
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 331
    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->j:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    .line 332
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    const-wide/16 v1, 0x0

    .line 333
    iput-wide v1, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    .line 335
    invoke-virtual {v0}, Lio/reactivex/j/e;->onComplete()V

    .line 337
    iget p1, p0, Lio/reactivex/internal/operators/c/ek$a;->h:I

    invoke-static {p1}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object p1

    .line 338
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 340
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ek$a;->i:Z

    if-eqz p1, :cond_2

    .line 341
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    .line 342
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/c/ek$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/c/ek$a$a;-><init>(JLio/reactivex/internal/operators/c/ek$a;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/ek$a;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/ek$a;->f:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 346
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    goto :goto_0

    .line 349
    :cond_1
    iput-wide v1, p0, Lio/reactivex/internal/operators/c/ek$a;->l:J

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 352
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ek$a;->leave(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 356
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->queue:Lio/reactivex/internal/b/i;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->enter()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 361
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ek$a;->b()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 8

    .line 291
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->n:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->n:Lio/reactivex/b/c;

    .line 294
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek$a;->a:Lio/reactivex/ag;

    .line 296
    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 298
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ek$a;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/c/ek$a;->h:I

    invoke-static {v0}, Lio/reactivex/j/e;->create(I)Lio/reactivex/j/e;

    move-result-object v0

    .line 303
    iput-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->o:Lio/reactivex/j/e;

    .line 305
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 308
    new-instance v2, Lio/reactivex/internal/operators/c/ek$a$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/c/ek$a;->m:J

    invoke-direct {v2, v0, v1, p0}, Lio/reactivex/internal/operators/c/ek$a$a;-><init>(JLio/reactivex/internal/operators/c/ek$a;)V

    .line 309
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/ek$a;->i:Z

    if-eqz p1, :cond_1

    .line 310
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$a;->k:Lio/reactivex/ah$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->e:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/ek$a;->f:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$a;->g:Lio/reactivex/ah;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ek$a;->e:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/ek$a;->f:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 315
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    :cond_2
    return-void
.end method
