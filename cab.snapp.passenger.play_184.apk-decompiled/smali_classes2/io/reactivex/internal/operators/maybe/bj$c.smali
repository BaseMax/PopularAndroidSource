.class final Lio/reactivex/internal/operators/maybe/bj$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
        "Lio/reactivex/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/bj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bj$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/bj$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/bj$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bj$c;->a:Lio/reactivex/internal/operators/maybe/bj$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bj$c;->a:Lio/reactivex/internal/operators/maybe/bj$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/bj$b;->otherComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bj$c;->a:Lio/reactivex/internal/operators/maybe/bj$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/bj$b;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bj$c;->a:Lio/reactivex/internal/operators/maybe/bj$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/bj$b;->otherComplete()V

    return-void
.end method
