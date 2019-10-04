.class final Lio/reactivex/internal/operators/e/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ao<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lorg/b/d;


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;",
            "Lio/reactivex/ao<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/e/i$a;->a:Lio/reactivex/al;

    .line 59
    iput-object p2, p0, Lio/reactivex/internal/operators/e/i$a;->b:Lio/reactivex/ao;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/e/i$a;->d:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 101
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/e/i$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    .line 91
    iget-boolean v0, p0, Lio/reactivex/internal/operators/e/i$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lio/reactivex/internal/operators/e/i$a;->c:Z

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/e/i$a;->b:Lio/reactivex/ao;

    new-instance v1, Lio/reactivex/internal/c/y;

    iget-object v2, p0, Lio/reactivex/internal/operators/e/i$a;->a:Lio/reactivex/al;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/c/y;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/al;)V

    invoke-interface {v0, v1}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lio/reactivex/internal/operators/e/i$a;->c:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lio/reactivex/internal/operators/e/i$a;->c:Z

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/e/i$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lio/reactivex/internal/operators/e/i$a;->d:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/operators/e/i$a;->onComplete()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/e/i$a;->d:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/e/i$a;->d:Lorg/b/d;

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/e/i$a;->a:Lio/reactivex/al;

    invoke-interface {v0, p0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 69
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
