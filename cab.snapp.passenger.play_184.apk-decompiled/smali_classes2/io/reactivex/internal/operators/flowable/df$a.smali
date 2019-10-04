.class final Lio/reactivex/internal/operators/flowable/df$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/df;
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

.field final d:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/d;Lio/reactivex/internal/subscriptions/e;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/subscriptions/e;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/df$a;->a:Lorg/b/c;

    .line 58
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/df$a;->b:Lio/reactivex/internal/subscriptions/e;

    .line 59
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/df$a;->c:Lorg/b/b;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/df$a;->d:Lio/reactivex/e/d;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/df$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 103
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/df$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v1}, Lio/reactivex/internal/subscriptions/e;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 107
    :cond_1
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/df$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 109
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/df$a;->f:J

    .line 110
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/df$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v3, v1, v2}, Lio/reactivex/internal/subscriptions/e;->produced(J)V

    .line 113
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/df$a;->c:Lorg/b/b;

    invoke-interface {v1, p0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    neg-int v0, v0

    .line 115
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/df$a;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x1

    .line 78
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/df$a;->d:Lio/reactivex/e/d;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/df$a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/reactivex/internal/operators/flowable/df$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/reactivex/e/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/df$a;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 80
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 81
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/df$a;->a:Lorg/b/c;

    new-instance v3, Lio/reactivex/c/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/c/a;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->f:J

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/df$a;->b:Lio/reactivex/internal/subscriptions/e;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/e;->setSubscription(Lorg/b/d;)V

    return-void
.end method
