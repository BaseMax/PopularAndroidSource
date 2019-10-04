.class final Lio/reactivex/internal/operators/flowable/ak$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ak$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/ak$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ak$a;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ak$a$a;->a:Lio/reactivex/internal/operators/flowable/ak$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ak$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    .line 135
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ak$a$a;->a:Lio/reactivex/internal/operators/flowable/ak$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ak$a;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ak$a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    .line 125
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ak$a$a;->a:Lio/reactivex/internal/operators/flowable/ak$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/ak$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 128
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ak$a$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    .line 115
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 116
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/ak$a$a;->lazySet(Ljava/lang/Object;)V

    .line 117
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 118
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ak$a$a;->a:Lio/reactivex/internal/operators/flowable/ak$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/ak$a;->a()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 107
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 108
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
