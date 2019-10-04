.class final Lio/reactivex/internal/operators/flowable/dg$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dg;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;"
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

.field final b:Lio/reactivex/internal/subscriptions/e;

.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field f:J


# direct methods
.method constructor <init>(Lorg/b/c;JLio/reactivex/e/q;Lio/reactivex/internal/subscriptions/e;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Lio/reactivex/e/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/subscriptions/e;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    .line 60
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/dg$a;->b:Lio/reactivex/internal/subscriptions/e;

    .line 61
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/dg$a;->c:Lorg/b/b;

    .line 62
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dg$a;->d:Lio/reactivex/e/q;

    .line 63
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dg$a;->e:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 111
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dg$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 114
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dg$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/e;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 118
    :cond_1
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/dg$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 120
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/dg$a;->f:J

    .line 121
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/dg$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v3, v1, v2}, Lio/reactivex/internal/subscriptions/e;->produced(J)V

    .line 124
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dg$a;->c:Lorg/b/b;

    invoke-interface {v1, p0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    neg-int v0, v0

    .line 126
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/dg$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 79
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->e:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 81
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/dg$a;->e:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->d:Lio/reactivex/e/q;

    invoke-interface {v0, p1}, Lio/reactivex/e/q;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 98
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dg$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 90
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    new-instance v2, Lio/reactivex/c/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->f:J

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dg$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/e;->setSubscription(Lorg/b/d;)V

    return-void
.end method
