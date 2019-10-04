.class public final Lio/reactivex/internal/operators/c/cx;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cx$a;,
        Lio/reactivex/internal/operators/c/cx$b;,
        Lio/reactivex/internal/operators/c/cx$c;
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

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 33
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/cx;->b:J

    .line 34
    iput-object p4, p0, Lio/reactivex/internal/operators/c/cx;->c:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p5, p0, Lio/reactivex/internal/operators/c/cx;->d:Lio/reactivex/ah;

    .line 36
    iput-boolean p6, p0, Lio/reactivex/internal/operators/c/cx;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    new-instance v1, Lio/reactivex/observers/d;

    invoke-direct {v1, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 42
    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/cx;->e:Z

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cx;->a:Lio/reactivex/ae;

    new-instance v6, Lio/reactivex/internal/operators/c/cx$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cx;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/cx;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/cx;->d:Lio/reactivex/ah;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/cx$a;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-interface {p1, v6}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 45
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cx;->a:Lio/reactivex/ae;

    new-instance v6, Lio/reactivex/internal/operators/c/cx$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/cx;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/cx;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/cx;->d:Lio/reactivex/ah;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/cx$b;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-interface {p1, v6}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
