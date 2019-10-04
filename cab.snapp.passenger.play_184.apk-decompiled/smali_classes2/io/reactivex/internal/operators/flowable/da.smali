.class public final Lio/reactivex/internal/operators/flowable/da;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/da$b;,
        Lio/reactivex/internal/operators/flowable/da$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/ah;

.field g:Lio/reactivex/internal/operators/flowable/da$a;


# direct methods
.method public constructor <init>(Lio/reactivex/d/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/da;-><init>(Lio/reactivex/d/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/d/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    .line 57
    iput p2, p0, Lio/reactivex/internal/operators/flowable/da;->c:I

    .line 58
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/da;->d:J

    .line 59
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/da;->e:Ljava/util/concurrent/TimeUnit;

    .line 60
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/da;->f:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/flowable/da$a;)V
    .locals 5

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    .line 120
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->b:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->b:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 124
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    instance-of v0, v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 126
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    instance-of v0, v0, Lio/reactivex/internal/disposables/e;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    check-cast v0, Lio/reactivex/internal/disposables/e;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/da$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {v0, p1}, Lio/reactivex/internal/disposables/e;->resetIf(Lio/reactivex/b/c;)V

    .line 131
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

.method final b(Lio/reactivex/internal/operators/flowable/da$a;)V
    .locals 5

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    .line 138
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/da$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    .line 139
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 140
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    instance-of v1, v1, Lio/reactivex/b/c;

    if-eqz v1, :cond_0

    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    check-cast p1, Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    instance-of v1, v1, Lio/reactivex/internal/disposables/e;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/da$a;->e:Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    check-cast p1, Lio/reactivex/internal/disposables/e;

    invoke-interface {p1, v0}, Lio/reactivex/internal/disposables/e;->resetIf(Lio/reactivex/b/c;)V

    .line 150
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

.method public final subscribeActual(Lorg/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lio/reactivex/internal/operators/flowable/da$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/da$a;-><init>(Lio/reactivex/internal/operators/flowable/da;)V

    .line 73
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/da;->g:Lio/reactivex/internal/operators/flowable/da$a;

    .line 76
    :cond_0
    iget-wide v1, v0, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 77
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/da$a;->b:Lio/reactivex/b/c;

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/da$a;->b:Lio/reactivex/b/c;

    invoke-interface {v3}, Lio/reactivex/b/c;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 80
    iput-wide v1, v0, Lio/reactivex/internal/operators/flowable/da$a;->c:J

    .line 81
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/da$a;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/internal/operators/flowable/da;->c:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 83
    iput-boolean v4, v0, Lio/reactivex/internal/operators/flowable/da$a;->d:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 85
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    new-instance v2, Lio/reactivex/internal/operators/flowable/da$b;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/internal/operators/flowable/da$b;-><init>(Lorg/b/c;Lio/reactivex/internal/operators/flowable/da;Lio/reactivex/internal/operators/flowable/da$a;)V

    invoke-virtual {v1, v2}, Lio/reactivex/d/a;->subscribe(Lio/reactivex/o;)V

    if-eqz v4, :cond_3

    .line 90
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/da;->b:Lio/reactivex/d/a;

    invoke-virtual {p1, v0}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
