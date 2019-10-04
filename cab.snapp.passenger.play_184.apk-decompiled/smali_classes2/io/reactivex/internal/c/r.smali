.class public final Lio/reactivex/internal/c/r;
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
.field final a:Lio/reactivex/internal/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/c/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile d:Z

.field e:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/c/s;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/c/s<",
            "TT;>;I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    .line 48
    iput p2, p0, Lio/reactivex/internal/c/r;->b:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 98
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final fusionMode()I
    .locals 1

    .line 119
    iget v0, p0, Lio/reactivex/internal/c/r;->e:I

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/c/r;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lio/reactivex/internal/c/r;->d:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    invoke-interface {v0, p0}, Lio/reactivex/internal/c/s;->innerComplete(Lio/reactivex/internal/c/r;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/c/s;->innerError(Lio/reactivex/internal/c/r;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iget v0, p0, Lio/reactivex/internal/c/r;->e:I

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/c/s;->innerNext(Lio/reactivex/internal/c/r;Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    invoke-interface {p1}, Lio/reactivex/internal/c/s;->drain()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 53
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x3

    .line 58
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iput v0, p0, Lio/reactivex/internal/c/r;->e:I

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/c/r;->c:Lio/reactivex/internal/b/j;

    .line 62
    iput-boolean v1, p0, Lio/reactivex/internal/c/r;->d:Z

    .line 63
    iget-object p1, p0, Lio/reactivex/internal/c/r;->a:Lio/reactivex/internal/c/s;

    invoke-interface {p1, p0}, Lio/reactivex/internal/c/s;->innerComplete(Lio/reactivex/internal/c/r;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 67
    iput v0, p0, Lio/reactivex/internal/c/r;->e:I

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/c/r;->c:Lio/reactivex/internal/b/j;

    return-void

    .line 73
    :cond_1
    iget p1, p0, Lio/reactivex/internal/c/r;->b:I

    neg-int p1, p1

    invoke-static {p1}, Lio/reactivex/internal/util/o;->createQueue(I)Lio/reactivex/internal/b/j;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/c/r;->c:Lio/reactivex/internal/b/j;

    :cond_2
    return-void
.end method

.method public final queue()Lio/reactivex/internal/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/reactivex/internal/c/r;->c:Lio/reactivex/internal/b/j;

    return-object v0
.end method

.method public final setDone()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lio/reactivex/internal/c/r;->d:Z

    return-void
.end method
