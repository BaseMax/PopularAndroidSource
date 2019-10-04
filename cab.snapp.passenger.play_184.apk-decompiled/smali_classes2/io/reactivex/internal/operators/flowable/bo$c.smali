.class final Lio/reactivex/internal/operators/flowable/bo$c;
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
    name = "c"
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

.field final c:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/bo$b;ZI)V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 453
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$c;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    .line 454
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/bo$c;->b:Z

    .line 455
    iput p3, p0, Lio/reactivex/internal/operators/flowable/bo$c;->c:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 460
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 465
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bo$c;->get()Ljava/lang/Object;

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
    .locals 2

    .line 487
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$c;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/bo$c;->b:Z

    invoke-interface {v0, v1, p0}, Lio/reactivex/internal/operators/flowable/bo$b;->innerClose(ZLio/reactivex/internal/operators/flowable/bo$c;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bo$c;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/bo$b;->innerCloseError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 475
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bo$c;->a:Lio/reactivex/internal/operators/flowable/bo$b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bo$c;->b:Z

    invoke-interface {p1, v0, p0}, Lio/reactivex/internal/operators/flowable/bo$b;->innerClose(ZLio/reactivex/internal/operators/flowable/bo$c;)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 470
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
