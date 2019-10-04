.class final Lio/reactivex/internal/operators/c/dt$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/ag<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/dt$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/dt$a;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dt$a$a;->a:Lio/reactivex/internal/operators/c/dt$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a$a;->a:Lio/reactivex/internal/operators/c/dt$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/dt$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dt$a$a;->a:Lio/reactivex/internal/operators/c/dt$a;

    .line 1095
    iget-object v1, v0, Lio/reactivex/internal/operators/c/dt$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 1096
    iget-object v1, v0, Lio/reactivex/internal/operators/c/dt$a;->a:Lio/reactivex/ag;

    iget-object v2, v0, Lio/reactivex/internal/operators/c/dt$a;->d:Lio/reactivex/internal/util/b;

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/internal/util/i;->onError(Lio/reactivex/ag;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/b;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 117
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dt$a$a;->a:Lio/reactivex/internal/operators/c/dt$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/dt$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method
