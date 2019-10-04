.class final Lio/reactivex/internal/operators/c/eg$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:I

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/j/e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field f:J

.field volatile g:Z

.field h:J

.field i:Lio/reactivex/b/c;

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/ag;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 159
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$b;->a:Lio/reactivex/ag;

    .line 160
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/eg$b;->b:J

    .line 161
    iput-wide p4, p0, Lio/reactivex/internal/operators/c/eg$b;->c:J

    .line 162
    iput p6, p0, Lio/reactivex/internal/operators/c/eg$b;->d:I

    .line 163
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$b;->e:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$b;->g:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$b;->g:Z

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->e:Ljava/util/ArrayDeque;

    .line 222
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/j/e;

    invoke-virtual {v1}, Lio/reactivex/j/e;->onComplete()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->a:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->e:Ljava/util/ArrayDeque;

    .line 213
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/j/e;

    invoke-virtual {v1, p1}, Lio/reactivex/j/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->e:Ljava/util/ArrayDeque;

    .line 179
    iget-wide v1, p0, Lio/reactivex/internal/operators/c/eg$b;->f:J

    .line 181
    iget-wide v3, p0, Lio/reactivex/internal/operators/c/eg$b;->c:J

    .line 183
    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/c/eg$b;->g:Z

    if-nez v5, :cond_0

    .line 184
    iget-object v5, p0, Lio/reactivex/internal/operators/c/eg$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 185
    iget v5, p0, Lio/reactivex/internal/operators/c/eg$b;->d:I

    invoke-static {v5, p0}, Lio/reactivex/j/e;->create(ILjava/lang/Runnable;)Lio/reactivex/j/e;

    move-result-object v5

    .line 186
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 187
    iget-object v6, p0, Lio/reactivex/internal/operators/c/eg$b;->a:Lio/reactivex/ag;

    invoke-interface {v6, v5}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-wide v5, p0, Lio/reactivex/internal/operators/c/eg$b;->h:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/j/e;

    .line 193
    invoke-virtual {v10, p1}, Lio/reactivex/j/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-wide v9, p0, Lio/reactivex/internal/operators/c/eg$b;->b:J

    cmp-long p1, v5, v9

    if-ltz p1, :cond_3

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/j/e;

    invoke-virtual {p1}, Lio/reactivex/j/e;->onComplete()V

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lio/reactivex/internal/operators/c/eg$b;->g:Z

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eg$b;->i:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void

    :cond_2
    sub-long/2addr v5, v3

    .line 202
    iput-wide v5, p0, Lio/reactivex/internal/operators/c/eg$b;->h:J

    goto :goto_1

    .line 204
    :cond_3
    iput-wide v5, p0, Lio/reactivex/internal/operators/c/eg$b;->h:J

    :goto_1
    add-long/2addr v1, v7

    .line 207
    iput-wide v1, p0, Lio/reactivex/internal/operators/c/eg$b;->f:J

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->i:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput-object p1, p0, Lio/reactivex/internal/operators/c/eg$b;->i:Lio/reactivex/b/c;

    .line 171
    iget-object p1, p0, Lio/reactivex/internal/operators/c/eg$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/eg$b;->g:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/c/eg$b;->i:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method
