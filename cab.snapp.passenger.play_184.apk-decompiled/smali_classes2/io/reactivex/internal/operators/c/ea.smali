.class public final Lio/reactivex/internal/operators/c/ea;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ea$d;,
        Lio/reactivex/internal/operators/c/ea$a;,
        Lio/reactivex/internal/operators/c/ea$b;,
        Lio/reactivex/internal/operators/c/ea$e;,
        Lio/reactivex/internal/operators/c/ea$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Lio/reactivex/ae<",
            "+TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 35
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ea;->b:J

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ea;->c:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ea;->d:Lio/reactivex/ah;

    .line 38
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ea;->e:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea;->e:Lio/reactivex/ae;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/c/ea$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ea;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/ea;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ea;->d:Lio/reactivex/ah;

    invoke-virtual {v3}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/c/ea$c;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V

    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 46
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/c/ea$c;->a(J)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 49
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/ea$b;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ea;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/ea;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/ea;->d:Lio/reactivex/ah;

    invoke-virtual {v3}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/internal/operators/c/ea;->e:Lio/reactivex/ae;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/internal/operators/c/ea$b;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Lio/reactivex/ae;)V

    .line 50
    invoke-interface {p1, v0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/c/ea$b;->a(J)V

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ea;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
