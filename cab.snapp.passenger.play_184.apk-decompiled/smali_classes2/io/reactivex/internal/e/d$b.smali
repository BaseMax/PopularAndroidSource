.class final Lio/reactivex/internal/e/d$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/disposables/f;

.field final b:Lio/reactivex/internal/disposables/f;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 423
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/d$b;->a:Lio/reactivex/internal/disposables/f;

    .line 424
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/d$b;->b:Lio/reactivex/internal/disposables/f;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0}, Lio/reactivex/internal/e/d$b;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lio/reactivex/internal/e/d$b;->a:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 450
    iget-object v0, p0, Lio/reactivex/internal/e/d$b;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    :cond_0
    return-void
.end method

.method public final getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lio/reactivex/internal/e/d$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-object v0

    .line 457
    :cond_0
    sget-object v0, Lio/reactivex/internal/a/a;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 443
    invoke-virtual {p0}, Lio/reactivex/internal/e/d$b;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 3

    .line 429
    invoke-virtual {p0}, Lio/reactivex/internal/e/d$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 432
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {p0, v1}, Lio/reactivex/internal/e/d$b;->lazySet(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lio/reactivex/internal/e/d$b;->a:Lio/reactivex/internal/disposables/f;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->lazySet(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lio/reactivex/internal/e/d$b;->b:Lio/reactivex/internal/disposables/f;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->lazySet(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 434
    invoke-virtual {p0, v1}, Lio/reactivex/internal/e/d$b;->lazySet(Ljava/lang/Object;)V

    .line 435
    iget-object v1, p0, Lio/reactivex/internal/e/d$b;->a:Lio/reactivex/internal/disposables/f;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/disposables/f;->lazySet(Ljava/lang/Object;)V

    .line 436
    iget-object v1, p0, Lio/reactivex/internal/e/d$b;->b:Lio/reactivex/internal/disposables/f;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/disposables/f;->lazySet(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method
