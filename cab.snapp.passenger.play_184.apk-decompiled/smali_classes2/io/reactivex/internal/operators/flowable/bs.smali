.class public final Lio/reactivex/internal/operators/flowable/bs;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/ah;

.field final c:J

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 37
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/bs;->c:J

    .line 38
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/bs;->d:J

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/bs;->e:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/bs;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 45
    new-instance v7, Lio/reactivex/internal/operators/flowable/bs$a;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/flowable/bs$a;-><init>(Lorg/b/c;)V

    .line 46
    invoke-interface {p1, v7}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bs;->b:Lio/reactivex/ah;

    .line 50
    instance-of p1, v0, Lio/reactivex/internal/e/s;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 52
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/flowable/bs$a;->setResource(Lio/reactivex/b/c;)V

    .line 53
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bs;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/bs;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bs;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    .line 55
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bs;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/bs;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bs;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 56
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/flowable/bs$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method
