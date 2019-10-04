.class final Lio/reactivex/internal/operators/d/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/i;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/d/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/d/i$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field volatile e:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/d/i$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/i$c<",
            "TT;>;I)V"
        }
    .end annotation

    .line 509
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 510
    iput-object p1, p0, Lio/reactivex/internal/operators/d/i$a;->a:Lio/reactivex/internal/operators/d/i$c;

    .line 511
    iput p2, p0, Lio/reactivex/internal/operators/d/i$a;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 512
    iput p2, p0, Lio/reactivex/internal/operators/d/i$a;->c:I

    return-void
.end method


# virtual methods
.method final a()Lio/reactivex/internal/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/d/i$a;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 563
    iput-object v0, p0, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    :cond_0
    return-object v0
.end method

.method public final cancel()Z
    .locals 1

    .line 556
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 532
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$a;->a:Lio/reactivex/internal/operators/d/i$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/d/i$c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$a;->a:Lio/reactivex/internal/operators/d/i$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/d/i$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$a;->a:Lio/reactivex/internal/operators/d/i$c;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/d/i$c;->onNext(Lio/reactivex/internal/operators/d/i$a;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 517
    iget v0, p0, Lio/reactivex/internal/operators/d/i$a;->b:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method

.method public final request(J)V
    .locals 3

    .line 546
    iget-wide v0, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    add-long/2addr v0, p1

    .line 547
    iget p1, p0, Lio/reactivex/internal/operators/d/i$a;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 548
    iput-wide p1, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    .line 549
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/d;

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 551
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    return-void
.end method

.method public final requestOne()V
    .locals 5

    .line 536
    iget-wide v0, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 537
    iget v2, p0, Lio/reactivex/internal/operators/d/i$a;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 538
    iput-wide v2, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    .line 539
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/d;

    invoke-interface {v2, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 541
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/d/i$a;->d:J

    return-void
.end method
