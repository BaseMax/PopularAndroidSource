.class final Lio/reactivex/internal/operators/c/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/v$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lio/reactivex/internal/util/b;

.field final e:Lio/reactivex/internal/operators/c/v$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/v$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final f:Z

.field g:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/b/c;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z

.field l:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 305
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->a:Lio/reactivex/ag;

    .line 306
    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$a;->b:Lio/reactivex/e/h;

    .line 307
    iput p3, p0, Lio/reactivex/internal/operators/c/v$a;->c:I

    .line 308
    iput-boolean p4, p0, Lio/reactivex/internal/operators/c/v$a;->f:Z

    .line 309
    new-instance p2, Lio/reactivex/internal/util/b;

    invoke-direct {p2}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$a;->d:Lio/reactivex/internal/util/b;

    .line 310
    new-instance p2, Lio/reactivex/internal/operators/c/v$a$a;

    invoke-direct {p2, p1, p0}, Lio/reactivex/internal/operators/c/v$a$a;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/v$a;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$a;->e:Lio/reactivex/internal/operators/c/v$a$a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 387
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->a:Lio/reactivex/ag;

    .line 392
    iget-object v1, p0, Lio/reactivex/internal/operators/c/v$a;->g:Lio/reactivex/internal/b/j;

    .line 393
    iget-object v2, p0, Lio/reactivex/internal/operators/c/v$a;->d:Lio/reactivex/internal/util/b;

    .line 397
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/v$a;->i:Z

    if-nez v3, :cond_8

    .line 399
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    if-eqz v3, :cond_2

    .line 400
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    return-void

    .line 404
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/v$a;->f:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 405
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 407
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 408
    iput-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    .line 409
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 414
    :cond_3
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/v$a;->j:Z

    .line 419
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    .line 432
    iput-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    .line 433
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 435
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 437
    :cond_5
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_6
    if-nez v6, :cond_8

    .line 447
    :try_start_1
    iget-object v3, p0, Lio/reactivex/internal/operators/c/v$a;->b:Lio/reactivex/e/h;

    invoke-interface {v3, v5}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    instance-of v5, v3, Ljava/util/concurrent/Callable;

    if-eqz v5, :cond_7

    .line 462
    :try_start_2
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 469
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    if-nez v4, :cond_1

    .line 470
    invoke-interface {v0, v3}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 464
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 465
    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 474
    :cond_7
    iput-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->i:Z

    .line 475
    iget-object v4, p0, Lio/reactivex/internal/operators/c/v$a;->e:Lio/reactivex/internal/operators/c/v$a$a;

    invoke-interface {v3, v4}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 449
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 450
    iput-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    .line 451
    iget-object v4, p0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    invoke-interface {v4}, Lio/reactivex/b/c;->dispose()V

    .line 452
    invoke-interface {v1}, Lio/reactivex/internal/b/j;->clear()V

    .line 453
    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 454
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v1

    .line 421
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 422
    iput-boolean v4, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    .line 423
    iget-object v3, p0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    invoke-interface {v3}, Lio/reactivex/b/c;->dispose()V

    .line 424
    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 425
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 480
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    .line 381
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 382
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->e:Lio/reactivex/internal/operators/c/v$a$a;

    .line 1531
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/v$a;->k:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/v$a;->j:Z

    .line 370
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/v$a;->j:Z

    .line 361
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void

    .line 363
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

    .line 351
    iget v0, p0, Lio/reactivex/internal/operators/c/v$a;->l:I

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    .line 318
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 320
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x3

    .line 322
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 324
    iput v0, p0, Lio/reactivex/internal/operators/c/v$a;->l:I

    .line 325
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->g:Lio/reactivex/internal/b/j;

    .line 326
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/v$a;->j:Z

    .line 328
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 330
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    iput v0, p0, Lio/reactivex/internal/operators/c/v$a;->l:I

    .line 335
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->g:Lio/reactivex/internal/b/j;

    .line 337
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return-void

    .line 343
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/c/v$a;->c:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->g:Lio/reactivex/internal/b/j;

    .line 345
    iget-object p1, p0, Lio/reactivex/internal/operators/c/v$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method
