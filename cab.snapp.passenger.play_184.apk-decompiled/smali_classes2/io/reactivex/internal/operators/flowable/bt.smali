.class public final Lio/reactivex/internal/operators/flowable/bt;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/bt$a;
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

.field final e:J

.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 39
    iput-wide p5, p0, Lio/reactivex/internal/operators/flowable/bt;->e:J

    .line 40
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/bt;->f:J

    .line 41
    iput-object p9, p0, Lio/reactivex/internal/operators/flowable/bt;->g:Ljava/util/concurrent/TimeUnit;

    .line 42
    iput-object p10, p0, Lio/reactivex/internal/operators/flowable/bt;->b:Lio/reactivex/ah;

    .line 43
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/bt;->c:J

    .line 44
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/bt;->d:J

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

    .line 49
    new-instance v7, Lio/reactivex/internal/operators/flowable/bt$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bt;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/bt;->d:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/bt$a;-><init>(Lorg/b/c;JJ)V

    .line 50
    invoke-interface {p1, v7}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bt;->b:Lio/reactivex/ah;

    .line 54
    instance-of p1, v0, Lio/reactivex/internal/e/s;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 56
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/flowable/bt$a;->setResource(Lio/reactivex/b/c;)V

    .line 57
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bt;->e:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/bt;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bt;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    .line 59
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/bt;->e:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/bt;->f:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/bt;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 60
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/flowable/bt$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method
