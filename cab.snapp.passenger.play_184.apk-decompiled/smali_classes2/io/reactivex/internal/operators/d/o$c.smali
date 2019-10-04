.class final Lio/reactivex/internal/operators/d/o$c;
.super Lio/reactivex/internal/operators/d/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/d/o$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final k:Lio/reactivex/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/a<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/b/a;ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/b/a<",
            "-TT;>;I",
            "Lio/reactivex/internal/d/b<",
            "TT;>;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/d/o$a;-><init>(ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V

    .line 335
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o$c;->k:Lio/reactivex/internal/b/a;

    return-void
.end method


# virtual methods
.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o$c;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o$c;->e:Lorg/b/d;

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o$c;->k:Lio/reactivex/internal/b/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/b/a;->onSubscribe(Lorg/b/d;)V

    .line 345
    iget v0, p0, Lio/reactivex/internal/operators/d/o$c;->a:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 352
    iget v1, v0, Lio/reactivex/internal/operators/d/o$c;->j:I

    .line 353
    iget-object v2, v0, Lio/reactivex/internal/operators/d/o$c;->c:Lio/reactivex/internal/d/b;

    .line 354
    iget-object v3, v0, Lio/reactivex/internal/operators/d/o$c;->k:Lio/reactivex/internal/b/a;

    .line 355
    iget v4, v0, Lio/reactivex/internal/operators/d/o$c;->b:I

    move v6, v1

    const/4 v1, 0x1

    .line 359
    :cond_0
    :goto_0
    iget-object v7, v0, Lio/reactivex/internal/operators/d/o$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_1
    :goto_1
    cmp-long v13, v11, v7

    if-eqz v13, :cond_7

    .line 363
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/o$c;->i:Z

    if-eqz v13, :cond_2

    .line 364
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    return-void

    .line 368
    :cond_2
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/o$c;->f:Z

    if-eqz v13, :cond_3

    .line 371
    iget-object v14, v0, Lio/reactivex/internal/operators/d/o$c;->g:Ljava/lang/Throwable;

    if-eqz v14, :cond_3

    .line 373
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    .line 375
    invoke-interface {v3, v14}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 377
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$c;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 382
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->poll()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v16, :cond_5

    .line 387
    invoke-interface {v3}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 389
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$c;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_5
    if-nez v16, :cond_7

    .line 397
    invoke-interface {v3, v14}, Lio/reactivex/internal/b/a;->tryOnNext(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    :cond_6
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_1

    .line 404
    iget-object v13, v0, Lio/reactivex/internal/operators/d/o$c;->e:Lorg/b/d;

    int-to-long v5, v6

    invoke-interface {v13, v5, v6}, Lorg/b/d;->request(J)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    cmp-long v5, v11, v7

    if-nez v5, :cond_a

    .line 409
    iget-boolean v5, v0, Lio/reactivex/internal/operators/d/o$c;->i:Z

    if-eqz v5, :cond_8

    .line 410
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    return-void

    .line 414
    :cond_8
    iget-boolean v5, v0, Lio/reactivex/internal/operators/d/o$c;->f:Z

    if-eqz v5, :cond_a

    .line 415
    iget-object v5, v0, Lio/reactivex/internal/operators/d/o$c;->g:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 417
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    .line 419
    invoke-interface {v3, v5}, Lio/reactivex/internal/b/a;->onError(Ljava/lang/Throwable;)V

    .line 421
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$c;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 424
    :cond_9
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 425
    invoke-interface {v3}, Lio/reactivex/internal/b/a;->onComplete()V

    .line 427
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$c;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_a
    cmp-long v5, v11, v9

    if-eqz v5, :cond_b

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v5, v7, v9

    if-eqz v5, :cond_b

    .line 434
    iget-object v5, v0, Lio/reactivex/internal/operators/d/o$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v11

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 437
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/o$c;->get()I

    move-result v5

    if-ne v5, v1, :cond_c

    .line 439
    iput v6, v0, Lio/reactivex/internal/operators/d/o$c;->j:I

    neg-int v1, v1

    .line 440
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/d/o$c;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_c
    move v1, v5

    goto/16 :goto_0
.end method
