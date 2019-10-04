.class public final Lio/reactivex/h/c;
.super Lio/reactivex/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/h/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/h/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field f:Ljava/lang/Throwable;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/c<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Lio/reactivex/internal/subscriptions/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field l:Z


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/h/c;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/h/c;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    .line 281
    invoke-direct {p0}, Lio/reactivex/h/a;-><init>()V

    .line 282
    new-instance v0, Lio/reactivex/internal/d/c;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    .line 283
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/h/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 284
    iput-boolean p3, p0, Lio/reactivex/h/c;->d:Z

    .line 285
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 286
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/h/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    new-instance p1, Lio/reactivex/h/c$a;

    invoke-direct {p1, p0}, Lio/reactivex/h/c$a;-><init>(Lio/reactivex/h/c;)V

    iput-object p1, p0, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    .line 288
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/h/c;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a(ZZZLorg/b/c;Lio/reactivex/internal/d/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/internal/d/c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 412
    iget-boolean v0, p0, Lio/reactivex/h/c;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p5}, Lio/reactivex/internal/d/c;->clear()V

    .line 414
    iget-object p1, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p5}, Lio/reactivex/internal/d/c;->clear()V

    .line 421
    iget-object p1, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 422
    iget-object p1, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    invoke-interface {p4, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p3, :cond_3

    .line 426
    iget-object p1, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    .line 427
    iget-object p2, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 429
    invoke-interface {p4, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-interface {p4}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static create()Lio/reactivex/h/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Lio/reactivex/h/c;

    invoke-static {}, Lio/reactivex/h/c;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/h/c;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lio/reactivex/h/c;

    invoke-direct {v0, p0}, Lio/reactivex/h/c;-><init>(I)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate"

    .line 227
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lio/reactivex/h/c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/h/c;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;Z)Lio/reactivex/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate"

    .line 248
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lio/reactivex/h/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/h/c;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static create(Z)Lio/reactivex/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation

    .line 209
    new-instance v0, Lio/reactivex/h/c;

    invoke-static {}, Lio/reactivex/h/c;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/h/c;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 292
    iget-object v0, p0, Lio/reactivex/h/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 17

    move-object/from16 v6, p0

    .line 385
    iget-object v0, v6, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object v0, v6, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c;

    const/4 v7, 0x1

    move-object v8, v0

    const/4 v0, 0x1

    :goto_0
    if-eqz v8, :cond_e

    .line 395
    iget-boolean v0, v6, Lio/reactivex/h/c;->l:Z

    if-eqz v0, :cond_6

    .line 1345
    iget-object v0, v6, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    .line 1346
    iget-boolean v1, v6, Lio/reactivex/h/c;->d:Z

    xor-int/2addr v1, v7

    .line 1349
    :cond_1
    iget-boolean v2, v6, Lio/reactivex/h/c;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1350
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 1351
    iget-object v0, v6, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 1355
    :cond_2
    iget-boolean v2, v6, Lio/reactivex/h/c;->e:Z

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 1357
    iget-object v4, v6, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 1358
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 1359
    iget-object v0, v6, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 1360
    iget-object v0, v6, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    invoke-interface {v8, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1363
    :cond_3
    invoke-interface {v8, v3}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    .line 1366
    iget-object v0, v6, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 1368
    iget-object v0, v6, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 1370
    invoke-interface {v8, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1372
    :cond_4
    invoke-interface {v8}, Lorg/b/c;->onComplete()V

    return-void

    .line 1377
    :cond_5
    iget-object v2, v6, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    neg-int v3, v7

    invoke-virtual {v2, v3}, Lio/reactivex/internal/subscriptions/a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void

    .line 2301
    :cond_6
    iget-object v9, v6, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    .line 2302
    iget-boolean v0, v6, Lio/reactivex/h/c;->d:Z

    xor-int/lit8 v10, v0, 0x1

    const/4 v11, 0x1

    .line 2305
    :goto_1
    iget-object v0, v6, Lio/reactivex/h/c;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    const-wide/16 v4, 0x0

    :goto_2
    cmp-long v0, v12, v4

    if-eqz v0, :cond_8

    .line 2309
    iget-boolean v2, v6, Lio/reactivex/h/c;->e:Z

    .line 2311
    invoke-virtual {v9}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    move v1, v10

    move-object v7, v3

    move/from16 v3, v16

    move-wide v14, v4

    move-object v4, v8

    move-object v5, v9

    .line 2314
    invoke-direct/range {v0 .. v5}, Lio/reactivex/h/c;->a(ZZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v16, :cond_9

    .line 2322
    invoke-interface {v8, v7}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long v4, v14, v0

    const/4 v7, 0x1

    goto :goto_2

    :cond_8
    move-wide v14, v4

    :cond_9
    cmp-long v0, v12, v14

    if-nez v0, :cond_a

    .line 2327
    iget-boolean v2, v6, Lio/reactivex/h/c;->e:Z

    invoke-virtual {v9}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v3

    move-object/from16 v0, p0

    move v1, v10

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lio/reactivex/h/c;->a(ZZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-eqz v2, :cond_b

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v12, v0

    if-eqz v2, :cond_b

    .line 2332
    iget-object v0, v6, Lio/reactivex/h/c;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2335
    :cond_b
    iget-object v0, v6, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    neg-int v1, v11

    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/a;->addAndGet(I)I

    move-result v11

    if-nez v11, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v7, 0x1

    goto :goto_1

    .line 403
    :cond_e
    iget-object v1, v6, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/subscriptions/a;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_f

    .line 407
    iget-object v1, v6, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/b/c;

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 570
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasComplete()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSubscribers()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasThrowable()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 480
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/h/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    .line 486
    invoke-virtual {p0}, Lio/reactivex/h/c;->a()V

    .line 488
    invoke-virtual {p0}, Lio/reactivex/h/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 463
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/h/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    iput-object p1, p0, Lio/reactivex/h/c;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lio/reactivex/h/c;->e:Z

    .line 473
    invoke-virtual {p0}, Lio/reactivex/h/c;->a()V

    .line 475
    invoke-virtual {p0}, Lio/reactivex/h/c;->b()V

    return-void

    .line 466
    :cond_1
    :goto_0
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

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 451
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/h/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lio/reactivex/h/c;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0}, Lio/reactivex/h/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 442
    iget-boolean v0, p0, Lio/reactivex/h/c;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/h/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 445
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 443
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lio/reactivex/h/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/h/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lio/reactivex/h/c;->j:Lio/reactivex/internal/subscriptions/a;

    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 496
    iget-object v0, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 497
    iget-boolean p1, p0, Lio/reactivex/h/c;->h:Z

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lio/reactivex/h/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/h/c;->b()V

    return-void

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This processor allows only a single Subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method
