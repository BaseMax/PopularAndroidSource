.class final Lio/reactivex/internal/operators/flowable/dc$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dc;
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

.field final d:Lio/reactivex/e/e;

.field e:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/e;Lio/reactivex/internal/subscriptions/e;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/e;",
            "Lio/reactivex/internal/subscriptions/e;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dc$a;->a:Lorg/b/c;

    .line 54
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/dc$a;->b:Lio/reactivex/internal/subscriptions/e;

    .line 55
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dc$a;->c:Lorg/b/b;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dc$a;->d:Lio/reactivex/e/e;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dc$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 99
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dc$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/e;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 103
    :cond_1
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/dc$a;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 105
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/dc$a;->e:J

    .line 106
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/dc$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v3, v1, v2}, Lio/reactivex/internal/subscriptions/e;->produced(J)V

    .line 109
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dc$a;->c:Lorg/b/b;

    invoke-interface {v1, p0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    neg-int v0, v0

    .line 111
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/dc$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->d:Lio/reactivex/e/e;

    invoke-interface {v0}, Lio/reactivex/e/e;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/dc$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dc$a;->a:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->e:J

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dc$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/e;->setSubscription(Lorg/b/d;)V

    return-void
.end method
