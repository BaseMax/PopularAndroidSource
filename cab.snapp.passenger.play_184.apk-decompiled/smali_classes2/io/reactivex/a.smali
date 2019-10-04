.class public abstract Lio/reactivex/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 8

    const-string v0, "unit is null"

    .line 2575
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2576
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2577
    new-instance v0, Lio/reactivex/internal/operators/a/am;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/a/am;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1591
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 1592
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 1593
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 1594
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 1595
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 1596
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1597
    new-instance v0, Lio/reactivex/internal/operators/a/ai;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/a/ai;-><init>(Lio/reactivex/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lorg/b/b;IZ)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;IZ)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 788
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 789
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 790
    new-instance v0, Lio/reactivex/internal/operators/a/aa;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/a/aa;-><init>(Lorg/b/b;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 153
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lio/reactivex/internal/operators/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/a/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "sources is null"

    .line 124
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    array-length v0, p0

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lio/reactivex/a;->complete()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 129
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->wrap(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 132
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/a/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static complete()Lio/reactivex/a;
    .locals 1

    .line 172
    sget-object v0, Lio/reactivex/internal/operators/a/n;->INSTANCE:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 217
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lio/reactivex/internal/operators/a/f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/b/b;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 241
    invoke-static {p0, v0}, Lio/reactivex/a;->concat(Lorg/b/b;I)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/b/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 265
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 266
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 267
    new-instance v0, Lio/reactivex/internal/operators/a/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/d;-><init>(Lorg/b/b;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "sources is null"

    .line 191
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    array-length v0, p0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lio/reactivex/a;->complete()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 196
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->wrap(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 198
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/a/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/e;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/e;)Lio/reactivex/a;
    .locals 1

    const-string v0, "source is null"

    .line 309
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    new-instance v0, Lio/reactivex/internal/operators/a/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/g;-><init>(Lio/reactivex/e;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "completableSupplier"

    .line 354
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    new-instance v0, Lio/reactivex/internal/operators/a/h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/a;
    .locals 1

    const-string v0, "error is null"

    .line 398
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 399
    new-instance v0, Lio/reactivex/internal/operators/a/o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 378
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    new-instance v0, Lio/reactivex/internal/operators/a/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromAction(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 1

    const-string v0, "run is null"

    .line 426
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    new-instance v0, Lio/reactivex/internal/operators/a/q;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/q;-><init>(Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 453
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    new-instance v0, Lio/reactivex/internal/operators/a/r;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/r;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 474
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 475
    invoke-static {p0}, Lio/reactivex/internal/a/a;->futureAction(Ljava/util/concurrent/Future;)Lio/reactivex/e/a;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/a;->fromAction(Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromMaybe(Lio/reactivex/w;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "maybe is null"

    .line 499
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 500
    new-instance v0, Lio/reactivex/internal/operators/maybe/aq;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/aq;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromObservable(Lio/reactivex/ae;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "observable is null"

    .line 549
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 550
    new-instance v0, Lio/reactivex/internal/operators/a/s;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/s;-><init>(Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublisher(Lorg/b/b;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 587
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    new-instance v0, Lio/reactivex/internal/operators/a/t;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/t;-><init>(Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/a;
    .locals 1

    const-string v0, "run is null"

    .line 527
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 528
    new-instance v0, Lio/reactivex/internal/operators/a/u;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/u;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static fromSingle(Lio/reactivex/ao;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "single is null"

    .line 609
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    new-instance v0, Lio/reactivex/internal/operators/a/v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/v;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 685
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 686
    new-instance v0, Lio/reactivex/internal/operators/a/ae;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ae;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/b/b;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 723
    invoke-static {p0, v0, v1}, Lio/reactivex/a;->a(Lorg/b/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/b/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 762
    invoke-static {p0, p1, v0}, Lio/reactivex/a;->a(Lorg/b/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "sources is null"

    .line 644
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 645
    array-length v0, p0

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Lio/reactivex/a;->complete()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 648
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 649
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->wrap(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 651
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/a/ab;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ab;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "sources is null"

    .line 811
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 812
    new-instance v0, Lio/reactivex/internal/operators/a/ac;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ac;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 833
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 834
    new-instance v0, Lio/reactivex/internal/operators/a/ad;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ad;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/b/b;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 858
    invoke-static {p0, v0, v1}, Lio/reactivex/a;->a(Lorg/b/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/b/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 884
    invoke-static {p0, p1, v0}, Lio/reactivex/a;->a(Lorg/b/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/a;
    .locals 1

    .line 900
    sget-object v0, Lio/reactivex/internal/operators/a/af;->INSTANCE:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 1

    .line 918
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 1

    const-string v0, "unit is null"

    .line 939
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 940
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 941
    new-instance v0, Lio/reactivex/internal/operators/a/an;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/a/an;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "source is null"

    .line 332
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    instance-of v0, p0, Lio/reactivex/a;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lio/reactivex/internal/operators/a/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/w;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/h<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/e/g<",
            "-TR;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 977
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/h<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/e/g<",
            "-TR;>;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1010
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    .line 1011
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 1012
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1014
    new-instance v0, Lio/reactivex/internal/operators/a/ar;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/a/ar;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "source is null"

    .line 1034
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1035
    instance-of v0, p0, Lio/reactivex/a;

    if-eqz v0, :cond_0

    .line 1036
    check-cast p0, Lio/reactivex/a;

    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 1038
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/a/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/w;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ambWith(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "other is null"

    .line 1059
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1060
    invoke-static {v0}, Lio/reactivex/a;->ambArray([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "next is null"

    .line 1181
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1182
    new-instance v0, Lio/reactivex/internal/operators/a/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/b;-><init>(Lio/reactivex/g;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1135
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1136
    new-instance v0, Lio/reactivex/internal/operators/e/g;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/e/g;-><init>(Lio/reactivex/ao;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1111
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1112
    new-instance v0, Lio/reactivex/internal/operators/b/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/b/b;-><init>(Lio/reactivex/g;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1159
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1160
    new-instance v0, Lio/reactivex/internal/operators/maybe/o;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/o;-><init>(Lio/reactivex/w;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1083
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1084
    new-instance v0, Lio/reactivex/internal/operators/b/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/b/a;-><init>(Lio/reactivex/g;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/b<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1205
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->apply(Lio/reactivex/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingAwait()V
    .locals 1

    .line 1225
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 1226
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    .line 1227
    invoke-virtual {v0}, Lio/reactivex/internal/c/h;->blockingGet()Ljava/lang/Object;

    return-void
.end method

.method public final blockingAwait(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const-string v0, "unit is null"

    .line 1253
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1254
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 1255
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    .line 1256
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/c/h;->blockingAwait(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final blockingGet()Ljava/lang/Throwable;
    .locals 1

    .line 1275
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 1276
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    .line 1277
    invoke-virtual {v0}, Lio/reactivex/internal/c/h;->blockingGetError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final blockingGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "unit is null"

    .line 1299
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1300
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 1301
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    .line 1302
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/c/h;->blockingGetError(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Lio/reactivex/a;
    .locals 1

    .line 1325
    new-instance v0, Lio/reactivex/internal/operators/a/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/c;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final compose(Lio/reactivex/h;)Lio/reactivex/a;
    .locals 1

    const-string v0, "transformer is null"

    .line 1344
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/h;

    invoke-interface {p1, p0}, Lio/reactivex/h;->apply(Lio/reactivex/a;)Lio/reactivex/g;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->wrap(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "other is null"

    .line 1367
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1368
    new-instance v0, Lio/reactivex/internal/operators/a/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/b;-><init>(Lio/reactivex/g;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6

    .line 1387
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1408
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/a;
    .locals 8

    const-string v0, "unit is null"

    .line 1431
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 1432
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1433
    new-instance v0, Lio/reactivex/internal/operators/a/i;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/a/i;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 1

    .line 1455
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/a;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 0

    .line 1480
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/a;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/reactivex/a;->andThen(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 7

    .line 1659
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    .line 1660
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v4, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v3, v4

    move-object v5, p1

    .line 1658
    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 1

    const-string v0, "onFinally is null"

    .line 1690
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1691
    new-instance v0, Lio/reactivex/internal/operators/a/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/l;-><init>(Lio/reactivex/g;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 7

    .line 1499
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v5, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 7

    .line 1520
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v4, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v5, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v3, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/e/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 1541
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    sget-object v4, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v4

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEvent(Lio/reactivex/e/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 1563
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1564
    new-instance v0, Lio/reactivex/internal/operators/a/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/m;-><init>(Lio/reactivex/g;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 1616
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v4, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v4

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lio/reactivex/e/a;)Lio/reactivex/a;
    .locals 7

    .line 1637
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->a(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/a;
    .locals 1

    .line 2278
    new-instance v0, Lio/reactivex/internal/operators/a/x;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/x;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/f;)Lio/reactivex/a;
    .locals 1

    const-string v0, "onLift is null"

    .line 1828
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1829
    new-instance v0, Lio/reactivex/internal/operators/a/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/y;-><init>(Lio/reactivex/g;Lio/reactivex/f;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final materialize()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ai<",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation

    .line 1850
    new-instance v0, Lio/reactivex/internal/operators/a/z;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/z;-><init>(Lio/reactivex/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "other is null"

    .line 1870
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1871
    invoke-static {v0}, Lio/reactivex/a;->mergeArray([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 1

    const-string v0, "scheduler is null"

    .line 1890
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1891
    new-instance v0, Lio/reactivex/internal/operators/a/ag;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/ag;-><init>(Lio/reactivex/g;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete()Lio/reactivex/a;
    .locals 1

    .line 1908
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/a;->onErrorComplete(Lio/reactivex/e/q;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lio/reactivex/e/q;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1928
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1930
    new-instance v0, Lio/reactivex/internal/operators/a/ah;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/ah;-><init>(Lio/reactivex/g;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "errorMapper is null"

    .line 1951
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1952
    new-instance v0, Lio/reactivex/internal/operators/a/aj;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/aj;-><init>(Lio/reactivex/g;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/a;
    .locals 1

    .line 1972
    new-instance v0, Lio/reactivex/internal/operators/a/j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/j;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lio/reactivex/a;
    .locals 1

    .line 1988
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->repeat()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lio/reactivex/a;
    .locals 1

    .line 2006
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->repeat(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final repeatUntil(Lio/reactivex/e/e;)Lio/reactivex/a;
    .locals 1

    .line 2025
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->repeatUntil(Lio/reactivex/e/e;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/b/b<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 2046
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/a;
    .locals 1

    .line 2062
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->retry()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/a;
    .locals 1

    .line 2100
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->retry(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLio/reactivex/e/q;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 2124
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/j;->retry(JLio/reactivex/e/q;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/d;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 2081
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retry(Lio/reactivex/e/d;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/q;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 2144
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retry(Lio/reactivex/e/q;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/b/b<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .line 2190
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retryWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->fromPublisher(Lorg/b/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2

    const-string v0, "other is null"

    .line 2210
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2211
    invoke-static {v0}, Lio/reactivex/a;->concatArray([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2257
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2258
    invoke-virtual {p0}, Lio/reactivex/a;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->startWith(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lio/reactivex/z;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2232
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2233
    invoke-virtual {p0}, Lio/reactivex/a;->toObservable()Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->concatWith(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/b/c;
    .locals 1

    .line 2294
    new-instance v0, Lio/reactivex/internal/c/n;

    invoke-direct {v0}, Lio/reactivex/internal/c/n;-><init>()V

    .line 2295
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/a;)Lio/reactivex/b/c;
    .locals 1

    const-string v0, "onComplete is null"

    .line 2407
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2409
    new-instance v0, Lio/reactivex/internal/c/j;

    invoke-direct {v0, p1}, Lio/reactivex/internal/c/j;-><init>(Lio/reactivex/e/a;)V

    .line 2410
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/a;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 2379
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2380
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2382
    new-instance v0, Lio/reactivex/internal/c/j;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/c/j;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    .line 2383
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/d;)V
    .locals 2

    const-string v0, "observer is null"

    .line 2302
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2305
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/g/a;->onSubscribe(Lio/reactivex/a;Lio/reactivex/d;)Lio/reactivex/d;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 2307
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2309
    invoke-virtual {p0, p1}, Lio/reactivex/a;->subscribeActual(Lio/reactivex/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2313
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2314
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 2950
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2315
    throw v0

    :catch_0
    move-exception p1

    .line 2311
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/d;)V
.end method

.method public final subscribeOn(Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 1

    const-string v0, "scheduler is null"

    .line 2431
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2433
    new-instance v0, Lio/reactivex/internal/operators/a/ak;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/ak;-><init>(Lio/reactivex/g;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/d;)Lio/reactivex/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/d;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 2358
    invoke-virtual {p0, p1}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "other is null"

    .line 2458
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2460
    new-instance v0, Lio/reactivex/internal/operators/a/al;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/al;-><init>(Lio/reactivex/a;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2757
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    .line 2758
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2778
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    if-eqz p1, :cond_0

    .line 2781
    invoke-virtual {v0}, Lio/reactivex/observers/e;->cancel()V

    .line 2783
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6

    .line 2480
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 2526
    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1

    const-string v0, "other is null"

    .line 2551
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2552
    invoke-direct/range {p0 .. p5}, Lio/reactivex/a;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 7

    const-string v0, "other is null"

    .line 2503
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2504
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/a;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lio/reactivex/e/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/a;",
            "TU;>;)TU;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 2597
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e/h;

    invoke-interface {p1, p0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2599
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2600
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toFlowable()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 2623
    instance-of v0, p0, Lio/reactivex/internal/b/b;

    if-eqz v0, :cond_0

    .line 2624
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/b;

    invoke-interface {v0}, Lio/reactivex/internal/b/b;->fuseToFlowable()Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 2626
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/a/ao;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ao;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final toMaybe()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2646
    instance-of v0, p0, Lio/reactivex/internal/b/c;

    if-eqz v0, :cond_0

    .line 2647
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/c;

    invoke-interface {v0}, Lio/reactivex/internal/b/c;->fuseToMaybe()Lio/reactivex/q;

    move-result-object v0

    return-object v0

    .line 2649
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/ak;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/ak;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 2668
    instance-of v0, p0, Lio/reactivex/internal/b/d;

    if-eqz v0, :cond_0

    .line 2669
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/d;

    invoke-interface {v0}, Lio/reactivex/internal/b/d;->fuseToObservable()Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 2671
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/a/ap;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/ap;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValueSupplier is null"

    .line 2692
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2693
    new-instance v0, Lio/reactivex/internal/operators/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/a/aq;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final toSingleDefault(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValue is null"

    .line 2714
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2715
    new-instance v0, Lio/reactivex/internal/operators/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/a/aq;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Lio/reactivex/ah;)Lio/reactivex/a;
    .locals 1

    const-string v0, "scheduler is null"

    .line 2735
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2736
    new-instance v0, Lio/reactivex/internal/operators/a/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/a/k;-><init>(Lio/reactivex/g;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
