.class final Lio/reactivex/internal/operators/flowable/dd$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field d:Lio/reactivex/internal/operators/flowable/dd$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/dd$c<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->a:Lorg/b/b;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dd$c;->cancel()V

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/dd$c;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/dd$c;->cancel()V

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/dd$c;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dd$b;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 96
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne p1, v0, :cond_1

    return-void

    .line 100
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->a:Lorg/b/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->d:Lio/reactivex/internal/operators/flowable/dd$c;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dd$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lorg/b/d;)Z

    return-void
.end method

.method public final request(J)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dd$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dd$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
