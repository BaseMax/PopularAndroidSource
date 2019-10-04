.class final Lio/reactivex/internal/operators/c/n$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/n$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TC;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TOpen;+",
            "Lio/reactivex/ae<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/b/b;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/util/b;

.field volatile h:Z

.field final i:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TC;>;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:J

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/ae;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TC;>;",
            "Lio/reactivex/ae<",
            "+TOpen;>;",
            "Lio/reactivex/e/h<",
            "-TOpen;+",
            "Lio/reactivex/ae<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->a:Lio/reactivex/ag;

    .line 90
    iput-object p4, p0, Lio/reactivex/internal/operators/c/n$a;->b:Ljava/util/concurrent/Callable;

    .line 91
    iput-object p2, p0, Lio/reactivex/internal/operators/c/n$a;->c:Lio/reactivex/ae;

    .line 92
    iput-object p3, p0, Lio/reactivex/internal/operators/c/n$a;->d:Lio/reactivex/e/h;

    .line 93
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->i:Lio/reactivex/internal/d/c;

    .line 94
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    .line 97
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->g:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->a:Lio/reactivex/ag;

    .line 244
    iget-object v1, p0, Lio/reactivex/internal/operators/c/n$a;->i:Lio/reactivex/internal/d/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 248
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/n$a;->j:Z

    if-eqz v4, :cond_2

    .line 249
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 253
    :cond_2
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/n$a;->h:Z

    if-eqz v4, :cond_3

    .line 254
    iget-object v5, p0, Lio/reactivex/internal/operators/c/n$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v5}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 255
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->clear()V

    .line 256
    iget-object v1, p0, Lio/reactivex/internal/operators/c/n$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 257
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 261
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    .line 265
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_5
    if-nez v6, :cond_6

    .line 273
    invoke-interface {v0, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    neg-int v3, v3

    .line 276
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/c/n$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method final a(Lio/reactivex/b/c;Ljava/lang/Throwable;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 233
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 234
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/c/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Lio/reactivex/internal/operators/c/n$b;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/n$b<",
            "TT;TC;>;J)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 214
    iget-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->size()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    :goto_0
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 221
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/n$a;->i:Lio/reactivex/internal/d/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 226
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/n$a;->h:Z

    .line 228
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 224
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final dispose()V
    .locals 1

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/n$a;->j:Z

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 160
    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->i:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 162
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 144
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 147
    iget-object v2, p0, Lio/reactivex/internal/operators/c/n$a;->i:Lio/reactivex/internal/d/c;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/n$a;->h:Z

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 128
    monitor-enter p0

    const/4 p1, 0x0

    .line 129
    :try_start_0
    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/n$a;->h:Z

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 134
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 119
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    new-instance p1, Lio/reactivex/internal/operators/c/n$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/n$a$a;-><init>(Lio/reactivex/internal/operators/c/n$a;)V

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a;->c:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void
.end method
