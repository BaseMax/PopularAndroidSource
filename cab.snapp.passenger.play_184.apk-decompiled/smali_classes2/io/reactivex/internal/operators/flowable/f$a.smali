.class final Lio/reactivex/internal/operators/flowable/f$a;
.super Lio/reactivex/internal/subscriptions/c;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/f;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lorg/b/d;

.field c:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/c;-><init>(Lorg/b/c;)V

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lio/reactivex/e/q;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 103
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/c;->cancel()V

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/f$a;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->h:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Z

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 77
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/f$a;->complete(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 69
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 71
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/f$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lorg/b/d;

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->h:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 56
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
