.class final Lio/reactivex/internal/operators/flowable/et$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Lio/reactivex/h/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:J

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/h/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field final j:I

.field k:J

.field l:J

.field m:Lorg/b/d;

.field volatile n:Z

.field o:Ljava/lang/Throwable;

.field volatile p:Z


# direct methods
.method constructor <init>(Lorg/b/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 327
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->a:Lorg/b/c;

    .line 328
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/et$b;->c:J

    .line 329
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/et$b;->d:J

    .line 330
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p6}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->b:Lio/reactivex/internal/d/c;

    .line 331
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    .line 332
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 333
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 334
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 335
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 336
    iput p6, p0, Lio/reactivex/internal/operators/flowable/et$b;->j:I

    return-void
.end method

.method private a()V
    .locals 13

    .line 426
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->a:Lorg/b/c;

    .line 431
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/et$b;->b:Lio/reactivex/internal/d/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 436
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    .line 440
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    .line 442
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/h/c;

    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 446
    :goto_1
    invoke-direct {p0, v10, v12, v0, v1}, Lio/reactivex/internal/operators/flowable/et$b;->a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-void

    :cond_3
    if-nez v12, :cond_4

    .line 454
    invoke-interface {v0, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_4
    cmp-long v10, v8, v4

    if-nez v10, :cond_5

    .line 460
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v11

    invoke-direct {p0, v10, v11, v0, v1}, Lio/reactivex/internal/operators/flowable/et$b;->a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v10

    if-eqz v10, :cond_5

    return-void

    :cond_5
    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_6

    .line 466
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 469
    :cond_6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method private a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "*>;",
            "Lio/reactivex/internal/d/c<",
            "*>;)Z"
        }
    .end annotation

    .line 477
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p4}, Lio/reactivex/internal/d/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 483
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 486
    invoke-virtual {p4}, Lio/reactivex/internal/d/c;->clear()V

    .line 487
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 491
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->p:Z

    .line 520
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/et$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$b;->run()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 412
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/a;

    .line 417
    invoke-interface {v1}, Lorg/b/a;->onComplete()V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    .line 422
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/et$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 395
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/a;

    .line 401
    invoke-interface {v1, p1}, Lorg/b/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 405
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->o:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    .line 407
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/et$b;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 349
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 356
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->p:Z

    if-nez v4, :cond_1

    .line 357
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$b;->getAndIncrement()I

    .line 359
    iget v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->j:I

    invoke-static {v4, p0}, Lio/reactivex/h/c;->create(ILjava/lang/Runnable;)Lio/reactivex/h/c;

    move-result-object v4

    .line 361
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 363
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/et$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v5, v4}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 364
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/et$b;->a()V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 370
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/a;

    .line 371
    invoke-interface {v7, p1}, Lorg/b/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/et$b;->l:J

    add-long/2addr v6, v4

    .line 375
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->c:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_3

    .line 376
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->d:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/et$b;->l:J

    .line 378
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/a;

    if-eqz p1, :cond_4

    .line 380
    invoke-interface {p1}, Lorg/b/a;->onComplete()V

    goto :goto_1

    .line 383
    :cond_3
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/et$b;->l:J

    .line 386
    :cond_4
    :goto_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/et$b;->d:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    .line 387
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/et$b;->k:J

    return-void

    .line 389
    :cond_5
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->k:J

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->m:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->m:Lorg/b/d;

    .line 343
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/et$b;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 4

    .line 501
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 504
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide p1

    .line 506
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->addCap(JJ)J

    move-result-wide p1

    .line 507
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->m:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    goto :goto_0

    .line 509
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->d:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/c;->multiplyCap(JJ)J

    move-result-wide p1

    .line 510
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->m:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    .line 513
    :goto_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/et$b;->a()V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 1

    .line 527
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/et$b;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/et$b;->m:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method
