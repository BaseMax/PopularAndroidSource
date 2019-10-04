.class final Lio/reactivex/internal/operators/flowable/ct$a;
.super Lio/reactivex/j;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final b:[Lio/reactivex/internal/operators/flowable/ct$b;

.field static final c:[Lio/reactivex/internal/operators/flowable/ct$b;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/ct$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:I

.field final h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field k:I

.field volatile l:Z

.field m:Ljava/lang/Throwable;

.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 130
    sput-object v1, Lio/reactivex/internal/operators/flowable/ct$a;->b:[Lio/reactivex/internal/operators/flowable/ct$b;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 133
    sput-object v0, Lio/reactivex/internal/operators/flowable/ct$a;->c:[Lio/reactivex/internal/operators/flowable/ct$b;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1

    .line 157
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 158
    iput p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->f:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 159
    iput p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->g:I

    .line 160
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/ct$a;->h:Z

    .line 161
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 163
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/ct$a;->b:[Lio/reactivex/internal/operators/flowable/ct$b;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 9

    .line 466
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ct$a;->c:[Lio/reactivex/internal/operators/flowable/ct$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/ct$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 467
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/ct$b;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 468
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/ct$b;->a:Lorg/b/c;

    invoke-interface {v3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 9

    .line 475
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ct$a;->c:[Lio/reactivex/internal/operators/flowable/ct$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/ct$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 476
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/ct$b;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 477
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/ct$b;->a:Lorg/b/c;

    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 24

    move-object/from16 v1, p0

    .line 315
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    .line 323
    iget v2, v1, Lio/reactivex/internal/operators/flowable/ct$a;->n:I

    .line 324
    iget v3, v1, Lio/reactivex/internal/operators/flowable/ct$a;->g:I

    .line 325
    iget v4, v1, Lio/reactivex/internal/operators/flowable/ct$a;->k:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 326
    :goto_0
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 328
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/internal/operators/flowable/ct$b;

    move v9, v2

    const/4 v2, 0x1

    .line 333
    :goto_1
    array-length v10, v8

    if-eqz v0, :cond_15

    if-eqz v10, :cond_15

    .line 338
    array-length v11, v8

    const-wide v12, 0x7fffffffffffffffL

    move v14, v10

    move-wide v15, v12

    const/4 v10, 0x0

    :goto_2
    const-wide/high16 v17, -0x8000000000000000L

    if-ge v10, v11, :cond_4

    aget-object v5, v8, v10

    .line 339
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/ct$b;->get()J

    move-result-wide v19

    move-object/from16 v21, v7

    iget-wide v6, v5, Lio/reactivex/internal/operators/flowable/ct$b;->c:J

    sub-long v19, v19, v6

    cmp-long v5, v19, v17

    if-eqz v5, :cond_2

    cmp-long v5, v15, v19

    if-lez v5, :cond_3

    move-wide/from16 v15, v19

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v21

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v21, v7

    const-wide/16 v5, 0x0

    if-nez v14, :cond_5

    move-wide v15, v5

    :cond_5
    :goto_4
    cmp-long v7, v15, v5

    if-eqz v7, :cond_11

    .line 354
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ct$a;->isDisposed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 355
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 359
    :cond_6
    iget-boolean v7, v1, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    if-eqz v7, :cond_7

    .line 361
    iget-boolean v10, v1, Lio/reactivex/internal/operators/flowable/ct$a;->h:Z

    if-nez v10, :cond_7

    .line 362
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    if-eqz v10, :cond_7

    .line 364
    invoke-direct {v1, v10}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 372
    :cond_7
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    if-eqz v7, :cond_a

    if-eqz v11, :cond_a

    .line 383
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 385
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 387
    :cond_9
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ct$a;->b()V

    return-void

    :cond_a
    if-nez v11, :cond_11

    .line 398
    array-length v7, v8

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_6
    const-wide/16 v19, 0x1

    if-ge v11, v7, :cond_d

    aget-object v5, v8, v11

    .line 399
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/ct$b;->get()J

    move-result-wide v22

    cmp-long v6, v22, v17

    if-eqz v6, :cond_c

    cmp-long v6, v22, v12

    if-eqz v6, :cond_b

    .line 402
    iget-wide v12, v5, Lio/reactivex/internal/operators/flowable/ct$b;->c:J

    add-long v12, v12, v19

    iput-wide v12, v5, Lio/reactivex/internal/operators/flowable/ct$b;->c:J

    .line 404
    :cond_b
    iget-object v5, v5, Lio/reactivex/internal/operators/flowable/ct$b;->a:Lorg/b/c;

    invoke-interface {v5, v10}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    const/4 v14, 0x1

    :goto_7
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v5, 0x0

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_6

    :cond_d
    sub-long v15, v15, v19

    if-eqz v4, :cond_e

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_e

    .line 414
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/b/d;

    int-to-long v6, v3

    invoke-interface {v5, v6, v7}, Lorg/b/d;->request(J)V

    const/4 v9, 0x0

    .line 417
    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/internal/operators/flowable/ct$b;

    if-nez v14, :cond_10

    if-eq v5, v8, :cond_f

    goto :goto_8

    :cond_f
    const-wide/16 v5, 0x0

    const-wide v12, 0x7fffffffffffffffL

    goto/16 :goto_4

    :cond_10
    :goto_8
    move-object v8, v5

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 374
    invoke-static {v2}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 375
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 376
    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_11
    cmp-long v7, v15, v5

    if-nez v7, :cond_16

    .line 425
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ct$a;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 426
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 430
    :cond_12
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    if-eqz v5, :cond_13

    .line 432
    iget-boolean v6, v1, Lio/reactivex/internal/operators/flowable/ct$a;->h:Z

    if-nez v6, :cond_13

    .line 433
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    if-eqz v6, :cond_13

    .line 435
    invoke-direct {v1, v6}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    if-eqz v5, :cond_16

    .line 440
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 441
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 443
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 445
    :cond_14
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ct$a;->b()V

    return-void

    :cond_15
    move-object/from16 v21, v7

    .line 452
    :cond_16
    iput v9, v1, Lio/reactivex/internal/operators/flowable/ct$a;->n:I

    .line 453
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/ct$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-eqz v2, :cond_18

    if-nez v0, :cond_17

    .line 458
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    .line 460
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Lio/reactivex/internal/operators/flowable/ct$b;

    :goto_9
    move-object/from16 v7, v21

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_18
    return-void
.end method

.method final a(Lio/reactivex/internal/operators/flowable/ct$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/ct$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 263
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 264
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 271
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 282
    sget-object v1, Lio/reactivex/internal/operators/flowable/ct$a;->b:[Lio/reactivex/internal/operators/flowable/ct$b;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 284
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 285
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 286
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 288
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    .line 232
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 218
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1}, Lio/reactivex/c/c;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ct$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x3

    .line 173
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    iput v1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->k:I

    .line 176
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    .line 177
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/ct$a;->l:Z

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 182
    iput v1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->k:I

    .line 183
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    .line 184
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->f:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/o;->request(Lorg/b/d;I)V

    return-void

    .line 189
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->f:I

    invoke-static {v0}, Lio/reactivex/internal/util/o;->createQueue(I)Lio/reactivex/internal/b/j;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->j:Lio/reactivex/internal/b/j;

    .line 191
    iget v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->f:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/o;->request(Lorg/b/d;I)V

    :cond_2
    return-void
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 296
    new-instance v0, Lio/reactivex/internal/operators/flowable/ct$b;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/ct$b;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/ct$a;)V

    .line 297
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 1245
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 1246
    sget-object v2, Lio/reactivex/internal/operators/flowable/ct$a;->c:[Lio/reactivex/internal/operators/flowable/ct$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1249
    :cond_1
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 1251
    new-array v4, v4, [Lio/reactivex/internal/operators/flowable/ct$b;

    .line 1252
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    aput-object v0, v4, v2

    .line 1254
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ct$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    .line 299
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ct$b;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/ct$a;->a(Lio/reactivex/internal/operators/flowable/ct$b;)V

    return-void

    .line 303
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ct$a;->a()V

    return-void

    .line 305
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ct$a;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 307
    invoke-interface {p1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 309
    :cond_4
    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return-void
.end method
