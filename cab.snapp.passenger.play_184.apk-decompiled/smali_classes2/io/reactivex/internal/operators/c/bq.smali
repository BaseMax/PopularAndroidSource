.class public final Lio/reactivex/internal/operators/c/bq;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ah;

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 34
    iput-wide p5, p0, Lio/reactivex/internal/operators/c/bq;->d:J

    .line 35
    iput-wide p7, p0, Lio/reactivex/internal/operators/c/bq;->e:J

    .line 36
    iput-object p9, p0, Lio/reactivex/internal/operators/c/bq;->f:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p10, p0, Lio/reactivex/internal/operators/c/bq;->a:Lio/reactivex/ah;

    .line 38
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/bq;->b:J

    .line 39
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/bq;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 44
    new-instance v7, Lio/reactivex/internal/operators/c/bq$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bq;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/bq;->c:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/bq$a;-><init>(Lio/reactivex/ag;JJ)V

    .line 45
    invoke-interface {p1, v7}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bq;->a:Lio/reactivex/ah;

    .line 49
    instance-of p1, v0, Lio/reactivex/internal/e/s;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 51
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/c/bq$a;->setResource(Lio/reactivex/b/c;)V

    .line 52
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bq;->d:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/bq;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/bq;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    .line 54
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bq;->d:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/bq;->e:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/bq;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 55
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/c/bq$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method
