.class public final Lio/reactivex/internal/operators/flowable/aj;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/aj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 33
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/aj;->c:J

    .line 34
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/aj;->d:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/aj;->e:Lio/reactivex/ah;

    .line 36
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/aj;->f:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/aj;->f:Z

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lio/reactivex/k/d;

    invoke-direct {v0, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 48
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aj;->e:Lio/reactivex/ah;

    invoke-virtual {p1}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v6

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/aj;->b:Lio/reactivex/j;

    new-instance v0, Lio/reactivex/internal/operators/flowable/aj$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/aj;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/aj;->d:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/aj;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/aj$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
