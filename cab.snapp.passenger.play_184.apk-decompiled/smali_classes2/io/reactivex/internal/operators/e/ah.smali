.class public final Lio/reactivex/internal/operators/e/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/ah$e;,
        Lio/reactivex/internal/operators/e/ah$c;,
        Lio/reactivex/internal/operators/e/ah$d;,
        Lio/reactivex/internal/operators/e/ah$b;,
        Lio/reactivex/internal/operators/e/ah$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyThrower()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/NoSuchElementException;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lio/reactivex/internal/operators/e/ah$a;->INSTANCE:Lio/reactivex/internal/operators/e/ah$a;

    return-object v0
.end method

.method public static iterableToFlowable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lio/reactivex/internal/operators/e/ah$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/e/ah$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static toFlowable()Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/h<",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lorg/b/b<",
            "+TT;>;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lio/reactivex/internal/operators/e/ah$b;->INSTANCE:Lio/reactivex/internal/operators/e/ah$b;

    return-object v0
.end method

.method public static toObservable()Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/h<",
            "Lio/reactivex/ao<",
            "+TT;>;",
            "Lio/reactivex/z<",
            "+TT;>;>;"
        }
    .end annotation

    .line 116
    sget-object v0, Lio/reactivex/internal/operators/e/ah$e;->INSTANCE:Lio/reactivex/internal/operators/e/ah$e;

    return-object v0
.end method
