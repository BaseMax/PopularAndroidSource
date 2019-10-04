.class public final Lio/reactivex/internal/operators/flowable/dv;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dv$a;
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

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 35
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dv;->c:J

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/dv;->d:Ljava/util/concurrent/TimeUnit;

    .line 37
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/dv;->e:Lio/reactivex/ah;

    .line 38
    iput p6, p0, Lio/reactivex/internal/operators/flowable/dv;->f:I

    .line 39
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/dv;->g:Z

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

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dv;->b:Lio/reactivex/j;

    new-instance v9, Lio/reactivex/internal/operators/flowable/dv$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/dv;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/dv;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/dv;->e:Lio/reactivex/ah;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/dv;->f:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/dv;->g:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/flowable/dv$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-virtual {v0, v9}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
