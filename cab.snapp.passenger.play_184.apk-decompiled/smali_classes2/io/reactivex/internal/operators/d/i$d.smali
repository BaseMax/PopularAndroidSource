.class final Lio/reactivex/internal/operators/d/i$d;
.super Lio/reactivex/internal/operators/d/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/d/i$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/d/i$c;-><init>(Lorg/b/c;II)V

    return-void
.end method

.method private d()V
    .locals 17

    move-object/from16 v0, p0

    .line 392
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$d;->b:[Lio/reactivex/internal/operators/d/i$a;

    .line 393
    array-length v2, v1

    .line 394
    iget-object v3, v0, Lio/reactivex/internal/operators/d/i$d;->a:Lorg/b/c;

    const/4 v5, 0x1

    .line 398
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/d/i$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1
    cmp-long v13, v10, v6

    if-eqz v13, :cond_8

    .line 403
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/i$d;->e:Z

    if-eqz v13, :cond_0

    .line 404
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$d;->c()V

    return-void

    .line 408
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    move-wide v14, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_3
    if-ge v10, v2, :cond_4

    .line 413
    aget-object v4, v1, v10

    .line 415
    iget-object v12, v4, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    if-eqz v12, :cond_3

    .line 417
    invoke-interface {v12}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 421
    invoke-interface {v3, v12}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v4}, Lio/reactivex/internal/operators/d/i$a;->requestOne()V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v14

    cmp-long v4, v11, v6

    if-eqz v4, :cond_2

    move-wide v14, v11

    const/4 v11, 0x0

    goto :goto_4

    :cond_2
    move-wide v10, v11

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    if-eqz v13, :cond_6

    if-eqz v11, :cond_6

    .line 431
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 433
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 435
    :cond_5
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    return-void

    :cond_6
    if-eqz v11, :cond_7

    move-wide v10, v14

    goto :goto_5

    :cond_7
    move-wide v10, v14

    goto :goto_1

    :cond_8
    :goto_5
    cmp-long v4, v10, v6

    if-nez v4, :cond_e

    .line 446
    iget-boolean v4, v0, Lio/reactivex/internal/operators/d/i$d;->e:Z

    if-eqz v4, :cond_9

    .line 447
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$d;->c()V

    return-void

    .line 451
    :cond_9
    iget-object v4, v0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v2, :cond_c

    .line 456
    aget-object v13, v1, v12

    .line 458
    iget-object v13, v13, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    if-eqz v13, :cond_b

    .line 459
    invoke-interface {v13}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    const/16 v16, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_c
    const/16 v16, 0x1

    :goto_8
    if-eqz v4, :cond_e

    if-eqz v16, :cond_e

    .line 466
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 468
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 470
    :cond_d
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    return-void

    :cond_e
    cmp-long v4, v10, v8

    if-eqz v4, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_f

    .line 477
    iget-object v4, v0, Lio/reactivex/internal/operators/d/i$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 480
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$d;->get()I

    move-result v4

    if-ne v4, v5, :cond_10

    neg-int v4, v5

    .line 482
    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/d/i$d;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    move v5, v4

    goto/16 :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 382
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/d/i$d;->d()V

    return-void
.end method

.method final onComplete()V
    .locals 1

    .line 376
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 377
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->a()V

    return-void
.end method

.method final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 370
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 371
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->a()V

    return-void
.end method

.method final onNext(Lio/reactivex/internal/operators/d/i$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/i$a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->get()I

    move-result v0

    const-string v1, "Queue full?!"

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/d/i$d;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$d;->a:Lorg/b/c;

    invoke-interface {v0, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 331
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 332
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    .line 334
    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/d/i$a;->request(J)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->a()Lio/reactivex/internal/b/i;

    move-result-object v0

    .line 338
    invoke-interface {v0, p2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 339
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->cancel()Z

    .line 340
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    new-instance p2, Lio/reactivex/c/c;

    invoke-direct {p2, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 341
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 342
    invoke-direct {p0}, Lio/reactivex/internal/operators/d/i$d;->d()V

    return-void

    .line 346
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 350
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->a()Lio/reactivex/internal/b/i;

    move-result-object v0

    .line 352
    invoke-interface {v0, p2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 353
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->cancel()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 354
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$d;->c:Lio/reactivex/internal/util/b;

    new-instance p2, Lio/reactivex/c/c;

    invoke-direct {p2, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 355
    iget-object p1, p0, Lio/reactivex/internal/operators/d/i$d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 359
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$d;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 364
    :cond_5
    invoke-direct {p0}, Lio/reactivex/internal/operators/d/i$d;->d()V

    return-void
.end method
