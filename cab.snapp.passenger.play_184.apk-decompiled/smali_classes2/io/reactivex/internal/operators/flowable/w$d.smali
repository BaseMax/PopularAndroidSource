.class final Lio/reactivex/internal/operators/flowable/w$d;
.super Lio/reactivex/internal/subscriptions/e;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/e;",
        "Lio/reactivex/o<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/w$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/w$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/w$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/w$e<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 577
    invoke-direct {p0, v0}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 578
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w$d;->a:Lio/reactivex/internal/operators/flowable/w$e;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .line 607
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 610
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    .line 611
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/w$d;->produced(J)V

    .line 614
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->a:Lio/reactivex/internal/operators/flowable/w$e;

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/w$e;->innerComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 595
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 598
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    .line 599
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/w$d;->produced(J)V

    .line 602
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->a:Lio/reactivex/internal/operators/flowable/w$e;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/w$e;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 588
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->b:J

    .line 590
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w$d;->a:Lio/reactivex/internal/operators/flowable/w$e;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/w$e;->innerNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/w$d;->setSubscription(Lorg/b/d;)V

    return-void
.end method
