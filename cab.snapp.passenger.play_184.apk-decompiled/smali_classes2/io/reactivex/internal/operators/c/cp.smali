.class public final Lio/reactivex/internal/operators/c/cp;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cp$b;,
        Lio/reactivex/internal/operators/c/cp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field f:Lio/reactivex/internal/operators/c/cp$a;


# direct methods
.method public constructor <init>(Lio/reactivex/f/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/f/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/c/cp;-><init>(Lio/reactivex/f/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/f/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/f/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    .line 54
    iput p2, p0, Lio/reactivex/internal/operators/c/cp;->b:I

    .line 55
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/cp;->c:J

    .line 56
    iput-object p5, p0, Lio/reactivex/internal/operators/c/cp;->d:Ljava/util/concurrent/TimeUnit;

    .line 57
    iput-object p6, p0, Lio/reactivex/internal/operators/c/cp;->e:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/c/cp$a;)V
    .locals 5

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    .line 117
    iget-object v0, p1, Lio/reactivex/internal/operators/c/cp$a;->b:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p1, Lio/reactivex/internal/operators/c/cp$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 121
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    instance-of v0, v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 123
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    instance-of v0, v0, Lio/reactivex/internal/disposables/e;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    check-cast v0, Lio/reactivex/internal/disposables/e;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/cp$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {v0, p1}, Lio/reactivex/internal/disposables/e;->resetIf(Lio/reactivex/b/c;)V

    .line 128
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b(Lio/reactivex/internal/operators/c/cp$a;)V
    .locals 5

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    .line 135
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/cp$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    .line 136
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 138
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    instance-of v1, v1, Lio/reactivex/b/c;

    if-eqz v1, :cond_0

    .line 139
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    instance-of v1, v1, Lio/reactivex/internal/disposables/e;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p1, Lio/reactivex/internal/operators/c/cp$a;->e:Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    check-cast p1, Lio/reactivex/internal/disposables/e;

    invoke-interface {p1, v0}, Lio/reactivex/internal/disposables/e;->resetIf(Lio/reactivex/b/c;)V

    .line 148
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lio/reactivex/internal/operators/c/cp$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/c/cp$a;-><init>(Lio/reactivex/internal/operators/c/cp;)V

    .line 70
    iput-object v0, p0, Lio/reactivex/internal/operators/c/cp;->f:Lio/reactivex/internal/operators/c/cp$a;

    .line 73
    :cond_0
    iget-wide v1, v0, Lio/reactivex/internal/operators/c/cp$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 74
    iget-object v3, v0, Lio/reactivex/internal/operators/c/cp$a;->b:Lio/reactivex/b/c;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, v0, Lio/reactivex/internal/operators/c/cp$a;->b:Lio/reactivex/b/c;

    invoke-interface {v3}, Lio/reactivex/b/c;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 77
    iput-wide v1, v0, Lio/reactivex/internal/operators/c/cp$a;->c:J

    .line 78
    iget-boolean v3, v0, Lio/reactivex/internal/operators/c/cp$a;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/internal/operators/c/cp;->b:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 80
    iput-boolean v4, v0, Lio/reactivex/internal/operators/c/cp$a;->d:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    new-instance v2, Lio/reactivex/internal/operators/c/cp$b;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/internal/operators/c/cp$b;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/operators/c/cp;Lio/reactivex/internal/operators/c/cp$a;)V

    invoke-virtual {v1, v2}, Lio/reactivex/f/a;->subscribe(Lio/reactivex/ag;)V

    if-eqz v4, :cond_3

    .line 87
    iget-object p1, p0, Lio/reactivex/internal/operators/c/cp;->a:Lio/reactivex/f/a;

    invoke-virtual {p1, v0}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
