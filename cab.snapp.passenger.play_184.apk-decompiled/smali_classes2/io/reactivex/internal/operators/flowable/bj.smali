.class public final Lio/reactivex/internal/operators/flowable/bj;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bj$b;,
        Lio/reactivex/internal/operators/flowable/bj$c;,
        Lio/reactivex/internal/operators/flowable/bj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
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
            "+TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bj;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static subscribe(Lorg/b/c;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/c<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/b/c;)V

    return-void

    .line 65
    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/b/a;

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lio/reactivex/internal/operators/flowable/bj$b;

    move-object v1, p0

    check-cast v1, Lio/reactivex/internal/b/a;

    invoke-direct {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/bj$b;-><init>(Lio/reactivex/internal/b/a;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void

    .line 69
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/bj$c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/bj$c;-><init>(Lorg/b/c;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p1, p0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bj;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {p1, v0}, Lio/reactivex/internal/operators/flowable/bj;->subscribe(Lorg/b/c;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method