.class final Lio/reactivex/internal/operators/c/dj$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dj;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field g:Lio/reactivex/b/c;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/ag;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "IZ)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dj$a;->a:Lio/reactivex/ag;

    .line 65
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/dj$a;->b:J

    .line 66
    iput-object p4, p0, Lio/reactivex/internal/operators/c/dj$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 67
    iput-object p5, p0, Lio/reactivex/internal/operators/c/dj$a;->d:Lio/reactivex/ah;

    .line 68
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p6}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    .line 69
    iput-boolean p7, p0, Lio/reactivex/internal/operators/c/dj$a;->f:Z

    return-void
.end method

.method private a()V
    .locals 17

    move-object/from16 v0, p0

    .line 122
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/c/dj$a;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/c/dj$a;->a:Lio/reactivex/ag;

    .line 129
    iget-object v2, v0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    .line 130
    iget-boolean v3, v0, Lio/reactivex/internal/operators/c/dj$a;->f:Z

    .line 131
    iget-object v4, v0, Lio/reactivex/internal/operators/c/dj$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 132
    iget-object v5, v0, Lio/reactivex/internal/operators/c/dj$a;->d:Lio/reactivex/ah;

    .line 133
    iget-wide v6, v0, Lio/reactivex/internal/operators/c/dj$a;->b:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 138
    :cond_1
    :goto_0
    iget-boolean v10, v0, Lio/reactivex/internal/operators/c/dj$a;->h:Z

    if-eqz v10, :cond_2

    .line 139
    iget-object v1, v0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {v1}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 143
    :cond_2
    iget-boolean v10, v0, Lio/reactivex/internal/operators/c/dj$a;->i:Z

    .line 145
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 149
    :goto_1
    invoke-virtual {v5, v4}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v13

    if-nez v12, :cond_4

    .line 151
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v6

    cmp-long v11, v15, v13

    if-lez v11, :cond_4

    const/4 v12, 0x1

    :cond_4
    if-eqz v10, :cond_8

    if-eqz v3, :cond_6

    if-eqz v12, :cond_8

    .line 158
    iget-object v2, v0, Lio/reactivex/internal/operators/c/dj$a;->j:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 160
    invoke-interface {v1, v2}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 162
    :cond_5
    invoke-interface {v1}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 167
    :cond_6
    iget-object v10, v0, Lio/reactivex/internal/operators/c/dj$a;->j:Ljava/lang/Throwable;

    if-eqz v10, :cond_7

    .line 169
    iget-object v2, v0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->clear()V

    .line 170
    invoke-interface {v1, v10}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-eqz v12, :cond_8

    .line 174
    invoke-interface {v1}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_8
    if-nez v12, :cond_9

    .line 184
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    .line 186
    invoke-virtual {v2}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 188
    invoke-interface {v1, v10}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    neg-int v9, v9

    .line 191
    invoke-virtual {v0, v9}, Lio/reactivex/internal/operators/c/dj$a;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dj$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dj$a;->h:Z

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dj$a;->g:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/dj$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/dj$a;->h:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dj$a;->i:Z

    .line 101
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dj$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dj$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/dj$a;->i:Z

    .line 95
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dj$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dj$a;->e:Lio/reactivex/internal/d/c;

    .line 84
    iget-object v1, p0, Lio/reactivex/internal/operators/c/dj$a;->d:Lio/reactivex/ah;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/dj$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/ah;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/dj$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dj$a;->g:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dj$a;->g:Lio/reactivex/b/c;

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dj$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
