.class public final Lio/reactivex/internal/operators/a/ad;
.super Lio/reactivex/a;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ad;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 6

    .line 36
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    .line 38
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 43
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/a/ad;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "The source iterator returned is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 52
    new-instance v3, Lio/reactivex/internal/util/b;

    invoke-direct {v3}, Lio/reactivex/internal/util/b;-><init>()V

    .line 55
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 79
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The iterator returned a null CompletableSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 90
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 92
    new-instance v5, Lio/reactivex/internal/operators/a/ac$a;

    invoke-direct {v5, p1, v0, v3, v2}, Lio/reactivex/internal/operators/a/ac$a;-><init>(Lio/reactivex/d;Lio/reactivex/b/b;Lio/reactivex/internal/util/b;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, v5}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 63
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    .line 96
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 98
    invoke-interface {p1}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 100
    :cond_4
    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :catchall_2
    move-exception v0

    .line 45
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-interface {p1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
