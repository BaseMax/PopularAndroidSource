.class final Lio/reactivex/internal/operators/flowable/dr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dr;
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

.field c:Z

.field d:Ljava/lang/Object;
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 111
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

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

    .line 94
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    .line 98
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    .line 88
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->c:Z

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 74
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    .line 75
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 78
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dr$a;->b:Lorg/b/d;

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dr$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 62
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
