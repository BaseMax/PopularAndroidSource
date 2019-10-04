.class public final Lio/reactivex/internal/operators/flowable/ee;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ee$a;
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

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/ah;

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 38
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ee;->c:J

    .line 39
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/ee;->d:J

    .line 40
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/ee;->e:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/ee;->f:Lio/reactivex/ah;

    .line 42
    iput p8, p0, Lio/reactivex/internal/operators/flowable/ee;->g:I

    .line 43
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/ee;->h:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ee;->b:Lio/reactivex/j;

    new-instance v11, Lio/reactivex/internal/operators/flowable/ee$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ee;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/ee;->d:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ee;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/ee;->f:Lio/reactivex/ah;

    iget v9, p0, Lio/reactivex/internal/operators/flowable/ee;->g:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/ee;->h:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/flowable/ee$a;-><init>(Lorg/b/c;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V

    invoke-virtual {v0, v11}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
