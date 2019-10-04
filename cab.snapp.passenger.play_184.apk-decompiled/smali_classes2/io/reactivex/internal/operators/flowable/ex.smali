.class public final Lio/reactivex/internal/operators/flowable/ex;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/ex$c;,
        Lio/reactivex/internal/operators/flowable/ex$a;,
        Lio/reactivex/internal/operators/flowable/ex$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/ah;

.field final g:J

.field final h:I

.field final i:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "JIZ)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 47
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/ex;->c:J

    .line 48
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/ex;->d:J

    .line 49
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/ex;->e:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/ex;->f:Lio/reactivex/ah;

    .line 51
    iput-wide p8, p0, Lio/reactivex/internal/operators/flowable/ex;->g:J

    .line 52
    iput p10, p0, Lio/reactivex/internal/operators/flowable/ex;->h:I

    .line 53
    iput-boolean p11, p0, Lio/reactivex/internal/operators/flowable/ex;->i:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 58
    new-instance v1, Lio/reactivex/k/d;

    invoke-direct {v1, p1}, Lio/reactivex/k/d;-><init>(Lorg/b/c;)V

    .line 60
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/ex;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 61
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex;->g:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/ex$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ex;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ex;->f:Lio/reactivex/ah;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/ex;->h:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/ex$b;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)V

    invoke-virtual {p1, v7}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex;->b:Lio/reactivex/j;

    new-instance v10, Lio/reactivex/internal/operators/flowable/ex$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ex;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ex;->f:Lio/reactivex/ah;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/ex;->h:I

    iget-wide v7, p0, Lio/reactivex/internal/operators/flowable/ex;->g:J

    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/ex;->i:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/flowable/ex$a;-><init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IJZ)V

    invoke-virtual {p1, v10}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void

    .line 73
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ex;->b:Lio/reactivex/j;

    new-instance v9, Lio/reactivex/internal/operators/flowable/ex$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/ex;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/ex;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/ex;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex;->f:Lio/reactivex/ah;

    .line 74
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/flowable/ex;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/flowable/ex$c;-><init>(Lorg/b/c;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;I)V

    .line 73
    invoke-virtual {p1, v9}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
