.class public final Lio/reactivex/internal/operators/c/dj;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dj$a;
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

.field final e:I

.field final f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 34
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/dj;->b:J

    .line 35
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dj;->c:Ljava/util/concurrent/TimeUnit;

    .line 36
    iput-object p5, p0, Lio/reactivex/internal/operators/c/dj;->d:Lio/reactivex/ah;

    .line 37
    iput p6, p0, Lio/reactivex/internal/operators/c/dj;->e:I

    .line 38
    iput-boolean p7, p0, Lio/reactivex/internal/operators/c/dj;->f:Z

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
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dj;->a:Lio/reactivex/ae;

    new-instance v9, Lio/reactivex/internal/operators/c/dj$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/dj;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/c/dj;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/c/dj;->d:Lio/reactivex/ah;

    iget v7, p0, Lio/reactivex/internal/operators/c/dj;->e:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/c/dj;->f:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/c/dj$a;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-interface {v0, v9}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
