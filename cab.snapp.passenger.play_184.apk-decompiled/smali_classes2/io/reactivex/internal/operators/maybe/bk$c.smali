.class final Lio/reactivex/internal/operators/maybe/bk$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bk;
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
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/bk$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bk$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/bk$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/bk$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bk$c;->a:Lio/reactivex/internal/operators/maybe/bk$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 172
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bk$c;->a:Lio/reactivex/internal/operators/maybe/bk$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/bk$b;->otherComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bk$c;->a:Lio/reactivex/internal/operators/maybe/bk$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/bk$b;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/bk$c;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 162
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bk$c;->a:Lio/reactivex/internal/operators/maybe/bk$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/bk$b;->otherComplete()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 156
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
