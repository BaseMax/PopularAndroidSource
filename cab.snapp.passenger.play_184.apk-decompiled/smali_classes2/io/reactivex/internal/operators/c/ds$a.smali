.class final Lio/reactivex/internal/operators/c/ds$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah;

.field final f:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field h:Lio/reactivex/b/c;

.field volatile i:Z

.field j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/ag;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ds$a;->a:Lio/reactivex/ag;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ds$a;->b:J

    .line 69
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/ds$a;->c:J

    .line 70
    iput-object p6, p0, Lio/reactivex/internal/operators/c/ds$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 71
    iput-object p7, p0, Lio/reactivex/internal/operators/c/ds$a;->e:Lio/reactivex/ah;

    .line 72
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p8}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/ds$a;->f:Lio/reactivex/internal/d/c;

    .line 73
    iput-boolean p9, p0, Lio/reactivex/internal/operators/c/ds$a;->g:Z

    return-void
.end method

.method private a()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/c/ds$a;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/c/ds$a;->a:Lio/reactivex/ag;

    .line 140
    iget-object v3, p0, Lio/reactivex/internal/operators/c/ds$a;->f:Lio/reactivex/internal/d/c;

    .line 141
    iget-boolean v4, p0, Lio/reactivex/internal/operators/c/ds$a;->g:Z

    .line 144
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/ds$a;->i:Z

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    :cond_2
    if-nez v4, :cond_3

    .line 150
    iget-object v5, p0, Lio/reactivex/internal/operators/c/ds$a;->j:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 152
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    .line 153
    invoke-interface {v2, v5}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 158
    :cond_3
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_6

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ds$a;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 164
    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 166
    :cond_5
    invoke-interface {v2}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 172
    :cond_6
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 174
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ds$a;->e:Lio/reactivex/ah;

    iget-object v9, p0, Lio/reactivex/internal/operators/c/ds$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    iget-wide v11, p0, Lio/reactivex/internal/operators/c/ds$a;->c:J

    sub-long/2addr v9, v11

    cmp-long v5, v7, v9

    if-ltz v5, :cond_1

    .line 178
    invoke-interface {v2, v6}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ds$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/ds$a;->i:Z

    .line 121
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ds$a;->h:Lio/reactivex/b/c;

    invoke-interface {v1}, Lio/reactivex/b/c;->dispose()V

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/c/ds$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ds$a;->f:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/ds$a;->i:Z

    return v0
.end method

.method public final onComplete()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ds$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ds$a;->j:Ljava/lang/Throwable;

    .line 109
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ds$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ds$a;->f:Lio/reactivex/internal/d/c;

    .line 88
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ds$a;->e:Lio/reactivex/ah;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/ds$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 89
    iget-wide v3, p0, Lio/reactivex/internal/operators/c/ds$a;->c:J

    .line 90
    iget-wide v5, p0, Lio/reactivex/internal/operators/c/ds$a;->b:J

    const/4 v7, 0x1

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v5, v8

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 93
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v11, v1, v3

    cmp-long p1, v9, v11

    if-lez p1, :cond_1

    if-nez v8, :cond_2

    .line 97
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->size()I

    move-result p1

    shr-int/2addr p1, v7

    int-to-long v9, p1

    cmp-long p1, v9, v5

    if-lez p1, :cond_2

    .line 98
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ds$a;->h:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ds$a;->h:Lio/reactivex/b/c;

    .line 80
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ds$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
