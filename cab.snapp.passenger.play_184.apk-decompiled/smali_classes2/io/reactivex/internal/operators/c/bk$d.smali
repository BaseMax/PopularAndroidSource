.class final Lio/reactivex/internal/operators/c/bk$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
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
.field final a:Lio/reactivex/internal/operators/c/bk$b;

.field final b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/bk$b;Z)V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 392
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bk$d;->a:Lio/reactivex/internal/operators/c/bk$b;

    .line 393
    iput-boolean p2, p0, Lio/reactivex/internal/operators/c/bk$d;->b:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 398
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 403
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bk$d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 423
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$d;->a:Lio/reactivex/internal/operators/c/bk$b;

    invoke-interface {v0, p0}, Lio/reactivex/internal/operators/c/bk$b;->innerComplete(Lio/reactivex/internal/operators/c/bk$d;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$d;->a:Lio/reactivex/internal/operators/c/bk$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/c/bk$b;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bk$d;->a:Lio/reactivex/internal/operators/c/bk$b;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/bk$d;->b:Z

    invoke-interface {v0, v1, p1}, Lio/reactivex/internal/operators/c/bk$b;->innerValue(ZLjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 408
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
