.class public abstract Lio/reactivex/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/w<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 130
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lio/reactivex/internal/operators/maybe/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/maybe/b;-><init>([Lio/reactivex/w;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/w;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 152
    array-length v0, p0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lio/reactivex/q;->empty()Lio/reactivex/q;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 156
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/q;->wrap(Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0

    .line 158
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/b;-><init>([Lio/reactivex/w;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 210
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 211
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 212
    invoke-static {v0}, Lio/reactivex/q;->concatArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 243
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 244
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 245
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 246
    invoke-static {v0}, Lio/reactivex/q;->concatArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 279
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 280
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 281
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 282
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 283
    invoke-static {v0}, Lio/reactivex/q;->concatArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 181
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    new-instance v0, Lio/reactivex/internal/operators/maybe/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/g;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 307
    invoke-static {p0, v0}, Lio/reactivex/q;->concat(Lorg/b/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/b/b;I)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 334
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 335
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 336
    new-instance v0, Lio/reactivex/internal/operators/flowable/z;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/flowable/z;-><init>(Lorg/b/b;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 359
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    array-length v0, p0

    if-nez v0, :cond_0

    .line 361
    invoke-static {}, Lio/reactivex/j;->empty()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 363
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    new-instance v0, Lio/reactivex/internal/operators/maybe/bm;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bm;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 366
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/e;-><init>([Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayDelayError([Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 390
    array-length v0, p0

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Lio/reactivex/j;->empty()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 393
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 394
    new-instance v0, Lio/reactivex/internal/operators/maybe/bm;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bm;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 396
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/f;-><init>([Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Lio/reactivex/w;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 422
    invoke-static {p0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 447
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapDelayError(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 472
    invoke-static {p0}, Lio/reactivex/j;->fromPublisher(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapDelayError(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 498
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 526
    invoke-static {p0}, Lio/reactivex/j;->fromPublisher(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/u;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/u<",
            "TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 571
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    new-instance v0, Lio/reactivex/internal/operators/maybe/j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/j;-><init>(Lio/reactivex/u;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "maybeSupplier is null"

    .line 591
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    new-instance v0, Lio/reactivex/internal/operators/maybe/k;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/k;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lio/reactivex/q;
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

    .line 611
    sget-object v0, Lio/reactivex/internal/operators/maybe/u;->INSTANCE:Lio/reactivex/internal/operators/maybe/u;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 636
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    new-instance v0, Lio/reactivex/internal/operators/maybe/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/w;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 662
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 663
    new-instance v0, Lio/reactivex/internal/operators/maybe/x;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/x;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromAction(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    .line 689
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 690
    new-instance v0, Lio/reactivex/internal/operators/maybe/ai;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/ai;-><init>(Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 771
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 772
    new-instance v0, Lio/reactivex/internal/operators/maybe/aj;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/aj;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromCompletable(Lio/reactivex/g;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completableSource is null"

    .line 709
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lio/reactivex/internal/operators/maybe/ak;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/ak;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 805
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 806
    new-instance v0, Lio/reactivex/internal/operators/maybe/al;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/maybe/al;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 843
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 844
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 845
    new-instance v0, Lio/reactivex/internal/operators/maybe/al;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/al;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    .line 864
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 865
    new-instance v0, Lio/reactivex/internal/operators/maybe/am;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/am;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static fromSingle(Lio/reactivex/ao;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSource is null"

    .line 729
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 730
    new-instance v0, Lio/reactivex/internal/operators/maybe/an;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/an;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 891
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 892
    new-instance v0, Lio/reactivex/internal/operators/maybe/at;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/at;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1078
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1079
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1080
    invoke-static {v0}, Lio/reactivex/q;->mergeArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1130
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1131
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1132
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1133
    invoke-static {v0}, Lio/reactivex/q;->mergeArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1185
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1186
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1187
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1188
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1189
    invoke-static {v0}, Lio/reactivex/q;->mergeArray([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 926
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/q;->merge(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 960
    invoke-static {p0, v0}, Lio/reactivex/q;->merge(Lorg/b/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/b/b;I)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 997
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 998
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 999
    new-instance v0, Lio/reactivex/internal/operators/flowable/bd;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/bd;-><init>(Lorg/b/b;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1030
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1031
    new-instance v0, Lio/reactivex/internal/operators/maybe/ah;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/ah;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1225
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1227
    invoke-static {}, Lio/reactivex/j;->empty()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 1229
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1230
    new-instance v0, Lio/reactivex/internal/operators/maybe/bm;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bm;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 1232
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/ax;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/ax;-><init>([Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Lio/reactivex/w;)Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 1267
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1268
    invoke-static {}, Lio/reactivex/j;->empty()Lio/reactivex/j;

    move-result-object p0

    return-object p0

    .line 1270
    :cond_0
    invoke-static {p0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/j;->flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1418
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1419
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1420
    invoke-static {v0}, Lio/reactivex/q;->mergeArrayDelayError([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1461
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1462
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1463
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1464
    invoke-static {v0}, Lio/reactivex/q;->mergeArrayDelayError([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1508
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1509
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1510
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1511
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1512
    invoke-static {v0}, Lio/reactivex/q;->mergeArrayDelayError([Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 1305
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/j;->flatMap(Lio/reactivex/e/h;Z)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/b/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1340
    invoke-static {p0, v0}, Lio/reactivex/q;->mergeDelayError(Lorg/b/b;I)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/b/b;I)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1379
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 1380
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 1381
    new-instance v0, Lio/reactivex/internal/operators/flowable/bd;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/e/h;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/bd;-><init>(Lorg/b/b;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/q;
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

    .line 1535
    sget-object v0, Lio/reactivex/internal/operators/maybe/ay;->INSTANCE:Lio/reactivex/internal/operators/maybe/ay;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1560
    invoke-static {}, Lio/reactivex/internal/a/b;->equalsPredicate()Lio/reactivex/e/d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/q;->sequenceEqual(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/d;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/d;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1591
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1592
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 1593
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1594
    new-instance v0, Lio/reactivex/internal/operators/maybe/v;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/v;-><init>(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/d;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/q<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1616
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/q;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1641
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 1642
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1644
    new-instance v0, Lio/reactivex/internal/operators/maybe/bl;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/bl;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/w;)Lio/reactivex/q;
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

    .line 1662
    instance-of v0, p0, Lio/reactivex/q;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    .line 1665
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1666
    new-instance v0, Lio/reactivex/internal/operators/maybe/bp;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bp;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0

    .line 1663
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/e/h<",
            "-TD;+",
            "Lio/reactivex/w<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TD;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1695
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/q;->using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/e/h<",
            "-TD;+",
            "Lio/reactivex/w<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TD;>;Z)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1731
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 1732
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 1733
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1734
    new-instance v0, Lio/reactivex/internal/operators/maybe/br;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/br;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/w;)Lio/reactivex/q;
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

    .line 1752
    instance-of v0, p0, Lio/reactivex/q;

    if-eqz v0, :cond_0

    .line 1753
    check-cast p0, Lio/reactivex/q;

    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "onSubscribe is null"

    .line 1755
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1756
    new-instance v0, Lio/reactivex/internal/operators/maybe/bp;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bp;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/c;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1827
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1828
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1829
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/i;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/e/i<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1867
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1868
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1869
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1870
    invoke-static {p3}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/j;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/e/j<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1912
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1913
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1914
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1915
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1916
    invoke-static {p4}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/k;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/w<",
            "+TT5;>;",
            "Lio/reactivex/e/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1961
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1962
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1963
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1964
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1965
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1966
    invoke-static {p5}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/l;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/w<",
            "+TT5;>;",
            "Lio/reactivex/w<",
            "+TT6;>;",
            "Lio/reactivex/e/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 2014
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2015
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2016
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2017
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2018
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2019
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2020
    invoke-static {p6}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/l;)Lio/reactivex/e/h;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/m;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/w<",
            "+TT5;>;",
            "Lio/reactivex/w<",
            "+TT6;>;",
            "Lio/reactivex/w<",
            "+TT7;>;",
            "Lio/reactivex/e/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 2072
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2073
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2074
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2075
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2076
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2077
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 2078
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2079
    invoke-static {p7}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/m;)Lio/reactivex/e/h;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/n;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/w<",
            "+TT5;>;",
            "Lio/reactivex/w<",
            "+TT6;>;",
            "Lio/reactivex/w<",
            "+TT7;>;",
            "Lio/reactivex/w<",
            "+TT8;>;",
            "Lio/reactivex/e/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 2134
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2135
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2136
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2137
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2138
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2139
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 2140
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 2141
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2142
    invoke-static {p8}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/n;)Lio/reactivex/e/h;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/o;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TT1;>;",
            "Lio/reactivex/w<",
            "+TT2;>;",
            "Lio/reactivex/w<",
            "+TT3;>;",
            "Lio/reactivex/w<",
            "+TT4;>;",
            "Lio/reactivex/w<",
            "+TT5;>;",
            "Lio/reactivex/w<",
            "+TT6;>;",
            "Lio/reactivex/w<",
            "+TT7;>;",
            "Lio/reactivex/w<",
            "+TT8;>;",
            "Lio/reactivex/w<",
            "+TT9;>;",
            "Lio/reactivex/e/o<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 2201
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2202
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2203
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2204
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2205
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2206
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 2207
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 2208
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 2209
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2210
    invoke-static {p9}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/o;)Lio/reactivex/e/h;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, Lio/reactivex/q;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1790
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 1791
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1792
    new-instance v0, Lio/reactivex/internal/operators/maybe/bt;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bt;-><init>(Ljava/lang/Iterable;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/e/h;[Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2245
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2246
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2247
    invoke-static {}, Lio/reactivex/q;->empty()Lio/reactivex/q;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 2249
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2250
    new-instance v0, Lio/reactivex/internal/operators/maybe/bs;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/bs;-><init>([Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ambWith(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2278
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2279
    invoke-static {v0}, Lio/reactivex/q;->ambArray([Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/r<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 2300
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->apply(Lio/reactivex/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2319
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 2320
    invoke-virtual {p0, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/t;)V

    .line 2321
    invoke-virtual {v0}, Lio/reactivex/internal/c/h;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    .line 2341
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2342
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 2343
    invoke-virtual {p0, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/t;)V

    .line 2344
    invoke-virtual {v0, p1}, Lio/reactivex/internal/c/h;->blockingGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2369
    new-instance v0, Lio/reactivex/internal/operators/maybe/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/c;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lio/reactivex/q<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 2387
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2388
    invoke-static {p1}, Lio/reactivex/internal/a/a;->castFunction(Ljava/lang/Class;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->map(Lio/reactivex/e/h;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/x;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/x<",
            "-TT;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    .line 2413
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/x;

    invoke-interface {p1, p0}, Lio/reactivex/x;->apply(Lio/reactivex/q;)Lio/reactivex/w;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/q;->wrap(Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2436
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2437
    new-instance v0, Lio/reactivex/internal/operators/maybe/ah;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ah;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/w;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2463
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2464
    invoke-static {p0, p1}, Lio/reactivex/q;->concat(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 2487
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2488
    new-instance v0, Lio/reactivex/internal/operators/maybe/h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/h;-><init>(Lio/reactivex/w;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final count()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2509
    new-instance v0, Lio/reactivex/internal/operators/maybe/i;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/i;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 2536
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2537
    invoke-static {p1}, Lio/reactivex/q;->just(Ljava/lang/Object;)Lio/reactivex/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->switchIfEmpty(Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2560
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/q;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2586
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2587
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2588
    new-instance v0, Lio/reactivex/internal/operators/maybe/l;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/maybe/l;-><init>(Lio/reactivex/w;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lorg/b/b;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delayIndicator is null"

    .line 2618
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2619
    new-instance v0, Lio/reactivex/internal/operators/maybe/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/m;-><init>(Lio/reactivex/w;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2666
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/q;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2692
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/j;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->delaySubscription(Lorg/b/b;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lorg/b/b;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 2643
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2644
    new-instance v0, Lio/reactivex/internal/operators/maybe/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/n;-><init>(Lio/reactivex/w;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterSuccess(Lio/reactivex/e/g;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 2712
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2713
    new-instance v0, Lio/reactivex/internal/operators/maybe/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/q;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2737
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    .line 2738
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    .line 2739
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 2740
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    const-string v0, "onAfterTerminate is null"

    .line 2742
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lio/reactivex/e/a;

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2737
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 2767
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2768
    new-instance v0, Lio/reactivex/internal/operators/maybe/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/r;-><init>(Lio/reactivex/w;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2814
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    .line 2815
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    .line 2816
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 2817
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    const-string v0, "onComplete is null"

    .line 2818
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lio/reactivex/e/a;

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2814
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2786
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    .line 2787
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    .line 2788
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 2789
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    const-string v0, "onDispose is null"

    .line 2792
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2786
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/e/g;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2840
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    .line 2841
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    .line 2842
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    const-string v0, "onError is null"

    .line 2843
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lio/reactivex/e/g;

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2840
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEvent(Lio/reactivex/e/b;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 2867
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2868
    new-instance v0, Lio/reactivex/internal/operators/maybe/s;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/s;-><init>(Lio/reactivex/w;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2885
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    const-string v0, "onSubscribe is null"

    .line 2886
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/reactivex/e/g;

    .line 2887
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 2888
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2885
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSuccess(Lio/reactivex/e/g;)Lio/reactivex/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 2938
    new-instance v8, Lio/reactivex/internal/operators/maybe/bd;

    .line 2939
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v2

    const-string v0, "onSuccess is null"

    .line 2940
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lio/reactivex/e/g;

    .line 2941
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/bd;-><init>(Lio/reactivex/w;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/a;)V

    .line 2938
    invoke-static {v8}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lio/reactivex/e/a;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 2918
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2919
    new-instance v0, Lio/reactivex/internal/operators/maybe/t;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/t;-><init>(Lio/reactivex/w;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/e/q;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 2969
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2970
    new-instance v0, Lio/reactivex/internal/operators/maybe/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/y;-><init>(Lio/reactivex/w;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2994
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2995
    new-instance v0, Lio/reactivex/internal/operators/maybe/ah;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ah;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3059
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 3060
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3061
    new-instance v0, Lio/reactivex/internal/operators/maybe/aa;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/aa;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onSuccessMapper is null"

    .line 3026
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 3027
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3028
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3029
    new-instance v0, Lio/reactivex/internal/operators/maybe/ae;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/ae;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/e/h;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3245
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3246
    new-instance v0, Lio/reactivex/internal/operators/maybe/ab;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ab;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapObservable(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3139
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3140
    new-instance v0, Lio/reactivex/internal/operators/b/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/b/j;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapPublisher(Lio/reactivex/e/h;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3167
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3168
    new-instance v0, Lio/reactivex/internal/operators/b/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/b/k;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3193
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3194
    new-instance v0, Lio/reactivex/internal/operators/maybe/af;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/af;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingleElement(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3221
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3222
    new-instance v0, Lio/reactivex/internal/operators/maybe/ag;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ag;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flattenAsFlowable(Lio/reactivex/e/h;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/j<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3089
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3090
    new-instance v0, Lio/reactivex/internal/operators/maybe/ac;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ac;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final flattenAsObservable(Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3115
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3116
    new-instance v0, Lio/reactivex/internal/operators/maybe/ad;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ad;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 3264
    new-instance v0, Lio/reactivex/internal/operators/maybe/ao;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/ao;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElement()Lio/reactivex/a;
    .locals 1

    .line 3283
    new-instance v0, Lio/reactivex/internal/operators/maybe/aq;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/aq;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3301
    new-instance v0, Lio/reactivex/internal/operators/maybe/as;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/as;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/v;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/v<",
            "+TR;-TT;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    .line 3455
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3456
    new-instance v0, Lio/reactivex/internal/operators/maybe/au;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/au;-><init>(Lio/reactivex/w;Lio/reactivex/v;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3479
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3480
    new-instance v0, Lio/reactivex/internal/operators/maybe/av;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/av;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final materialize()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation

    .line 3500
    new-instance v0, Lio/reactivex/internal/operators/maybe/aw;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/aw;-><init>(Lio/reactivex/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lio/reactivex/w;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3527
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3528
    invoke-static {p0, p1}, Lio/reactivex/q;->merge(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3553
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3554
    new-instance v0, Lio/reactivex/internal/operators/maybe/az;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/az;-><init>(Lio/reactivex/w;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 3577
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3578
    invoke-static {p1}, Lio/reactivex/internal/a/a;->isInstanceOf(Ljava/lang/Class;)Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/q;->filter(Lio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/q;->cast(Ljava/lang/Class;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 3693
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/q;->onErrorComplete(Lio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lio/reactivex/e/q;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 3711
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3713
    new-instance v0, Lio/reactivex/internal/operators/maybe/ba;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/ba;-><init>(Lio/reactivex/w;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 3766
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3767
    new-instance v0, Lio/reactivex/internal/operators/maybe/bb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/bb;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 3739
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3740
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 3793
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3794
    new-instance v0, Lio/reactivex/internal/operators/maybe/bc;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bc;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 3819
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3820
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->onErrorReturn(Lio/reactivex/e/h;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onExceptionResumeNext(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 3849
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3850
    new-instance v0, Lio/reactivex/internal/operators/maybe/bb;

    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/bb;-><init>(Lio/reactivex/w;Lio/reactivex/e/h;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 3866
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3887
    invoke-virtual {p0, v0, v1}, Lio/reactivex/q;->repeat(J)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3915
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->repeat(J)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final repeatUntil(Lio/reactivex/e/e;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/e;",
            ")",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3942
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->repeatUntil(Lio/reactivex/e/e;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/j;
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
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3971
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 3993
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/q;->retry(JLio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4041
    invoke-static {}, Lio/reactivex/internal/a/a;->alwaysTrue()Lio/reactivex/e/q;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/q;->retry(JLio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLio/reactivex/e/q;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4058
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/j;->retry(JLio/reactivex/e/q;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/j;->singleElement()Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/d;)Lio/reactivex/q;
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
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4016
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retry(Lio/reactivex/e/d;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/j;->singleElement()Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/q;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 4074
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/q;->retry(JLio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final retryUntil(Lio/reactivex/e/e;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/e;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 4090
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4091
    invoke-static {p1}, Lio/reactivex/internal/a/a;->predicateReverseFor(Lio/reactivex/e/e;)Lio/reactivex/e/q;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/q;->retry(JLio/reactivex/e/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/e/h;)Lio/reactivex/q;
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
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4171
    invoke-virtual {p0}, Lio/reactivex/q;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retryWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/j;->singleElement()Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/b/c;
    .locals 3

    .line 4191
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v2, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/q;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 4216
    sget-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    sget-object v1, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/q;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 4242
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 4274
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 4275
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 4276
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4277
    new-instance v0, Lio/reactivex/internal/operators/maybe/d;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/d;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;)V

    invoke-virtual {p0, v0}, Lio/reactivex/q;->subscribeWith(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 4283
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4285
    invoke-static {p0, p1}, Lio/reactivex/g/a;->onSubscribe(Lio/reactivex/q;Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 4287
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4290
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/q;->subscribeActual(Lio/reactivex/t;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4294
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 4295
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4297
    throw v0

    :catch_0
    move-exception p1

    .line 4292
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/t;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 4330
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4331
    new-instance v0, Lio/reactivex/internal/operators/maybe/be;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/be;-><init>(Lio/reactivex/w;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/t;)Lio/reactivex/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/t<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 4360
    invoke-virtual {p0, p1}, Lio/reactivex/q;->subscribe(Lio/reactivex/t;)V

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4407
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4408
    new-instance v0, Lio/reactivex/internal/operators/maybe/bg;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bg;-><init>(Lio/reactivex/w;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4383
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4384
    new-instance v0, Lio/reactivex/internal/operators/maybe/bf;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bf;-><init>(Lio/reactivex/w;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4433
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4434
    new-instance v0, Lio/reactivex/internal/operators/maybe/bh;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bh;-><init>(Lio/reactivex/w;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lorg/b/b;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4463
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4464
    new-instance v0, Lio/reactivex/internal/operators/maybe/bi;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bi;-><init>(Lio/reactivex/w;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 4740
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    .line 4741
    invoke-virtual {p0, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/t;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 4758
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    if-eqz p1, :cond_0

    .line 4761
    invoke-virtual {v0}, Lio/reactivex/observers/e;->cancel()V

    .line 4764
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/t;)V

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4488
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/q;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 4574
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/q;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/q;->timeout(Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 4546
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4547
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/q;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/q;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lio/reactivex/q;->timeout(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/w;)Lio/reactivex/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 4515
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4516
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/q;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/w;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4593
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4594
    new-instance v0, Lio/reactivex/internal/operators/maybe/bj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/bj;-><init>(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/w;Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TU;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4615
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 4616
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4617
    new-instance v0, Lio/reactivex/internal/operators/maybe/bj;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/bj;-><init>(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lorg/b/b;)Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4640
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4641
    new-instance v0, Lio/reactivex/internal/operators/maybe/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/bk;-><init>(Lio/reactivex/w;Lorg/b/b;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lorg/b/b;Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;",
            "Lio/reactivex/w<",
            "+TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4666
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 4667
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4668
    new-instance v0, Lio/reactivex/internal/operators/maybe/bk;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/bk;-><init>(Lio/reactivex/w;Lorg/b/b;Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lio/reactivex/e/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/q<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

    .line 3599
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

    .line 3601
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 3602
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toFlowable()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3622
    instance-of v0, p0, Lio/reactivex/internal/b/b;

    if-eqz v0, :cond_0

    .line 3623
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/b;

    invoke-interface {v0}, Lio/reactivex/internal/b/b;->fuseToFlowable()Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 3625
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/bm;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bm;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 3641
    instance-of v0, p0, Lio/reactivex/internal/b/d;

    if-eqz v0, :cond_0

    .line 3642
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/d;

    invoke-interface {v0}, Lio/reactivex/internal/b/d;->fuseToObservable()Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 3644
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/bn;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/bn;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle()Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3678
    new-instance v0, Lio/reactivex/internal/operators/maybe/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/bo;-><init>(Lio/reactivex/w;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    .line 3662
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3663
    new-instance v0, Lio/reactivex/internal/operators/maybe/bo;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bo;-><init>(Lio/reactivex/w;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Lio/reactivex/ah;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 4686
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4687
    new-instance v0, Lio/reactivex/internal/operators/maybe/bq;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/bq;-><init>(Lio/reactivex/w;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/w;Lio/reactivex/e/c;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "+TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4720
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4721
    invoke-static {p0, p1, p2}, Lio/reactivex/q;->zip(Lio/reactivex/w;Lio/reactivex/w;Lio/reactivex/e/c;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method
