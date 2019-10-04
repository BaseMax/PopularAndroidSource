.class public final Lio/reactivex/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static disposed()Lio/reactivex/b/c;
    .locals 1

    .line 111
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static empty()Lio/reactivex/b/c;
    .locals 1

    .line 102
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/b/d;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static fromAction(Lio/reactivex/e/a;)Lio/reactivex/b/c;
    .locals 1

    const-string v0, "run is null"

    .line 55
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lio/reactivex/b/a;

    invoke-direct {v0, p0}, Lio/reactivex/b/a;-><init>(Lio/reactivex/e/a;)V

    return-object v0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 67
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 68
    invoke-static {p0, v0}, Lio/reactivex/b/d;->fromFuture(Ljava/util/concurrent/Future;Z)Lio/reactivex/b/c;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;Z)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 80
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lio/reactivex/b/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/b/e;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 1

    const-string v0, "run is null"

    .line 43
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lio/reactivex/b/g;

    invoke-direct {v0, p0}, Lio/reactivex/b/g;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static fromSubscription(Lorg/b/d;)Lio/reactivex/b/c;
    .locals 1

    const-string v0, "subscription is null"

    .line 92
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lio/reactivex/b/h;

    invoke-direct {v0, p0}, Lio/reactivex/b/h;-><init>(Lorg/b/d;)V

    return-object v0
.end method
