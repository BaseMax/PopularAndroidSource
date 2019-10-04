.class final Lio/reactivex/internal/operators/flowable/p$b;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/n<",
        "TT;TU;TU;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field c:Lorg/b/d;

.field d:Lio/reactivex/b/c;

.field e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/util/concurrent/Callable;Lorg/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lorg/b/b<",
            "TB;>;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/p$b;->a:Ljava/util/concurrent/Callable;

    .line 63
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/p$b;->b:Lorg/b/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 168
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    .line 171
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {p0, v1, p0}, Lio/reactivex/internal/operators/flowable/p$b;->a(Ljava/lang/Object;Lio/reactivex/b/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 171
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 158
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/p$b;->cancel()V

    .line 160
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0

    .line 47
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/p$b;->accept(Lorg/b/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final accept(Lorg/b/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    invoke-interface {p1, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final cancel()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->cancelled:Z

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->d:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/p$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/p$b;->cancel()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 122
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v1, v0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->o:Z

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/p$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/p$b;->cancel()V

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/p$b;->c:Lorg/b/d;

    .line 76
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->e:Ljava/util/Collection;

    .line 87
    new-instance v0, Lio/reactivex/internal/operators/flowable/p$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/p$a;-><init>(Lio/reactivex/internal/operators/flowable/p$b;)V

    .line 88
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/p$b;->d:Lio/reactivex/b/c;

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    invoke-interface {v1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 92
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->cancelled:Z

    if-nez v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 93
    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    .line 95
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p$b;->b:Lorg/b/b;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/p$b;->cancelled:Z

    .line 80
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 81
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p$b;->n:Lorg/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/p$b;->requested(J)V

    return-void
.end method
