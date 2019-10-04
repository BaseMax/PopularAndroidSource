.class public final Lio/reactivex/internal/operators/c/ch;
.super Lio/reactivex/f/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/disposables/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ch$a;,
        Lio/reactivex/internal/operators/c/ch$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/f/a<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/e;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ch$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lio/reactivex/f/a;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ch;->a:Lio/reactivex/ae;

    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final connect(Lio/reactivex/e/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 57
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ch$b;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ch$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/c/ch$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/c/ch$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 61
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 67
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ch$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/c/ch$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 72
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 79
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ch;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 75
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final resetIf(Lio/reactivex/b/c;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/c/ch$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final source()Lio/reactivex/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch;->a:Lio/reactivex/ae;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ch$b;

    if-nez v0, :cond_1

    .line 91
    new-instance v1, Lio/reactivex/internal/operators/c/ch$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/c/ch$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 92
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ch;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 100
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/c/ch$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/c/ch$a;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/ch$b;)V

    .line 101
    invoke-interface {p1, v1}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/ch$b;->add(Lio/reactivex/internal/operators/c/ch$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v1}, Lio/reactivex/internal/operators/c/ch$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/ch$b;->remove(Lio/reactivex/internal/operators/c/ch$a;)V

    :cond_2
    return-void

    .line 109
    :cond_3
    iget-object v0, v0, Lio/reactivex/internal/operators/c/ch$b;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 111
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 113
    :cond_4
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method
