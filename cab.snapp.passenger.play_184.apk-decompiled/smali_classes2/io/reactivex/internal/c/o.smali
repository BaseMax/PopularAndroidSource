.class public final Lio/reactivex/internal/c/o;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
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
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/a;

.field d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e/q;Lio/reactivex/e/g;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/c/o;->a:Lio/reactivex/e/q;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/c/o;->b:Lio/reactivex/e/g;

    .line 43
    iput-object p3, p0, Lio/reactivex/internal/c/o;->c:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 104
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/c/o;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lio/reactivex/internal/c/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lio/reactivex/internal/c/o;->d:Z

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/c/o;->c:Lio/reactivex/e/a;

    invoke-interface {v0}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 98
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 75
    iget-boolean v0, p0, Lio/reactivex/internal/c/o;->d:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lio/reactivex/internal/c/o;->d:Z

    .line 81
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/c/o;->b:Lio/reactivex/e/g;

    invoke-interface {v1, p1}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 83
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/c/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/c/o;->a:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/c/o;->dispose()V

    .line 69
    invoke-virtual {p0}, Lio/reactivex/internal/c/o;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 62
    invoke-virtual {p0}, Lio/reactivex/internal/c/o;->dispose()V

    .line 63
    invoke-virtual {p0, p1}, Lio/reactivex/internal/c/o;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
