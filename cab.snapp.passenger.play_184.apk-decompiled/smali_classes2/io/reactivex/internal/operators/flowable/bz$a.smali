.class final Lio/reactivex/internal/operators/flowable/bz$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bz;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:J

.field c:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    .line 58
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    .line 59
    invoke-virtual {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/bz$a;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 100
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 101
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 90
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 91
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 79
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    .line 80
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-interface {v4, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->c:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 83
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 5

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->c:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/bz$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 66
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 67
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/b/c;)V

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->c:Lorg/b/d;

    .line 70
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 6

    .line 108
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bz$a;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v2, p1

    :goto_0
    sub-long v4, v0, v2

    .line 121
    invoke-virtual {p0, v0, v1, v4, v5}, Lio/reactivex/internal/operators/flowable/bz$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bz$a;->c:Lorg/b/d;

    invoke-interface {p1, v2, v3}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
