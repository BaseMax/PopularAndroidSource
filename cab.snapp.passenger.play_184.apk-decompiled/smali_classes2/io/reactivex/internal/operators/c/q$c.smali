.class final Lio/reactivex/internal/operators/c/q$c;
.super Lio/reactivex/internal/c/u;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/q$c$b;,
        Lio/reactivex/internal/operators/c/q$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/c/u<",
        "TT;TU;TU;>;",
        "Lio/reactivex/b/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final f:J

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Lio/reactivex/ah$c;

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field k:Lio/reactivex/b/c;


# direct methods
.method constructor <init>(Lio/reactivex/ag;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 231
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/c/u;-><init>(Lio/reactivex/ag;Lio/reactivex/internal/b/i;)V

    .line 232
    iput-object p2, p0, Lio/reactivex/internal/operators/c/q$c;->e:Ljava/util/concurrent/Callable;

    .line 233
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/q$c;->f:J

    .line 234
    iput-wide p5, p0, Lio/reactivex/internal/operators/c/q$c;->g:J

    .line 235
    iput-object p7, p0, Lio/reactivex/internal/operators/c/q$c;->h:Ljava/util/concurrent/TimeUnit;

    .line 236
    iput-object p8, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    .line 237
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 1

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic accept(Lio/reactivex/ag;Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/c/q$c;->accept(Lio/reactivex/ag;Ljava/util/Collection;)V

    return-void
.end method

.method public final accept(Lio/reactivex/ag;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 350
    invoke-interface {p1, p2}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->cancelled:Z

    .line 305
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/q$c;->a()V

    .line 306
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->k:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 307
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->cancelled:Z

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 293
    iget-object v2, p0, Lio/reactivex/internal/operators/c/q$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v2, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->b:Z

    .line 296
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/q$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->a:Lio/reactivex/ag;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    invoke-static {v0, v1, v2, v3, p0}, Lio/reactivex/internal/util/o;->drainLoop(Lio/reactivex/internal/b/i;Lio/reactivex/ag;ZLio/reactivex/b/c;Lio/reactivex/internal/util/k;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 290
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->b:Z

    .line 279
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/q$c;->a()V

    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->a:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 281
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 271
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 8

    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->k:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iput-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->k:Lio/reactivex/b/c;

    .line 248
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 261
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/c/q$c;->g:J

    iget-object v7, p0, Lio/reactivex/internal/operators/c/q$c;->h:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    .line 263
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/c/q$c$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/c/q$c$b;-><init>(Lio/reactivex/internal/operators/c/q$c;Ljava/util/Collection;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/q$c;->f:J

    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 250
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 251
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 252
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->a:Lio/reactivex/ag;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/ag;)V

    .line 253
    iget-object p1, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 324
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/q$c;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    monitor-enter p0

    .line 339
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/c/q$c;->cancelled:Z

    if-eqz v1, :cond_1

    .line 340
    monitor-exit p0

    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->i:Lio/reactivex/ah$c;

    new-instance v2, Lio/reactivex/internal/operators/c/q$c$a;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/c/q$c$a;-><init>(Lio/reactivex/internal/operators/c/q$c;Ljava/util/Collection;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/c/q$c;->f:J

    iget-object v0, p0, Lio/reactivex/internal/operators/c/q$c;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    :catchall_0
    move-exception v0

    .line 343
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 332
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 333
    iget-object v1, p0, Lio/reactivex/internal/operators/c/q$c;->a:Lio/reactivex/ag;

    invoke-interface {v1, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    .line 334
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/q$c;->dispose()V

    return-void
.end method
