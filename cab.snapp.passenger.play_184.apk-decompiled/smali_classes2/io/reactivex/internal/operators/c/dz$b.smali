.class final Lio/reactivex/internal/operators/c/dz$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/operators/c/dz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/operators/c/dz$d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "*>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/disposables/f;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "*>;>;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 204
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    .line 205
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dz$b;->b:Lio/reactivex/e/h;

    .line 206
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    .line 207
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dz$b;->f:Lio/reactivex/ae;

    .line 208
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 209
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 309
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 310
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 316
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dz$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 5

    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 278
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 262
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 267
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 220
    iget-object v4, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 229
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 234
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->b:Lio/reactivex/e/h;

    .line 235
    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null ObservableSource."

    .line 234
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    new-instance v0, Lio/reactivex/internal/operators/c/dz$a;

    invoke-direct {v0, v5, v6, p0}, Lio/reactivex/internal/operators/c/dz$a;-><init>(JLio/reactivex/internal/operators/c/dz$d;)V

    .line 246
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dz$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 238
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onTimeout(J)V
    .locals 3

    .line 286
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 289
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->f:Lio/reactivex/ae;

    const/4 p2, 0x0

    .line 290
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dz$b;->f:Lio/reactivex/ae;

    .line 292
    new-instance p2, Lio/reactivex/internal/operators/c/ea$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/c/ea$a;-><init>(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void
.end method

.method public final onTimeoutError(JLjava/lang/Throwable;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 301
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p3}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 303
    :cond_0
    invoke-static {p3}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
