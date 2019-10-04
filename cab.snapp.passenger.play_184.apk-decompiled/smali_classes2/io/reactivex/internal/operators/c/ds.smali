.class public final Lio/reactivex/internal/operators/c/ds;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ds$a;
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

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 35
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ds;->b:J

    .line 36
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/ds;->c:J

    .line 37
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ds;->d:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p7, p0, Lio/reactivex/internal/operators/c/ds;->e:Lio/reactivex/ah;

    .line 39
    iput p8, p0, Lio/reactivex/internal/operators/c/ds;->f:I

    .line 40
    iput-boolean p9, p0, Lio/reactivex/internal/operators/c/ds;->g:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ds;->a:Lio/reactivex/ae;

    new-instance v11, Lio/reactivex/internal/operators/c/ds$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/ds;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ds;->c:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/ds;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/c/ds;->e:Lio/reactivex/ah;

    iget v9, p0, Lio/reactivex/internal/operators/c/ds;->f:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/c/ds;->g:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/c/ds$a;-><init>(Lio/reactivex/ag;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-interface {v0, v11}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
