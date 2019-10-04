.class final Lio/reactivex/internal/operators/flowable/cw$a;
.super Lio/reactivex/internal/subscriptions/c;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/c<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field b:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/c;-><init>(Lorg/b/c;)V

    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cw$a;->a:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 116
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/c;->cancel()V

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 118
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 104
    :cond_0
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/cw$a;->complete(Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->h:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    .line 92
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 95
    :cond_0
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->i:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cw$a;->i:Ljava/lang/Object;

    return-void

    .line 80
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/cw$a;->a:Lio/reactivex/e/c;

    invoke-interface {v1, v0, p1}, Lio/reactivex/e/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cw$a;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cw$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cw$a;->b:Lorg/b/d;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cw$a;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
