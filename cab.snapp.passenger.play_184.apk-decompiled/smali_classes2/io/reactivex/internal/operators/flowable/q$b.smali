.class final Lio/reactivex/internal/operators/flowable/q$b;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q;
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
        "-TT;>;>",
        "Lio/reactivex/internal/f/n<",
        "TT;TU;TU;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;",
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field e:Lorg/b/d;

.field f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/q$b;->a:Ljava/util/concurrent/Callable;

    .line 99
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/q$b;->b:J

    .line 100
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/q$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 101
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/q$b;->d:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0

    .line 81
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$b;->accept(Lorg/b/c;Ljava/util/Collection;)Z

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

    .line 212
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    invoke-interface {p1, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->cancelled:Z

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$b;->cancel()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v2, v0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->o:Z

    .line 167
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->queue:Lio/reactivex/internal/b/i;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 148
    monitor-enter p0

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
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
    .locals 9

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$b;->e:Lorg/b/d;

    .line 112
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->cancelled:Z

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 125
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    .line 127
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q$b;->d:Lio/reactivex/ah;

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/q$b;->b:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/q$b;->c:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$b;->cancel()V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    invoke-static {p1, v0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$b;->requested(J)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 202
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/q$b;->f:Ljava/util/Collection;

    .line 205
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-virtual {p0, v1, p0}, Lio/reactivex/internal/operators/flowable/q$b;->a(Ljava/lang/Object;Lio/reactivex/b/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 205
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 191
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$b;->cancel()V

    .line 193
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$b;->n:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
