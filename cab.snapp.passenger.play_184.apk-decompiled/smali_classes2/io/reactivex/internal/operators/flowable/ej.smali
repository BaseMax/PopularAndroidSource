.class public final Lio/reactivex/internal/operators/flowable/ej;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ej$a;
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


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ej;->c:J

    .line 39
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ej;->d:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ej;->e:Lio/reactivex/ah;

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

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ej;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/ej$a;

    new-instance v2, Lio/reactivex/k/d;

    invoke-direct {v2, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ej;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ej;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ej;->e:Lio/reactivex/ah;

    .line 47
    invoke-virtual {p1}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/ej$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V

    .line 45
    invoke-virtual {v0, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
