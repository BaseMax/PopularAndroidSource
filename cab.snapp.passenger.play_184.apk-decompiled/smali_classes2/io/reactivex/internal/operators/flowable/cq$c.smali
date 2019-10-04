.class final Lio/reactivex/internal/operators/flowable/cq$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cq;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:[Lio/reactivex/internal/operators/flowable/cq$b;

.field static final b:[Lio/reactivex/internal/operators/flowable/cq$b;


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/cq$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Ljava/lang/Object;

.field i:I

.field volatile j:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 155
    sput-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->a:[Lio/reactivex/internal/operators/flowable/cq$b;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 157
    sput-object v0, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cq$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->a:[Lio/reactivex/internal/operators/flowable/cq$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 186
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cq$c;->d:I

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 368
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    .line 373
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/cq$b;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 387
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/cq$b;->a:Lorg/b/c;

    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v3

    .line 393
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 396
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/cq$c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 401
    array-length v1, p2

    if-eqz v1, :cond_2

    .line 402
    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 403
    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/cq$b;->a:Lorg/b/c;

    invoke-interface {v2, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return v3

    :cond_4
    return v0
.end method


# virtual methods
.method final a()V
    .locals 25

    move-object/from16 v1, p0

    .line 424
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/cq$c;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 436
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    const/4 v3, 0x1

    move-object v4, v0

    const/4 v5, 0x1

    .line 448
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 455
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/cq$c;->j:Lio/reactivex/internal/b/j;

    if-eqz v6, :cond_2

    .line 457
    invoke-interface {v6}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 461
    :goto_2
    invoke-direct {v1, v0, v8}, Lio/reactivex/internal/operators/flowable/cq$c;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-nez v8, :cond_16

    .line 470
    array-length v0, v4

    .line 479
    array-length v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v12, v9, :cond_5

    aget-object v7, v4, v12

    .line 480
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/cq$b;->get()J

    move-result-wide v18

    cmp-long v20, v18, v16

    if-eqz v20, :cond_4

    .line 484
    iget-wide v10, v7, Lio/reactivex/internal/operators/flowable/cq$b;->c:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v14, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0x1

    if-ne v0, v13, :cond_9

    .line 493
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 498
    :try_start_0
    invoke-interface {v6}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 500
    invoke-static {v6}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 501
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 502
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 507
    :goto_6
    invoke-direct {v1, v0, v6}, Lio/reactivex/internal/operators/flowable/cq$c;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 511
    :cond_7
    iget v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    if-eq v0, v3, :cond_8

    .line 512
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0, v9, v10}, Lorg/b/d;->request(J)V

    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_f

    :cond_9
    move v0, v8

    const/4 v8, 0x0

    :goto_7
    int-to-long v11, v8

    cmp-long v13, v11, v14

    if-gez v13, :cond_13

    .line 522
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 526
    :try_start_1
    invoke-interface {v6}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v13, v0

    .line 528
    invoke-static {v13}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 529
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 530
    invoke-static {v13}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_8
    if-nez v13, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 537
    :goto_9
    invoke-direct {v1, v0, v7}, Lio/reactivex/internal/operators/flowable/cq$c;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez v7, :cond_12

    .line 545
    invoke-static {v13}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    array-length v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v11, :cond_e

    aget-object v3, v4, v12

    .line 555
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/cq$b;->get()J

    move-result-wide v22

    cmp-long v24, v22, v16

    if-eqz v24, :cond_d

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v24, v22, v20

    move-object/from16 v22, v6

    move/from16 v23, v7

    if-eqz v24, :cond_c

    .line 559
    iget-wide v6, v3, Lio/reactivex/internal/operators/flowable/cq$b;->c:J

    add-long/2addr v6, v9

    iput-wide v6, v3, Lio/reactivex/internal/operators/flowable/cq$b;->c:J

    .line 561
    :cond_c
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/cq$b;->a:Lorg/b/c;

    invoke-interface {v3, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto :goto_b

    :cond_d
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    const/4 v13, 0x1

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move/from16 v7, v23

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    add-int/lit8 v8, v8, 0x1

    .line 571
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    if-nez v13, :cond_10

    if-eq v0, v4, :cond_f

    goto :goto_c

    :cond_f
    move-object/from16 v6, v22

    move/from16 v0, v23

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_10
    :goto_c
    if-eqz v8, :cond_11

    .line 577
    iget v3, v1, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    .line 578
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/d;

    int-to-long v6, v8

    invoke-interface {v3, v6, v7}, Lorg/b/d;->request(J)V

    :cond_11
    move-object v4, v0

    goto :goto_f

    :cond_12
    move/from16 v23, v7

    move/from16 v0, v23

    :cond_13
    if-eqz v8, :cond_14

    .line 588
    iget v3, v1, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_15

    .line 589
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/d;

    invoke-interface {v3, v11, v12}, Lorg/b/d;->request(J)V

    goto :goto_d

    :cond_14
    const/4 v6, 0x1

    :cond_15
    :goto_d
    const-wide/16 v7, 0x0

    cmp-long v3, v14, v7

    if-eqz v3, :cond_17

    if-eqz v0, :cond_18

    goto :goto_e

    :cond_16
    const/4 v6, 0x1

    :cond_17
    :goto_e
    neg-int v0, v5

    .line 600
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/cq$c;->addAndGet(I)I

    move-result v5

    if-eqz v5, :cond_19

    .line 606
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lio/reactivex/internal/operators/flowable/cq$b;

    :cond_18
    :goto_f
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method final a(Lio/reactivex/internal/operators/flowable/cq$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/cq$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 314
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 315
    array-length v1, v0

    if-eqz v1, :cond_5

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 324
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v2, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 338
    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->a:[Lio/reactivex/internal/operators/flowable/cq$b;

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v1, -0x1

    .line 341
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 343
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 345
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 348
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    return-void
.end method

.method public final dispose()V
    .locals 2

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cq$b;

    .line 195
    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/cq$c;->b:[Lio/reactivex/internal/operators/flowable/cq$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 266
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    return-void

    .line 258
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 239
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->j:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 240
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cq$c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 212
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 214
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 216
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    .line 217
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->j:Lio/reactivex/internal/b/j;

    .line 218
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->h:Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cq$c;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 223
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->i:I

    .line 224
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->j:Lio/reactivex/internal/b/j;

    .line 225
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 230
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/cq$c;->d:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->j:Lio/reactivex/internal/b/j;

    .line 232
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cq$c;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
