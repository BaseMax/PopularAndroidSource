.class final Lio/reactivex/internal/operators/c/v$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/c/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/v$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/internal/operators/c/v$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 495
    iput-object p1, p0, Lio/reactivex/internal/operators/c/v$a$a;->a:Lio/reactivex/ag;

    .line 496
    iput-object p2, p0, Lio/reactivex/internal/operators/c/v$a$a;->b:Lio/reactivex/internal/operators/c/v$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 525
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a$a;->b:Lio/reactivex/internal/operators/c/v$a;

    const/4 v1, 0x0

    .line 526
    iput-boolean v1, v0, Lio/reactivex/internal/operators/c/v$a;->i:Z

    .line 527
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a$a;->b:Lio/reactivex/internal/operators/c/v$a;

    .line 512
    iget-object v1, v0, Lio/reactivex/internal/operators/c/v$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    iget-boolean p1, v0, Lio/reactivex/internal/operators/c/v$a;->f:Z

    if-nez p1, :cond_0

    .line 514
    iget-object p1, v0, Lio/reactivex/internal/operators/c/v$a;->h:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 516
    iput-boolean p1, v0, Lio/reactivex/internal/operators/c/v$a;->i:Z

    .line 517
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/v$a;->a()V

    return-void

    .line 519
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lio/reactivex/internal/operators/c/v$a$a;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 501
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
