.class public abstract Lio/reactivex/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ao<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 3848
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3849
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3850
    new-instance v0, Lio/reactivex/internal/operators/e/as;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/e/as;-><init>(Lio/reactivex/ao;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lio/reactivex/j;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 4101
    new-instance v0, Lio/reactivex/internal/operators/flowable/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/ds;-><init>(Lio/reactivex/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 135
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lio/reactivex/internal/operators/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/e/a;-><init>([Lio/reactivex/ao;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 158
    array-length v0, p0

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->emptyThrower()Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 162
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/ai;->wrap(Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/e/a;-><init>([Lio/reactivex/ao;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 295
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 296
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 297
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->concat(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 330
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 331
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 332
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 333
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->concat(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 368
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 369
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 370
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 371
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 372
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->concat(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 188
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->concat(Lorg/b/b;)Lio/reactivex/j;

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
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 236
    invoke-static {p0, v0}, Lio/reactivex/ai;->concat(Lorg/b/b;I)Lio/reactivex/j;

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
            "Lio/reactivex/ao<",
            "+TT;>;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 263
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 264
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 265
    new-instance v0, Lio/reactivex/internal/operators/flowable/z;

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/flowable/z;-><init>(Lorg/b/b;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ae;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 210
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lio/reactivex/internal/operators/c/v;

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toObservable()Lio/reactivex/e/h;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lio/reactivex/internal/operators/c/v;-><init>(Lio/reactivex/ae;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 397
    new-instance v0, Lio/reactivex/internal/operators/flowable/w;

    invoke-static {p0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lio/reactivex/internal/operators/flowable/w;-><init>(Lio/reactivex/j;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 421
    invoke-static {p0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/j;

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
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 475
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

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
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 449
    invoke-static {p0}, Lio/reactivex/j;->fromPublisher(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/j;->concatMapEager(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/am;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/am<",
            "TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 518
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    new-instance v0, Lio/reactivex/internal/operators/e/d;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/d;-><init>(Lio/reactivex/am;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSupplier is null"

    .line 540
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    new-instance v0, Lio/reactivex/internal/operators/e/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "first is null"

    .line 1365
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "second is null"

    .line 1366
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1367
    new-instance v0, Lio/reactivex/internal/operators/e/v;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/v;-><init>(Lio/reactivex/ao;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 587
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    invoke-static {p0}, Lio/reactivex/internal/a/a;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
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
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 561
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 562
    new-instance v0, Lio/reactivex/internal/operators/e/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/w;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/ai;
    .locals 1
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

    const-string v0, "callable is null"

    .line 621
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    new-instance v0, Lio/reactivex/internal/operators/e/ad;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/ad;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 651
    invoke-static {p0}, Lio/reactivex/j;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 684
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/j;->fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 719
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/j;->fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 749
    invoke-static {p0, p1}, Lio/reactivex/j;->fromFuture(Ljava/util/concurrent/Future;Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromObservable(Lio/reactivex/ae;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observableSource is null"

    .line 810
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 811
    new-instance v0, Lio/reactivex/internal/operators/c/dg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/c/dg;-><init>(Lio/reactivex/ae;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublisher(Lorg/b/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 786
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 787
    new-instance v0, Lio/reactivex/internal/operators/e/ae;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/ae;-><init>(Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 837
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 838
    new-instance v0, Lio/reactivex/internal/operators/e/ai;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/ai;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 946
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 947
    new-instance v0, Lio/reactivex/internal/operators/e/x;

    invoke-static {}, Lio/reactivex/internal/a/a;->identity()Lio/reactivex/e/h;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/e/x;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 994
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 995
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 996
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->merge(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1046
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1047
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1048
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1049
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->merge(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1101
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1102
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1103
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1104
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1105
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->merge(Lorg/b/b;)Lio/reactivex/j;

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
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 876
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->merge(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/b/b;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 915
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 916
    new-instance v0, Lio/reactivex/internal/operators/flowable/bd;

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/bd;-><init>(Lorg/b/b;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1191
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1192
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1193
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->mergeDelayError(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1232
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1233
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1234
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1235
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->mergeDelayError(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1276
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1277
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1278
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1279
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1280
    invoke-static {v0}, Lio/reactivex/j;->fromArray([Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->mergeDelayError(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 1129
    invoke-static {p0}, Lio/reactivex/j;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/j;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/ai;->mergeDelayError(Lorg/b/b;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/b/b;)Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1154
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1155
    new-instance v0, Lio/reactivex/internal/operators/flowable/bd;

    invoke-static {}, Lio/reactivex/internal/operators/e/ah;->toFlowable()Lio/reactivex/e/h;

    move-result-object v3

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/bd;-><init>(Lorg/b/b;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 1299
    sget-object v0, Lio/reactivex/internal/operators/e/am;->INSTANCE:Lio/reactivex/ai;

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/ai<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1318
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/ai;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1342
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 1343
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1344
    new-instance v0, Lio/reactivex/internal/operators/e/at;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/e/at;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/ao;)Lio/reactivex/ai;
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

    const-string v0, "onSubscribe is null"

    .line 1389
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1390
    instance-of v0, p0, Lio/reactivex/ai;

    if-nez v0, :cond_0

    .line 1393
    new-instance v0, Lio/reactivex/internal/operators/e/af;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/af;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0

    .line 1391
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Single) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TU;+",
            "Lio/reactivex/ao<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TU;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1420
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/ai;->using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/e/h<",
            "-TU;+",
            "Lio/reactivex/ao<",
            "+TT;>;>;",
            "Lio/reactivex/e/g<",
            "-TU;>;Z)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1453
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "singleFunction is null"

    .line 1454
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 1455
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1457
    new-instance v0, Lio/reactivex/internal/operators/e/ax;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/e/ax;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;Lio/reactivex/e/g;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/ao;)Lio/reactivex/ai;
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

    const-string v0, "source is null"

    .line 1475
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1476
    instance-of v0, p0, Lio/reactivex/ai;

    if-eqz v0, :cond_0

    .line 1477
    check-cast p0, Lio/reactivex/ai;

    invoke-static {p0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0

    .line 1479
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/e/af;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/af;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/o;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/ao<",
            "+TT5;>;",
            "Lio/reactivex/ao<",
            "+TT6;>;",
            "Lio/reactivex/ao<",
            "+TT7;>;",
            "Lio/reactivex/ao<",
            "+TT8;>;",
            "Lio/reactivex/ao<",
            "+TT9;>;",
            "Lio/reactivex/e/o<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1924
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1925
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1926
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1927
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1928
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1929
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 1930
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 1931
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 1932
    invoke-static {p8, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1933
    invoke-static {p9}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/o;)Lio/reactivex/e/h;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/ao;

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

    invoke-static {p9, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/n;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/ao<",
            "+TT5;>;",
            "Lio/reactivex/ao<",
            "+TT6;>;",
            "Lio/reactivex/ao<",
            "+TT7;>;",
            "Lio/reactivex/ao<",
            "+TT8;>;",
            "Lio/reactivex/e/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1857
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1858
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1859
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1860
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1861
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1862
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 1863
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 1864
    invoke-static {p7, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1865
    invoke-static {p8}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/n;)Lio/reactivex/e/h;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/ao;

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

    invoke-static {p8, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/m;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/ao<",
            "+TT5;>;",
            "Lio/reactivex/ao<",
            "+TT6;>;",
            "Lio/reactivex/ao<",
            "+TT7;>;",
            "Lio/reactivex/e/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1795
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1796
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1797
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1798
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1799
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1800
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 1801
    invoke-static {p6, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1802
    invoke-static {p7}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/m;)Lio/reactivex/e/h;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/ao;

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

    invoke-static {p7, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/l;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/ao<",
            "+TT5;>;",
            "Lio/reactivex/ao<",
            "+TT6;>;",
            "Lio/reactivex/e/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1737
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1738
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1739
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1740
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1741
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1742
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1743
    invoke-static {p6}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/l;)Lio/reactivex/e/h;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/ao;

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

    invoke-static {p6, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/k;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/ao<",
            "+TT5;>;",
            "Lio/reactivex/e/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1684
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1685
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1686
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1687
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1688
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1689
    invoke-static {p5}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/ao;

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

    invoke-static {p5, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/j;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/ao<",
            "+TT4;>;",
            "Lio/reactivex/e/j<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1635
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1636
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1637
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1638
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1639
    invoke-static {p4}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/i;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/ao<",
            "+TT3;>;",
            "Lio/reactivex/e/i<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1591
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1592
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1593
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1594
    invoke-static {p3}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/c;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT1;>;",
            "Lio/reactivex/ao<",
            "+TT2;>;",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1551
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1552
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1553
    invoke-static {p2}, Lio/reactivex/internal/a/a;->toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/ai;->zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lio/reactivex/e/h;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT;>;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1515
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 1516
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1517
    new-instance v0, Lio/reactivex/internal/operators/e/az;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/az;-><init>(Ljava/lang/Iterable;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/e/h;[Lio/reactivex/ao;)Lio/reactivex/ai;
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
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1969
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 1970
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1971
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1972
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, Lio/reactivex/ai;->error(Ljava/lang/Throwable;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0

    .line 1974
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/e/ay;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/e/ay;-><init>([Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ambWith(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 2
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

    .line 1995
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ao;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1996
    invoke-static {v0}, Lio/reactivex/ai;->ambArray([Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/aj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/aj<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 2019
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/aj;

    invoke-interface {p1, p0}, Lio/reactivex/aj;->apply(Lio/reactivex/ai;)Ljava/lang/Object;

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

    .line 2833
    new-instance v0, Lio/reactivex/internal/c/h;

    invoke-direct {v0}, Lio/reactivex/internal/c/h;-><init>()V

    .line 2834
    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    .line 2835
    invoke-virtual {v0}, Lio/reactivex/internal/c/h;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final cache()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2082
    new-instance v0, Lio/reactivex/internal/operators/e/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/b;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lio/reactivex/ai<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 2101
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2102
    invoke-static {p1}, Lio/reactivex/internal/a/a;->castFunction(Ljava/lang/Class;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/ai;->map(Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/ap;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ap<",
            "-TT;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    .line 2064
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ap;

    invoke-interface {p1, p0}, Lio/reactivex/ap;->apply(Lio/reactivex/ai;)Lio/reactivex/ao;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->wrap(Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 2127
    invoke-static {p0, p1}, Lio/reactivex/ai;->concat(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;

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

    .line 3045
    invoke-static {}, Lio/reactivex/internal/a/b;->equalsPredicate()Lio/reactivex/e/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/ai;->contains(Ljava/lang/Object;Lio/reactivex/e/d;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;Lio/reactivex/e/d;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/reactivex/e/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/ai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "value is null"

    .line 3065
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "comparer is null"

    .line 3066
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3067
    new-instance v0, Lio/reactivex/internal/operators/e/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/e/c;-><init>(Lio/reactivex/ao;Ljava/lang/Object;Lio/reactivex/e/d;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/ai;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2148
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/ai;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 2194
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/ai;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/ai;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2220
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2221
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2222
    new-instance v0, Lio/reactivex/internal/operators/e/f;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/e/f;-><init>(Lio/reactivex/ao;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/ai;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2169
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/ai;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2336
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/ai;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2355
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/z;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/ai;->delaySubscription(Lio/reactivex/ae;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lio/reactivex/ae;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TU;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2289
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2290
    new-instance v0, Lio/reactivex/internal/operators/e/h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/h;-><init>(Lio/reactivex/ao;Lio/reactivex/ae;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "TU;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2266
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2267
    new-instance v0, Lio/reactivex/internal/operators/e/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/j;-><init>(Lio/reactivex/ao;Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lio/reactivex/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2243
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2244
    new-instance v0, Lio/reactivex/internal/operators/e/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/g;-><init>(Lio/reactivex/ao;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lorg/b/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TU;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2317
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2318
    new-instance v0, Lio/reactivex/internal/operators/e/i;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/i;-><init>(Lio/reactivex/ao;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final dematerialize(Lio/reactivex/e/h;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;)",
            "Lio/reactivex/q<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2392
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2393
    new-instance v0, Lio/reactivex/internal/operators/e/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/k;-><init>(Lio/reactivex/ai;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterSuccess(Lio/reactivex/e/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 2416
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2417
    new-instance v0, Lio/reactivex/internal/operators/e/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/m;-><init>(Lio/reactivex/ao;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lio/reactivex/e/a;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 2445
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2446
    new-instance v0, Lio/reactivex/internal/operators/e/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/n;-><init>(Lio/reactivex/ao;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/e/a;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 2472
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2473
    new-instance v0, Lio/reactivex/internal/operators/e/o;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/o;-><init>(Lio/reactivex/ao;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lio/reactivex/e/a;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDispose is null"

    .line 2607
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2608
    new-instance v0, Lio/reactivex/internal/operators/e/p;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/p;-><init>(Lio/reactivex/ao;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/e/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 2584
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2585
    new-instance v0, Lio/reactivex/internal/operators/e/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/q;-><init>(Lio/reactivex/ao;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEvent(Lio/reactivex/e/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 2562
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2563
    new-instance v0, Lio/reactivex/internal/operators/e/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/r;-><init>(Lio/reactivex/ao;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 2494
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2495
    new-instance v0, Lio/reactivex/internal/operators/e/s;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/s;-><init>(Lio/reactivex/ao;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSuccess(Lio/reactivex/e/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 2543
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2544
    new-instance v0, Lio/reactivex/internal/operators/e/t;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/t;-><init>(Lio/reactivex/ao;Lio/reactivex/e/g;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lio/reactivex/e/a;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 2521
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2522
    new-instance v0, Lio/reactivex/internal/operators/e/u;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/u;-><init>(Lio/reactivex/ao;Lio/reactivex/e/a;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

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

    .line 2632
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2633
    new-instance v0, Lio/reactivex/internal/operators/maybe/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/z;-><init>(Lio/reactivex/ao;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;)Lio/reactivex/ai;
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

    .line 2656
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2657
    new-instance v0, Lio/reactivex/internal/operators/e/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/x;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

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

    .line 2813
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2814
    new-instance v0, Lio/reactivex/internal/operators/e/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/y;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lio/reactivex/e/h;)Lio/reactivex/q;
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

    .line 2680
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2681
    new-instance v0, Lio/reactivex/internal/operators/e/ab;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/ab;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

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

    .line 2788
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2789
    new-instance v0, Lio/reactivex/internal/operators/b/s;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/b/s;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

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

    .line 2709
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2710
    new-instance v0, Lio/reactivex/internal/operators/e/ac;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/ac;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

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

    .line 2738
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2739
    new-instance v0, Lio/reactivex/internal/operators/e/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/z;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

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

    .line 2764
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2765
    new-instance v0, Lio/reactivex/internal/operators/e/aa;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/aa;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 2037
    new-instance v0, Lio/reactivex/internal/operators/e/ag;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/ag;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElement()Lio/reactivex/a;
    .locals 1

    .line 3919
    new-instance v0, Lio/reactivex/internal/operators/a/v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/v;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/an;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/an<",
            "+TR;-TT;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    .line 2983
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2984
    new-instance v0, Lio/reactivex/internal/operators/e/aj;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/aj;-><init>(Lio/reactivex/ao;Lio/reactivex/an;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3007
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3008
    new-instance v0, Lio/reactivex/internal/operators/e/ak;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/ak;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

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

    .line 3028
    new-instance v0, Lio/reactivex/internal/operators/e/al;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/al;-><init>(Lio/reactivex/ai;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lio/reactivex/ao;)Lio/reactivex/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3093
    invoke-static {p0, p1}, Lio/reactivex/ai;->merge(Lio/reactivex/ao;Lio/reactivex/ao;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3119
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3120
    new-instance v0, Lio/reactivex/internal/operators/e/an;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/an;-><init>(Lio/reactivex/ao;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/ai;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ai<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeSingleInCaseOfError is null"

    .line 3208
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3209
    invoke-static {p1}, Lio/reactivex/internal/a/a;->justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/ai;->onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ao<",
            "+TT;>;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunctionInCaseOfError is null"

    .line 3245
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3246
    new-instance v0, Lio/reactivex/internal/operators/e/ap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/ap;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/e/h;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 3153
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3154
    new-instance v0, Lio/reactivex/internal/operators/e/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/e/ao;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    .line 3173
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3174
    new-instance v0, Lio/reactivex/internal/operators/e/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/e/ao;-><init>(Lio/reactivex/ao;Lio/reactivex/e/h;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3264
    new-instance v0, Lio/reactivex/internal/operators/e/l;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/l;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 3284
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->repeat()Lio/reactivex/j;

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

    .line 3305
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

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

    .line 3354
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

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

    .line 3332
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->repeatWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3369
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->retry()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3386
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->retry(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLio/reactivex/e/q;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3424
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/j;->retry(JLio/reactivex/e/q;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/d;)Lio/reactivex/ai;
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
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3404
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retry(Lio/reactivex/e/d;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/e/q;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3442
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retry(Lio/reactivex/e/q;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/e/h;)Lio/reactivex/ai;
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
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3489
    invoke-virtual {p0}, Lio/reactivex/ai;->toFlowable()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->retryWhen(Lio/reactivex/e/h;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/ai;->a(Lio/reactivex/j;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/b/c;
    .locals 2

    .line 3508
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/b;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "onCallback is null"

    .line 3531
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3533
    new-instance v0, Lio/reactivex/internal/c/d;

    invoke-direct {v0, p1}, Lio/reactivex/internal/c/d;-><init>(Lio/reactivex/e/b;)V

    .line 3534
    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 3559
    sget-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

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

    const-string v0, "onSuccess is null"

    .line 3585
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 3586
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3588
    new-instance v0, Lio/reactivex/internal/c/k;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/c/k;-><init>(Lio/reactivex/e/g;Lio/reactivex/e/g;)V

    .line 3589
    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 3596
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3598
    invoke-static {p0, p1}, Lio/reactivex/g/a;->onSubscribe(Lio/reactivex/ai;Lio/reactivex/al;)Lio/reactivex/al;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3600
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3603
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/ai;->subscribeActual(Lio/reactivex/al;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3607
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 3608
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3610
    throw v0

    :catch_0
    move-exception p1

    .line 3605
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/al;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3674
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3675
    new-instance v0, Lio/reactivex/internal/operators/e/aq;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/aq;-><init>(Lio/reactivex/ao;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/al;)Lio/reactivex/al;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/al<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 3650
    invoke-virtual {p0, p1}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "+TE;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3757
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3758
    new-instance v0, Lio/reactivex/internal/operators/e/au;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/e/au;-><init>(Lio/reactivex/ao;)V

    invoke-virtual {p0, v0}, Lio/reactivex/ai;->takeUntil(Lorg/b/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/g;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3699
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3700
    new-instance v0, Lio/reactivex/internal/operators/a/ao;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/a/ao;-><init>(Lio/reactivex/g;)V

    invoke-virtual {p0, v0}, Lio/reactivex/ai;->takeUntil(Lorg/b/b;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lorg/b/b;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "TE;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3731
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3732
    new-instance v0, Lio/reactivex/internal/operators/e/ar;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/ar;-><init>(Lio/reactivex/ao;Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

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

    .line 4071
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    .line 4072
    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

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

    .line 4090
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    if-eqz p1, :cond_0

    .line 4093
    invoke-virtual {v0}, Lio/reactivex/observers/e;->cancel()V

    .line 4096
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribe(Lio/reactivex/al;)V

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/ai;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    .line 3776
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/ai;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 3796
    invoke-direct/range {v0 .. v5}, Lio/reactivex/ai;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3817
    invoke-static {p5, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3818
    invoke-direct/range {p0 .. p5}, Lio/reactivex/ai;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ao;)Lio/reactivex/ai;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ao<",
            "+TT;>;)",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3843
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3844
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/ai;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ao;)Lio/reactivex/ai;

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
            "Lio/reactivex/ai<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

    .line 3872
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

    .line 3874
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 3875
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toCompletable()Lio/reactivex/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3899
    new-instance v0, Lio/reactivex/internal/operators/a/v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/a/v;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
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

    .line 3940
    instance-of v0, p0, Lio/reactivex/internal/b/b;

    if-eqz v0, :cond_0

    .line 3941
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/b;

    invoke-interface {v0}, Lio/reactivex/internal/b/b;->fuseToFlowable()Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 3943
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/e/au;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/au;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 3961
    new-instance v0, Lio/reactivex/internal/c/q;

    invoke-direct {v0}, Lio/reactivex/internal/c/q;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/ai;->subscribeWith(Lio/reactivex/al;)Lio/reactivex/al;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final toMaybe()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .line 3979
    instance-of v0, p0, Lio/reactivex/internal/b/c;

    if-eqz v0, :cond_0

    .line 3980
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/c;

    invoke-interface {v0}, Lio/reactivex/internal/b/c;->fuseToMaybe()Lio/reactivex/q;

    move-result-object v0

    return-object v0

    .line 3982
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/an;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/an;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/q;)Lio/reactivex/q;

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

    .line 3999
    instance-of v0, p0, Lio/reactivex/internal/b/d;

    if-eqz v0, :cond_0

    .line 4000
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/b/d;

    invoke-interface {v0}, Lio/reactivex/internal/b/d;->fuseToObservable()Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 4002
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/e/av;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/av;-><init>(Lio/reactivex/ao;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribeOn(Lio/reactivex/ah;)Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/ai<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 4022
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4023
    new-instance v0, Lio/reactivex/internal/operators/e/aw;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/e/aw;-><init>(Lio/reactivex/ao;Lio/reactivex/ah;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/ai;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/ao;Lio/reactivex/e/c;)Lio/reactivex/ai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ao<",
            "TU;>;",
            "Lio/reactivex/e/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/ai<",
            "TR;>;"
        }
    .end annotation

    .line 4052
    invoke-static {p0, p1, p2}, Lio/reactivex/ai;->zip(Lio/reactivex/ao;Lio/reactivex/ao;Lio/reactivex/e/c;)Lio/reactivex/ai;

    move-result-object p1

    return-object p1
.end method
