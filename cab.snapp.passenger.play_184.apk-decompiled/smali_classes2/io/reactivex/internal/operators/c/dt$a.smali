.class final Lio/reactivex/internal/operators/c/dt$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dt$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
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

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/c/dt$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/dt$a<",
            "TT;TU;>.a;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/util/b;


# direct methods
.method constructor <init>(Lio/reactivex/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance p1, Lio/reactivex/internal/operators/c/dt$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/c/dt$a$a;-><init>(Lio/reactivex/internal/operators/c/dt$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dt$a;->c:Lio/reactivex/internal/operators/c/dt$a$a;

    .line 58
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->c:Lio/reactivex/internal/operators/c/dt$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->c:Lio/reactivex/internal/operators/c/dt$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/i;->onComplete(Lio/reactivex/ag;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->c:Lio/reactivex/internal/operators/c/dt$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/i;->onNext(Lio/reactivex/ag;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
