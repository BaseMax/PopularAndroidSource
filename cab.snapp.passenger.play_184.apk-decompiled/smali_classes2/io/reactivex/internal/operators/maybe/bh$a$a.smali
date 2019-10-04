.class final Lio/reactivex/internal/operators/maybe/bh$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bh$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/b/c;",
        ">;",
        "Lio/reactivex/t<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/bh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bh$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/bh$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/bh$a<",
            "*TU;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 127
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bh$a$a;->a:Lio/reactivex/internal/operators/maybe/bh$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bh$a$a;->a:Lio/reactivex/internal/operators/maybe/bh$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/bh$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bh$a$a;->a:Lio/reactivex/internal/operators/maybe/bh$a;

    .line 1106
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bh$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1109
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bh$a$a;->a:Lio/reactivex/internal/operators/maybe/bh$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/bh$a;->a()V

    return-void
.end method
