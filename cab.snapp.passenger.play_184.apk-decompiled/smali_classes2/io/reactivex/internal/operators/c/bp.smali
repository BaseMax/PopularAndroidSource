.class public final Lio/reactivex/internal/operators/c/bp;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/bp$a;
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

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 32
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/bp;->b:J

    .line 33
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/bp;->c:J

    .line 34
    iput-object p5, p0, Lio/reactivex/internal/operators/c/bp;->d:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p6, p0, Lio/reactivex/internal/operators/c/bp;->a:Lio/reactivex/ah;

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

    .line 40
    new-instance v7, Lio/reactivex/internal/operators/c/bp$a;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/c/bp$a;-><init>(Lio/reactivex/ag;)V

    .line 41
    invoke-interface {p1, v7}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bp;->a:Lio/reactivex/ah;

    .line 45
    instance-of p1, v0, Lio/reactivex/internal/e/s;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v0

    .line 47
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/c/bp$a;->setResource(Lio/reactivex/b/c;)V

    .line 48
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bp;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/bp;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/bp;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    .line 50
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bp;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/bp;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/bp;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/ah;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    .line 51
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/c/bp$a;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method
