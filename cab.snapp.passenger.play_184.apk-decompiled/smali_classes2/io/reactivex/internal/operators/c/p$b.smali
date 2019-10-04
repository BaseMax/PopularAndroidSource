.class final Lio/reactivex/internal/operators/c/p$b;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/p;
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
        "Lio/reactivex/internal/c/u<",
        "TT;TU;TU;>;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TB;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/b/c;

.field h:Lio/reactivex/b/c;

.field i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Ljava/util/concurrent/Callable;Lio/reactivex/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/ae<",
            "TB;>;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/c/p$b;->e:Ljava/util/concurrent/Callable;

    .line 61
    iput-object p3, p0, Lio/reactivex/internal/operators/c/p$b;->f:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 151
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-virtual {p0, v1, p0}, Lio/reactivex/internal/operators/c/p$b;->a(Ljava/lang/Object;Lio/reactivex/b/c;)V

    return-void

    :catchall_0
    move-exception v0

    .line 166
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 153
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/p$b;->dispose()V

    .line 155
    iget-object v1, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic accept(Lio/reactivex/ag;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/c/p$b;->accept(Lio/reactivex/ag;Ljava/util/Collection;)V

    return-void
.end method

.method public final accept(Lio/reactivex/ag;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/p$b;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/p$b;->cancelled:Z

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->h:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 135
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/p$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/p$b;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 117
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v1, p0, Lio/reactivex/internal/operators/c/p$b;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v1, v0}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/p$b;->b:Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/p$b;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/o;->drainLoop(Lio/reactivex/internal/b/i;Lio/reactivex/ag;ZLio/reactivex/b/c;Lio/reactivex/internal/util/k;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/p$b;->dispose()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->g:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/c/p$b;->g:Lio/reactivex/b/c;

    .line 72
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iput-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->i:Ljava/util/Collection;

    .line 83
    new-instance p1, Lio/reactivex/internal/operators/c/p$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/p$a;-><init>(Lio/reactivex/internal/operators/c/p$b;)V

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/c/p$b;->h:Lio/reactivex/b/c;

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 88
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/p$b;->cancelled:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/c/p$b;->f:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/p$b;->cancelled:Z

    .line 76
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/c/p$b;->a:Lio/reactivex/ag;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    :cond_0
    :goto_0
    return-void
.end method
