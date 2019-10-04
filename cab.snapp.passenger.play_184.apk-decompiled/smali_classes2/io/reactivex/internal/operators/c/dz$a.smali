.class final Lio/reactivex/internal/operators/c/dz$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/dz$d;

.field final b:J


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/c/dz$d;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 330
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/dz$a;->b:J

    .line 331
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dz$a;->a:Lio/reactivex/internal/operators/c/dz$d;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 369
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dz$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 361
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dz$a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 362
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/dz$a;->lazySet(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$a;->a:Lio/reactivex/internal/operators/c/dz$d;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/dz$a;->b:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/c/dz$d;->onTimeout(J)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 351
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dz$a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 352
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/dz$a;->lazySet(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dz$a;->a:Lio/reactivex/internal/operators/c/dz$d;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/dz$a;->b:J

    invoke-interface {v0, v1, v2, p1}, Lio/reactivex/internal/operators/c/dz$d;->onTimeoutError(JLjava/lang/Throwable;)V

    return-void

    .line 355
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dz$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    .line 342
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq p1, v0, :cond_0

    .line 343
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 344
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/dz$a;->lazySet(Ljava/lang/Object;)V

    .line 345
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dz$a;->a:Lio/reactivex/internal/operators/c/dz$d;

    iget-wide v0, p0, Lio/reactivex/internal/operators/c/dz$a;->b:J

    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/c/dz$d;->onTimeout(J)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 336
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
