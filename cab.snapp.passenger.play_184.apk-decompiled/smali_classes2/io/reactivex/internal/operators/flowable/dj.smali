.class public final Lio/reactivex/internal/operators/flowable/dj;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dj$a;,
        Lio/reactivex/internal/operators/flowable/dj$b;,
        Lio/reactivex/internal/operators/flowable/dj$c;
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

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 37
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dj;->c:J

    .line 38
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dj;->d:Ljava/util/concurrent/TimeUnit;

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/dj;->e:Lio/reactivex/ah;

    .line 40
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/dj;->f:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    new-instance v1, Lio/reactivex/k/d;

    invoke-direct {v1, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    .line 46
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/dj;->f:Z

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dj;->b:Lio/reactivex/j;

    new-instance v6, Lio/reactivex/internal/operators/flowable/dj$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/dj;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/dj;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/dj;->e:Lio/reactivex/ah;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/dj$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-virtual {p1, v6}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dj;->b:Lio/reactivex/j;

    new-instance v6, Lio/reactivex/internal/operators/flowable/dj$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/dj;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/dj;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/dj;->e:Lio/reactivex/ah;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/dj$b;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-virtual {p1, v6}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
