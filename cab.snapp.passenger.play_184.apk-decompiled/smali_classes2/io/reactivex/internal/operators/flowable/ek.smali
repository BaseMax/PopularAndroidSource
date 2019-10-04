.class public final Lio/reactivex/internal/operators/flowable/ek;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ek$a;
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

    .line 50
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 51
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ek;->c:J

    .line 52
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/ek;->d:Ljava/util/concurrent/TimeUnit;

    .line 53
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/ek;->e:Lio/reactivex/ah;

    .line 54
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/ek;->f:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ek;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/ek$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ek;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ek;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ek;->e:Lio/reactivex/ah;

    invoke-virtual {v1}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/ek;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/ek$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Z)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
