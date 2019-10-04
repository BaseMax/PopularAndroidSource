.class final Lio/reactivex/internal/operators/c/n$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Open:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TOpen;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/n$a<",
            "**TOpen;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/n$a<",
            "**TOpen;*>;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 292
    iput-object p1, p0, Lio/reactivex/internal/operators/c/n$a$a;->a:Lio/reactivex/internal/operators/c/n$a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 319
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 324
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/n$a$a;->get()Ljava/lang/Object;

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
    .locals 2

    .line 313
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/n$a$a;->lazySet(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a$a;->a:Lio/reactivex/internal/operators/c/n$a;

    .line 1203
    iget-object v1, v0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1204
    iget-object v1, v0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1}, Lio/reactivex/b/b;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    iget-object v1, v0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v1, 0x1

    .line 1206
    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/n$a;->h:Z

    .line 1207
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/n$a;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 307
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/n$a$a;->lazySet(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a$a;->a:Lio/reactivex/internal/operators/c/n$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/c/n$a;->a(Lio/reactivex/b/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lio/reactivex/internal/operators/c/n$a$a;->a:Lio/reactivex/internal/operators/c/n$a;

    .line 1178
    :try_start_0
    iget-object v1, v0, Lio/reactivex/internal/operators/c/n$a;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The bufferSupplier returned a null Collection"

    invoke-static {v1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1179
    iget-object v2, v0, Lio/reactivex/internal/operators/c/n$a;->d:Lio/reactivex/e/h;

    invoke-interface {v2, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The bufferClose returned a null ObservableSource"

    invoke-static {p1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1187
    iget-wide v2, v0, Lio/reactivex/internal/operators/c/n$a;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 1188
    iput-wide v4, v0, Lio/reactivex/internal/operators/c/n$a;->k:J

    .line 1189
    monitor-enter v0

    .line 1190
    :try_start_1
    iget-object v4, v0, Lio/reactivex/internal/operators/c/n$a;->l:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 1192
    monitor-exit v0

    return-void

    .line 1194
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    new-instance v1, Lio/reactivex/internal/operators/c/n$b;

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/c/n$b;-><init>(Lio/reactivex/internal/operators/c/n$a;J)V

    .line 1198
    iget-object v0, v0, Lio/reactivex/internal/operators/c/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 1199
    invoke-interface {p1, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1195
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1181
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1182
    iget-object v1, v0, Lio/reactivex/internal/operators/c/n$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1183
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 297
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
