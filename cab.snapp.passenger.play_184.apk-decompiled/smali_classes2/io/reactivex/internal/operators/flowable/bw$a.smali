.class final Lio/reactivex/internal/operators/flowable/bw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bw;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
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

.field b:Lorg/b/d;

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bw$a;->a:Lio/reactivex/t;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 57
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

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

    .line 90
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/bw$a;->c:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bw$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->c:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bw$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bw$a;->b:Lorg/b/d;

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bw$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 72
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
