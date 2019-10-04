.class final Lio/reactivex/internal/operators/flowable/bc$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bc$a;
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
        "Lio/reactivex/b/c;",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/bc$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/bc$a;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bc$a$a;->a:Lio/reactivex/internal/operators/flowable/bc$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 417
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 412
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bc$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 7

    .line 407
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bc$a$a;->a:Lio/reactivex/internal/operators/flowable/bc$a;

    .line 1246
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1248
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->get()I

    move-result v1

    const-wide/16 v2, 0x1

    const v4, 0x7fffffff

    if-nez v1, :cond_5

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Lio/reactivex/internal/operators/flowable/bc$a;->compareAndSet(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1249
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/bc$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1250
    :goto_0
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/bc$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/internal/d/c;

    if-eqz v1, :cond_3

    if-eqz v5, :cond_1

    .line 1252
    invoke-virtual {v5}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1253
    :cond_1
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1255
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/bc$a;->a:Lorg/b/c;

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1257
    :cond_2
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/bc$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 1262
    :cond_3
    iget v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->c:I

    if-eq v1, v4, :cond_4

    .line 1263
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->j:Lorg/b/d;

    invoke-interface {v1, v2, v3}, Lorg/b/d;->request(J)V

    .line 1265
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1268
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->c()V

    return-void

    .line 1270
    :cond_5
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1271
    iget v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->c:I

    if-eq v1, v4, :cond_6

    .line 1272
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->j:Lorg/b/d;

    invoke-interface {v1, v2, v3}, Lorg/b/d;->request(J)V

    .line 1274
    :cond_6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->b()V

    :cond_7
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 402
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bc$a$a;->a:Lio/reactivex/internal/operators/flowable/bc$a;

    .line 1228
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1229
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1230
    iget-boolean p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->b:Z

    if-nez p1, :cond_0

    .line 1231
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->j:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 1232
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    goto :goto_0

    .line 1234
    :cond_0
    iget p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->c:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_1

    .line 1235
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->j:Lorg/b/d;

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    .line 1238
    :cond_1
    :goto_0
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1239
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->b()V

    return-void

    .line 1241
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 392
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

    .line 397
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bc$a$a;->a:Lio/reactivex/internal/operators/flowable/bc$a;

    .line 1171
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, p0}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 1172
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->get()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/flowable/bc$a;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1173
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/bc$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1174
    :goto_0
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/bc$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 1175
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/bc$a;->a:Lorg/b/c;

    invoke-interface {v2, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 1177
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {p1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1182
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/bc$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1184
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->a:Lorg/b/c;

    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return-void

    .line 1188
    :cond_3
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {p1, v1, v2}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1189
    iget p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->c:I

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_5

    .line 1190
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->j:Lorg/b/d;

    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_1

    .line 1193
    :cond_4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->a()Lio/reactivex/internal/d/c;

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
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->decrementAndGet()I

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
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->a()Lio/reactivex/internal/d/c;

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
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/bc$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1207
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_7

    .line 1211
    :goto_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/bc$a;->c()V

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
