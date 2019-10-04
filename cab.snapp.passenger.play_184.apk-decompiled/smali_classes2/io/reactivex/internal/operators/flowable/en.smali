.class public final Lio/reactivex/internal/operators/flowable/en;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/en$d;,
        Lio/reactivex/internal/operators/flowable/en$a;,
        Lio/reactivex/internal/operators/flowable/en$b;,
        Lio/reactivex/internal/operators/flowable/en$e;,
        Lio/reactivex/internal/operators/flowable/en$c;
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

.field final f:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 37
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/en;->c:J

    .line 38
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/en;->d:Ljava/util/concurrent/TimeUnit;

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/en;->e:Lio/reactivex/ah;

    .line 40
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/en;->f:Lorg/b/b;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en;->f:Lorg/b/b;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lio/reactivex/internal/operators/flowable/en$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/en;->c:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/en;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/en;->e:Lio/reactivex/ah;

    invoke-virtual {v3}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/flowable/en$c;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V

    .line 47
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 48
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/en$c;->a(J)V

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 51
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/en$b;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/en;->c:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/en;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/en;->e:Lio/reactivex/ah;

    invoke-virtual {v3}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/en;->f:Lorg/b/b;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/internal/operators/flowable/en$b;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Lorg/b/b;)V

    .line 52
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/en$b;->a(J)V

    .line 54
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
