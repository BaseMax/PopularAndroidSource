.class final Lio/reactivex/internal/operators/flowable/bo$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/bo$b;

.field final b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/bo$b;Z)V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 403
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$d;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    .line 404
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/bo$d;->b:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 409
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 414
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bo$d;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 434
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$d;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    invoke-interface {v0, p0}, Lio/reactivex/internal/operators/flowable/bo$b;->innerComplete(Lio/reactivex/internal/operators/flowable/bo$d;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$d;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/bo$b;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$d;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/bo$d;->b:Z

    invoke-interface {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/bo$b;->innerValue(ZLjava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 419
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
