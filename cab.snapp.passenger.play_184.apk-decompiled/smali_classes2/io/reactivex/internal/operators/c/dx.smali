.class public final Lio/reactivex/internal/operators/c/dx;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dx$a;
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
.method public constructor <init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 48
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/dx;->b:J

    .line 49
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dx;->c:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-object p5, p0, Lio/reactivex/internal/operators/c/dx;->d:Lio/reactivex/ah;

    .line 51
    iput-boolean p6, p0, Lio/reactivex/internal/operators/c/dx;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dx;->a:Lio/reactivex/ae;

    new-instance v8, Lio/reactivex/internal/operators/c/dx$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/dx;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/c/dx;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dx;->d:Lio/reactivex/ah;

    invoke-virtual {v1}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/internal/operators/c/dx;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/c/dx$a;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
