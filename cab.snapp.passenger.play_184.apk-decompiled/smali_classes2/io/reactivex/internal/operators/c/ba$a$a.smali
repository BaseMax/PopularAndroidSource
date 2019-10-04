.class final Lio/reactivex/internal/operators/c/ba$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ba$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/al<",
        "TR;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/ba$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ba$a;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ba$a$a;->a:Lio/reactivex/internal/operators/c/ba$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 299
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ba$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a$a;->a:Lio/reactivex/internal/operators/c/ba$a;

    .line 1195
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1196
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    iget-boolean p1, v0, Lio/reactivex/internal/operators/c/ba$a;->b:Z

    if-nez p1, :cond_0

    .line 1198
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->h:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 1199
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 1201
    :cond_0
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1202
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ba$a;->a()V

    return-void

    .line 1204
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 279
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ba$a$a;->a:Lio/reactivex/internal/operators/c/ba$a;

    .line 1149
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ba$a;->c:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1150
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ba$a;->get()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/c/ba$a;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1151
    iget-object v3, v0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    invoke-interface {v3, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 1153
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1154
    :goto_0
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/d/c;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 1156
    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1157
    :cond_1
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1159
    iget-object v0, v0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1161
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->a:Lio/reactivex/ag;

    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 1165
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ba$a;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 1183
    :cond_4
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/d/c;

    if-eqz v1, :cond_5

    goto :goto_1

    .line 1187
    :cond_5
    new-instance v1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/z;->bufferSize()I

    move-result v2

    invoke-direct {v1, v2}, Lio/reactivex/internal/d/c;-><init>(I)V

    .line 1188
    iget-object v2, v0, Lio/reactivex/internal/operators/c/ba$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1170
    :goto_1
    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-virtual {v1, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 1172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    iget-object p1, v0, Lio/reactivex/internal/operators/c/ba$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1174
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ba$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_6

    .line 1178
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ba$a;->b()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 1172
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
