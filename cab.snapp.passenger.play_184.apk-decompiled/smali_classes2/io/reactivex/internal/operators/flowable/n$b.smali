.class final Lio/reactivex/internal/operators/flowable/n$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
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
.field final a:Lio/reactivex/internal/operators/flowable/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/n$a<",
            "TT;TC;**>;"
        }
    .end annotation
.end field

.field final b:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/n$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/n$a<",
            "TT;TC;**>;J)V"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 373
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$b;->a:Lio/reactivex/internal/operators/flowable/n$a;

    .line 374
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/n$b;->b:J

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 412
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 417
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$b;->get()Ljava/lang/Object;

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
    .locals 3

    .line 404
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 405
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/n$b;->lazySet(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$b;->a:Lio/reactivex/internal/operators/flowable/n$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/n$b;->b:J

    invoke-virtual {v0, p0, v1, v2}, Lio/reactivex/internal/operators/flowable/n$a;->a(Lio/reactivex/internal/operators/flowable/n$b;J)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 395
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/n$b;->lazySet(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$b;->a:Lio/reactivex/internal/operators/flowable/n$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/n$a;->a(Lio/reactivex/b/c;Ljava/lang/Throwable;)V

    return-void

    .line 398
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    .line 384
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    .line 385
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 386
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/n$b;->lazySet(Ljava/lang/Object;)V

    .line 387
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 388
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n$b;->a:Lio/reactivex/internal/operators/flowable/n$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/n$b;->b:J

    invoke-virtual {p1, p0, v0, v1}, Lio/reactivex/internal/operators/flowable/n$a;->a(Lio/reactivex/internal/operators/flowable/n$b;J)V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 379
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method
