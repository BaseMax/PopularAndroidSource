.class final Lio/reactivex/internal/operators/flowable/az$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# static fields
.field static final k:[Lio/reactivex/internal/operators/flowable/az$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/az$a<",
            "**>;"
        }
    .end annotation
.end field

.field static final l:[Lio/reactivex/internal/operators/flowable/az$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/az$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/internal/util/b;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/az$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/concurrent/atomic/AtomicLong;

.field n:Lorg/b/d;

.field o:J

.field p:J

.field q:I

.field r:I

.field final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 82
    sput-object v1, Lio/reactivex/internal/operators/flowable/az$b;->k:[Lio/reactivex/internal/operators/flowable/az$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 84
    sput-object v0, Lio/reactivex/internal/operators/flowable/az$b;->l:[Lio/reactivex/internal/operators/flowable/az$a;

    return-void
.end method

.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 76
    new-instance v0, Lio/reactivex/internal/util/b;

    invoke-direct {v0}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/az$b;->b:Lio/reactivex/e/h;

    .line 101
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/az$b;->c:Z

    .line 102
    iput p4, p0, Lio/reactivex/internal/operators/flowable/az$b;->d:I

    .line 103
    iput p5, p0, Lio/reactivex/internal/operators/flowable/az$b;->e:I

    const/4 p1, 0x1

    shr-int/lit8 p2, p4, 0x1

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->s:I

    .line 105
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/az$b;->k:[Lio/reactivex/internal/operators/flowable/az$a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lio/reactivex/internal/operators/flowable/az$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/az$a<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 170
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 171
    sget-object v1, Lio/reactivex/internal/operators/flowable/az$b;->l:[Lio/reactivex/internal/operators/flowable/az$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/az$a;->dispose()V

    return v2

    .line 175
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 176
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 177
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    aput-object p1, v3, v1

    .line 179
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private b(Lio/reactivex/internal/operators/flowable/az$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/az$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 187
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 188
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 194
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

    .line 204
    sget-object v1, Lio/reactivex/internal/operators/flowable/az$b;->k:[Lio/reactivex/internal/operators/flowable/az$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 206
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 207
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 208
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 210
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private c()Lio/reactivex/internal/b/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/b/j<",
            "TU;>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    if-nez v0, :cond_1

    .line 219
    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 220
    new-instance v0, Lio/reactivex/internal/d/c;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/az$b;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/c;-><init>(I)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance v1, Lio/reactivex/internal/d/b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/d/b;-><init>(I)V

    move-object v0, v1

    .line 224
    :goto_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    :cond_1
    return-object v0
.end method

.method private d()Z
    .locals 3

    .line 559
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/az$b;->e()V

    return v1

    .line 563
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/az$b;->e()V

    .line 565
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 566
    sget-object v2, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 567
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 1

    .line 575
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 365
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 25

    move-object/from16 v1, p0

    .line 371
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    const/4 v4, 0x1

    .line 374
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 377
    :cond_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    .line 379
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v10, v5, v7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_9

    move-wide/from16 v16, v14

    :goto_2
    move-wide v7, v14

    move-wide/from16 v18, v16

    const/16 v16, 0x0

    :goto_3
    cmp-long v20, v5, v14

    if-eqz v20, :cond_5

    .line 389
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 391
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v16

    if-eqz v16, :cond_3

    return-void

    :cond_3
    if-eqz v9, :cond_4

    .line 398
    invoke-interface {v2, v9}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long v18, v18, v12

    add-long/2addr v7, v12

    sub-long/2addr v5, v12

    move-object/from16 v16, v9

    goto :goto_3

    :cond_4
    move-object/from16 v16, v9

    :cond_5
    cmp-long v9, v7, v14

    if-eqz v9, :cond_7

    if-eqz v10, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_4

    .line 408
    :cond_6
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    :cond_7
    :goto_4
    cmp-long v7, v5, v14

    if-eqz v7, :cond_a

    if-nez v16, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v16, v18

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_9
    move-wide/from16 v18, v14

    .line 417
    :cond_a
    :goto_5
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    .line 418
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    .line 419
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 420
    array-length v9, v8

    if-eqz v0, :cond_e

    if-eqz v7, :cond_b

    .line 422
    invoke-interface {v7}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    if-nez v9, :cond_e

    .line 423
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 424
    sget-object v3, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v3, :cond_d

    if-nez v0, :cond_c

    .line 426
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    .line 428
    :cond_c
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_d
    return-void

    :cond_e
    move/from16 v16, v4

    if-eqz v9, :cond_24

    .line 436
    iget-wide v3, v1, Lio/reactivex/internal/operators/flowable/az$b;->p:J

    .line 437
    iget v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->q:I

    if-le v9, v0, :cond_f

    .line 439
    aget-object v7, v8, v0

    iget-wide v11, v7, Lio/reactivex/internal/operators/flowable/az$a;->a:J

    cmp-long v7, v11, v3

    if-eqz v7, :cond_13

    :cond_f
    if-gt v9, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    move v7, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_12

    .line 445
    aget-object v11, v8, v7

    iget-wide v11, v11, Lio/reactivex/internal/operators/flowable/az$a;->a:J

    cmp-long v13, v11, v3

    if-eqz v13, :cond_12

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v9, :cond_11

    const/4 v7, 0x0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 454
    :cond_12
    iput v7, v1, Lio/reactivex/internal/operators/flowable/az$b;->q:I

    .line 455
    aget-object v0, v8, v7

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/az$a;->a:J

    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/az$b;->p:J

    move v0, v7

    :cond_13
    move v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_22

    .line 461
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v7

    if-eqz v7, :cond_14

    return-void

    .line 466
    :cond_14
    aget-object v7, v8, v4

    const/4 v11, 0x0

    .line 470
    :goto_8
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v12

    if-eqz v12, :cond_15

    return-void

    .line 473
    :cond_15
    iget-object v12, v7, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    move-object v13, v8

    move/from16 v23, v9

    if-eqz v12, :cond_1d

    move-wide v8, v14

    :goto_9
    cmp-long v24, v5, v14

    if-eqz v24, :cond_19

    .line 481
    :try_start_0
    invoke-interface {v12}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_19

    .line 501
    invoke-interface {v2, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 503
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v24

    if-eqz v24, :cond_16

    return-void

    :cond_16
    const-wide/16 v21, 0x1

    sub-long v5, v5, v21

    add-long v8, v8, v21

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 483
    invoke-static {v8}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 484
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/az$a;->dispose()V

    .line 485
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, v8}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 486
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->c:Z

    if-nez v0, :cond_17

    .line 487
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 489
    :cond_17
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 492
    :cond_18
    invoke-direct {v1, v7}, Lio/reactivex/internal/operators/flowable/az$b;->b(Lio/reactivex/internal/operators/flowable/az$a;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v23

    const/4 v0, 0x1

    const-wide/16 v7, 0x1

    goto :goto_e

    :cond_19
    cmp-long v12, v8, v14

    if-eqz v12, :cond_1b

    if-nez v10, :cond_1a

    .line 512
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v14, v8

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_a

    :cond_1a
    const-wide v5, 0x7fffffffffffffffL

    .line 516
    :goto_a
    invoke-virtual {v7, v8, v9}, Lio/reactivex/internal/operators/flowable/az$a;->a(J)V

    const-wide/16 v8, 0x0

    goto :goto_b

    :cond_1b
    move-wide v8, v14

    :goto_b
    cmp-long v12, v5, v8

    if-eqz v12, :cond_1d

    if-nez v11, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v8, v13

    move/from16 v9, v23

    const-wide/16 v14, 0x0

    goto :goto_8

    .line 522
    :cond_1d
    :goto_c
    iget-boolean v8, v7, Lio/reactivex/internal/operators/flowable/az$a;->e:Z

    .line 523
    iget-object v9, v7, Lio/reactivex/internal/operators/flowable/az$a;->f:Lio/reactivex/internal/b/j;

    if-eqz v8, :cond_20

    if-eqz v9, :cond_1e

    .line 524
    invoke-interface {v9}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 525
    :cond_1e
    invoke-direct {v1, v7}, Lio/reactivex/internal/operators/flowable/az$b;->b(Lio/reactivex/internal/operators/flowable/az$a;)V

    .line 526
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/az$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    const-wide/16 v7, 0x1

    add-long v18, v18, v7

    const/4 v0, 0x1

    goto :goto_d

    :cond_20
    const-wide/16 v7, 0x1

    :goto_d
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-eqz v9, :cond_23

    add-int/lit8 v9, v4, 0x1

    move/from16 v11, v23

    if-ne v9, v11, :cond_21

    const/4 v4, 0x0

    goto :goto_e

    :cond_21
    move v4, v9

    :goto_e
    const/4 v9, 0x1

    add-int/2addr v3, v9

    move v9, v11

    move-object v8, v13

    const-wide/16 v14, 0x0

    goto/16 :goto_7

    :cond_22
    move-object v13, v8

    :cond_23
    const/4 v9, 0x1

    .line 541
    iput v4, v1, Lio/reactivex/internal/operators/flowable/az$b;->q:I

    .line 542
    aget-object v3, v13, v4

    iget-wide v3, v3, Lio/reactivex/internal/operators/flowable/az$a;->a:J

    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/az$b;->p:J

    move-wide/from16 v3, v18

    const-wide/16 v5, 0x0

    goto :goto_f

    :cond_24
    const/4 v9, 0x1

    move-wide v5, v14

    move-wide/from16 v3, v18

    const/4 v0, 0x0

    :goto_f
    cmp-long v7, v3, v5

    if-eqz v7, :cond_25

    .line 545
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    if-nez v5, :cond_25

    .line 546
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-interface {v5, v3, v4}, Lorg/b/d;->request(J)V

    :cond_25
    move/from16 v3, v16

    if-nez v0, :cond_26

    neg-int v0, v3

    .line 551
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/az$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_26
    move v4, v3

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 4

    .line 351
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    .line 353
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 1582
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 1583
    sget-object v1, Lio/reactivex/internal/operators/flowable/az$b;->l:[Lio/reactivex/internal/operators/flowable/az$a;

    if-eq v0, v1, :cond_1

    .line 1584
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/az$a;

    .line 1585
    sget-object v1, Lio/reactivex/internal/operators/flowable/az$b;->l:[Lio/reactivex/internal/operators/flowable/az$a;

    if-eq v0, v1, :cond_1

    .line 1586
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1587
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/az$a;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1589
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1590
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    .line 1591
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    if-eqz v0, :cond_2

    .line 358
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 334
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    .line 338
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    .line 325
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void

    .line 327
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_b

    .line 143
    :try_start_1
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    .line 1230
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->get()I

    move-result v3

    const-string v4, "Scalar queue full?!"

    if-nez v3, :cond_6

    invoke-virtual {p0, v2, v1}, Lio/reactivex/internal/operators/flowable/az$b;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1231
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 1232
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/az$b;->f:Lio/reactivex/internal/b/i;

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    if-eqz v3, :cond_1

    .line 1233
    invoke-interface {v3}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1234
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    invoke-interface {v3, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    .line 1236
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 1238
    :cond_2
    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->d:I

    if-eq p1, v0, :cond_5

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    if-nez p1, :cond_5

    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->s:I

    if-ne p1, v0, :cond_5

    .line 1240
    iput v2, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    .line 1241
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 1245
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/az$b;->c()Lio/reactivex/internal/b/j;

    move-result-object v3

    .line 1247
    :cond_4
    invoke-interface {v3, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1248
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/az$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1252
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 1256
    :cond_6
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/az$b;->c()Lio/reactivex/internal/b/j;

    move-result-object v0

    .line 1257
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1258
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/az$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1261
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_8

    .line 1265
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->b()V

    :cond_8
    return-void

    .line 154
    :cond_9
    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->d:I

    if-eq p1, v0, :cond_a

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    if-nez p1, :cond_a

    iget p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->s:I

    if-ne p1, v0, :cond_a

    .line 156
    iput v2, p0, Lio/reactivex/internal/operators/flowable/az$b;->r:I

    .line 157
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    return-void

    .line 161
    :cond_b
    new-instance v0, Lio/reactivex/internal/operators/flowable/az$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/az$b;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/az$b;->o:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/flowable/az$a;-><init>(Lio/reactivex/internal/operators/flowable/az$b;J)V

    .line 162
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/az$b;->a(Lio/reactivex/internal/operators/flowable/az$a;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 163
    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_c
    return-void

    :catchall_1
    move-exception p1

    .line 134
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 136
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/az$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/az$b;->n:Lorg/b/d;

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 113
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->i:Z

    if-nez v0, :cond_1

    .line 114
    iget v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 115
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :cond_0
    int-to-long v0, v0

    .line 117
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 343
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/az$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 345
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/az$b;->a()V

    :cond_0
    return-void
.end method
