.class final Lio/reactivex/internal/operators/maybe/bi$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/bi$a;
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
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/bi$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/bi$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/bi$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/bi$a<",
            "*TU;>;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/bi$a$a;->a:Lio/reactivex/internal/operators/maybe/bi$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bi$a$a;->a:Lio/reactivex/internal/operators/maybe/bi$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/bi$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/bi$a$a;->a:Lio/reactivex/internal/operators/maybe/bi$a;

    .line 1109
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/bi$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1112
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 140
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/bi$a$a;->a:Lio/reactivex/internal/operators/maybe/bi$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/bi$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 135
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
