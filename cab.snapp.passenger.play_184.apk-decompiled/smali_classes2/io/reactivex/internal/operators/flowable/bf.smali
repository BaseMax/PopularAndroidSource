.class public final Lio/reactivex/internal/operators/flowable/bf;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bf;->c:Lio/reactivex/e/h;

    .line 43
    iput p3, p0, Lio/reactivex/internal/operators/flowable/bf;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf;->b:Lio/reactivex/j;

    instance-of v0, v0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf;->b:Lio/reactivex/j;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/b/c;)V

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bf;->c:Lio/reactivex/e/h;

    invoke-interface {v1, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {p1, v0}, Lio/reactivex/internal/operators/flowable/bj;->subscribe(Lorg/b/c;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 73
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    :catchall_1
    move-exception v0

    .line 55
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/bf$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bf;->c:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/bf;->d:I

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/bf$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
