.class final Lio/reactivex/internal/operators/c/cq$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;"
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

.field final b:Lio/reactivex/internal/disposables/f;

.field final c:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field d:J


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLio/reactivex/internal/disposables/f;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cq$a;->a:Lio/reactivex/ag;

    .line 48
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cq$a;->b:Lio/reactivex/internal/disposables/f;

    .line 49
    iput-object p5, p0, Lio/reactivex/internal/operators/c/cq$a;->c:Lio/reactivex/ae;

    .line 50
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cq$a;->d:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cq$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 88
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cq$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/f;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cq$a;->c:Lio/reactivex/ae;

    invoke-interface {v1, p0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    neg-int v0, v0

    .line 93
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/cq$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 70
    iget-wide v0, p0, Lio/reactivex/internal/operators/c/cq$a;->d:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 72
    iput-wide v2, p0, Lio/reactivex/internal/operators/c/cq$a;->d:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/cq$a;->a()V

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cq$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cq$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
