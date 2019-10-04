.class final Lio/reactivex/internal/operators/maybe/m$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->c:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/m$b;->a:Lio/reactivex/t;

    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/m$b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    .line 129
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 130
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/m$b;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/m$b;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 123
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
