.class final Lio/reactivex/internal/operators/flowable/ed$a;
.super Lio/reactivex/internal/subscriptions/c;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ed;
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
.field a:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/c;-><init>(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 74
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/c;->cancel()V

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->a:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/ed$a;->complete(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->h:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->i:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ed$a;->i:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->a:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ed$a;->a:Lorg/b/d;

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ed$a;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 47
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
