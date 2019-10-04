.class public abstract Lio/reactivex/parallel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/b/b;)Lio/reactivex/parallel/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .line 87
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/parallel/a;->from(Lorg/b/b;II)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/b/b;I)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;I)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/parallel/a;->from(Lorg/b/b;II)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/b/b;II)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/b<",
            "+TT;>;II)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source"

    .line 117
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    .line 118
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 119
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 121
    new-instance v0, Lio/reactivex/internal/operators/d/h;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/h;-><init>(Lorg/b/b;II)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromArray([Lorg/b/b;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/b/b<",
            "TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .line 758
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Lio/reactivex/internal/operators/d/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/d/g;-><init>([Lorg/b/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0

    .line 759
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final a([Lorg/b/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "*>;)Z"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    .line 68
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parallelism = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 71
    invoke-static {v1, v4}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final as(Lio/reactivex/parallel/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/b<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 138
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/b;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/b;->apply(Lio/reactivex/parallel/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "Lio/reactivex/e/b<",
            "-TC;-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 742
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 743
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 744
    new-instance v0, Lio/reactivex/internal/operators/d/a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/a;-><init>(Lio/reactivex/parallel/a;Ljava/util/concurrent/Callable;Lio/reactivex/e/b;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/parallel/c;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/c<",
            "TT;TU;>;)",
            "Lio/reactivex/parallel/a<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    .line 794
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/c;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/c;->apply(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/e/h;)Lio/reactivex/parallel/a;
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
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 884
    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->concatMap(Lio/reactivex/e/h;I)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/e/h;I)Lio/reactivex/parallel/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;I)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 902
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 903
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 904
    new-instance v0, Lio/reactivex/internal/operators/d/b;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/d/b;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lio/reactivex/e/h;IZ)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 942
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 943
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 944
    new-instance v0, Lio/reactivex/internal/operators/d/b;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/d/b;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lio/reactivex/e/h;Z)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;Z)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 923
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/parallel/a;->concatMapDelayError(Lio/reactivex/e/h;IZ)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterNext(Lio/reactivex/e/g;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 585
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 586
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 587
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 589
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 592
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 586
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminated(Lio/reactivex/e/a;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 651
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 653
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 654
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 655
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 658
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 652
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnCancel(Lio/reactivex/e/a;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onCancel is null"

    .line 717
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 719
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 720
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 721
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 724
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 718
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/e/a;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onComplete is null"

    .line 629
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 631
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 632
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 633
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 636
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 630
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/e/g;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 607
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 608
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 609
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 610
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 614
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 608
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/e/g;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 525
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 528
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 529
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 532
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 526
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/e/g;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 570
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 571
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    new-instance v0, Lio/reactivex/internal/operators/d/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/c;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/e/g;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 551
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 552
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 553
    new-instance v0, Lio/reactivex/internal/operators/d/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/c;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnRequest(Lio/reactivex/e/p;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/p;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onRequest is null"

    .line 695
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 697
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 698
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 699
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 702
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v8

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 696
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/parallel/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 673
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    new-instance v0, Lio/reactivex/internal/operators/d/l;

    .line 675
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v3

    .line 676
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v4

    .line 677
    invoke-static {}, Lio/reactivex/internal/a/a;->emptyConsumer()Lio/reactivex/e/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    sget-object v9, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    sget-object v10, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/d/l;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/g;Lio/reactivex/e/a;Lio/reactivex/e/a;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    .line 674
    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/e/q;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 208
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lio/reactivex/internal/operators/d/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/d/d;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/q;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/e/q;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 246
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 247
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lio/reactivex/internal/operators/d/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/e;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/q;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/e/q;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 226
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 227
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lio/reactivex/internal/operators/d/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/e;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/q;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;)Lio/reactivex/parallel/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .line 809
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex/parallel/a;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;Z)Lio/reactivex/parallel/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;Z)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .line 826
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/parallel/a;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;ZI)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .line 845
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/parallel/a;->flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/e/h;ZII)Lio/reactivex/parallel/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 865
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 866
    invoke-static {p3, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 867
    invoke-static {p4, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 868
    new-instance v0, Lio/reactivex/internal/operators/d/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/d/f;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;ZII)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 152
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    new-instance v0, Lio/reactivex/internal/operators/d/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/d/j;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;",
            "Lio/reactivex/e/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 194
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 195
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lio/reactivex/internal/operators/d/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/k;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/e/h;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TR;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 172
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 173
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lio/reactivex/internal/operators/d/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/k;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/h;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract parallelism()I
.end method

.method public final reduce(Lio/reactivex/e/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer"

    .line 316
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    new-instance v0, Lio/reactivex/internal/operators/d/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/d/n;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialSupplier"

    .line 334
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer"

    .line 335
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lio/reactivex/internal/operators/d/m;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/m;-><init>(Lio/reactivex/parallel/a;Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final runOn(Lio/reactivex/ah;)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .line 273
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->runOn(Lio/reactivex/ah;I)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final runOn(Lio/reactivex/ah;I)Lio/reactivex/parallel/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ah;",
            "I)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler"

    .line 300
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 301
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 302
    new-instance v0, Lio/reactivex/internal/operators/d/o;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/d/o;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/ah;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final sequential()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 360
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/a;->sequential(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final sequential(I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    .line 384
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 385
    new-instance v0, Lio/reactivex/internal/operators/d/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/d/i;-><init>(Lio/reactivex/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final sequentialDelayError()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 412
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/a;->sequentialDelayError(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final sequentialDelayError(I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    .line 438
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 439
    new-instance v0, Lio/reactivex/internal/operators/d/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/d/i;-><init>(Lio/reactivex/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final sorted(Ljava/util/Comparator;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 454
    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->sorted(Ljava/util/Comparator;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final sorted(Ljava/util/Comparator;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 470
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 471
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 473
    invoke-static {p2}, Lio/reactivex/internal/a/a;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Lio/reactivex/e/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/parallel/a;->reduce(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 474
    new-instance v0, Lio/reactivex/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->map(Lio/reactivex/e/h;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 476
    new-instance v0, Lio/reactivex/internal/operators/d/p;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/operators/d/p;-><init>(Lio/reactivex/parallel/a;Ljava/util/Comparator;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public abstract subscribe([Lorg/b/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation
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
            "Lio/reactivex/parallel/a<",
            "TT;>;TU;>;)TU;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 776
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

    .line 778
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 779
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 490
    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->toSortedList(Ljava/util/Comparator;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;I)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 504
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 505
    invoke-static {p2, v0}, Lio/reactivex/internal/a/b;->verifyPositive(ILjava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->parallelism()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 508
    invoke-static {p2}, Lio/reactivex/internal/a/a;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Lio/reactivex/e/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/parallel/a;->reduce(Ljava/util/concurrent/Callable;Lio/reactivex/e/c;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 509
    new-instance v0, Lio/reactivex/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->map(Lio/reactivex/e/h;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 511
    new-instance v0, Lio/reactivex/internal/util/j;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/j;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->reduce(Lio/reactivex/e/c;)Lio/reactivex/j;

    move-result-object p1

    .line 513
    invoke-static {p1}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method
