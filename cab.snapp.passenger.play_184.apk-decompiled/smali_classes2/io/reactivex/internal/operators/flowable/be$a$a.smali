.class final Lio/reactivex/internal/operators/flowable/be$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/be$a;
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
.field final synthetic a:Lio/reactivex/internal/operators/flowable/be$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/be$a;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a$a;->a:Lio/reactivex/internal/operators/flowable/be$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 379
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 369
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a$a;->a:Lio/reactivex/internal/operators/flowable/be$a;

    .line 1228
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1229
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1230
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->b:Z

    if-nez p1, :cond_0

    .line 1231
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 1232
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    goto :goto_0

    .line 1234
    :cond_0
    iget p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->c:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_1

    .line 1235
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    .line 1238
    :cond_1
    :goto_0
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1239
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->b()V

    return-void

    .line 1241
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 359
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a$a;->a:Lio/reactivex/internal/operators/flowable/be$a;

    .line 1171
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1172
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->get()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/flowable/be$a;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1173
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1174
    :goto_0
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 1175
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    invoke-interface {v2, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 1177
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/d/c;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 1179
    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1180
    :cond_1
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1182
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1184
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return-void

    .line 1188
    :cond_3
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {p1, v1, v2}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1189
    iget p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->c:I

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_5

    .line 1190
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_1

    .line 1193
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->a()Lio/reactivex/internal/d/c;

    move-result-object v1

    .line 1194
    monitor-enter v1

    .line 1195
    :try_start_0
    invoke-virtual {v1, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 1196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1196
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1202
    :cond_6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->a()Lio/reactivex/internal/d/c;

    move-result-object v1

    .line 1203
    monitor-enter v1

    .line 1204
    :try_start_2
    invoke-virtual {v1, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 1205
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1206
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1207
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_7

    .line 1211
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/be$a;->c()V

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    .line 1205
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
