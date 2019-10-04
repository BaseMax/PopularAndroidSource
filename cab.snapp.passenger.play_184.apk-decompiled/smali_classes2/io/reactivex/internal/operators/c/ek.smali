.class public final Lio/reactivex/internal/operators/c/ek;
.super Lio/reactivex/internal/operators/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ek$c;,
        Lio/reactivex/internal/operators/c/ek$a;,
        Lio/reactivex/internal/operators/c/ek$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:J

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ae;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "JIZ)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/a;-><init>(Lio/reactivex/ae;)V

    .line 46
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ek;->b:J

    .line 47
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/ek;->c:J

    .line 48
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ek;->d:Ljava/util/concurrent/TimeUnit;

    .line 49
    iput-object p7, p0, Lio/reactivex/internal/operators/c/ek;->e:Lio/reactivex/ah;

    .line 50
    iput-wide p8, p0, Lio/reactivex/internal/operators/c/ek;->f:J

    .line 51
    iput p10, p0, Lio/reactivex/internal/operators/c/ek;->g:I

    .line 52
    iput-boolean p11, p0, Lio/reactivex/internal/operators/c/ek;->h:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 57
    new-instance v1, Lio/reactivex/observers/d;

    invoke-direct {v1, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/ag;)V

    .line 59
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/ek;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 60
    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek;->f:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek;->a:Lio/reactivex/ae;

    new-instance v7, Lio/reactivex/internal/operators/c/ek$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/ek;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ek;->e:Lio/reactivex/ah;

    iget v6, p0, Lio/reactivex/internal/operators/c/ek;->g:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/c/ek$b;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)V

    invoke-interface {p1, v7}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek;->a:Lio/reactivex/ae;

    new-instance v10, Lio/reactivex/internal/operators/c/ek$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/ek;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ek;->e:Lio/reactivex/ah;

    iget v6, p0, Lio/reactivex/internal/operators/c/ek;->g:I

    iget-wide v7, p0, Lio/reactivex/internal/operators/c/ek;->f:J

    iget-boolean v9, p0, Lio/reactivex/internal/operators/c/ek;->h:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/c/ek$a;-><init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IJZ)V

    invoke-interface {p1, v10}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void

    .line 72
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ek;->a:Lio/reactivex/ae;

    new-instance v9, Lio/reactivex/internal/operators/c/ek$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ek;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/c/ek;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/c/ek;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek;->e:Lio/reactivex/ah;

    .line 73
    invoke-virtual {v0}, Lio/reactivex/ah;->createWorker()Lio/reactivex/ah$c;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/c/ek;->g:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/c/ek$c;-><init>(Lio/reactivex/ag;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;I)V

    .line 72
    invoke-interface {p1, v9}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
