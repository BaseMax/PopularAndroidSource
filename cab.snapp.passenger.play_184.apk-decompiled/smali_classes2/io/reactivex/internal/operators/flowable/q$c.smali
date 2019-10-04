.class final Lio/reactivex/internal/operators/flowable/q$c;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/f/n<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/ah$c;

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field g:Lorg/b/d;


# direct methods
.method constructor <init>(Lorg/b/c;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 241
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 242
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/q$c;->a:Ljava/util/concurrent/Callable;

    .line 243
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/q$c;->b:J

    .line 244
    iput-wide p5, p0, Lio/reactivex/internal/operators/flowable/q$c;->c:J

    .line 245
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/q$c;->d:Ljava/util/concurrent/TimeUnit;

    .line 246
    iput-object p8, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    .line 247
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 1

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
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
.method public final bridge synthetic accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0

    .line 227
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$c;->accept(Lorg/b/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final accept(Lorg/b/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    .line 361
    invoke-interface {p1, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->cancelled:Z

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 323
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 324
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/q$c;->a()V

    return-void
.end method

.method public final onComplete()V
    .locals 4

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 306
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q$c;->queue:Lio/reactivex/internal/b/i;

    invoke-interface {v2, v1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->o:Z

    .line 309
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->queue:Lio/reactivex/internal/b/i;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->n:Lorg/b/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    invoke-static {v0, v1, v2, v3, p0}, Lio/reactivex/internal/util/o;->drainMaxLoop(Lio/reactivex/internal/b/i;Lorg/b/c;ZLio/reactivex/b/c;Lio/reactivex/internal/util/n;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 303
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

    .line 291
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->o:Z

    .line 292
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    .line 293
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/q$c;->a()V

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 284
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
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

.method public final onSubscribe(Lorg/b/d;)V
    .locals 10

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$c;->g:Lorg/b/d;

    .line 260
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->n:Lorg/b/c;

    invoke-interface {v1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v1, 0x7fffffffffffffffL

    .line 273
    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    .line 275
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    iget-wide v7, p0, Lio/reactivex/internal/operators/flowable/q$c;->c:J

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/q$c;->d:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lio/reactivex/ah$c;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    .line 277
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/q$c$a;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/flowable/q$c$a;-><init>(Lio/reactivex/internal/operators/flowable/q$c;Ljava/util/Collection;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/q$c;->b:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    :catchall_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 263
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    .line 264
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 265
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$c;->n:Lorg/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/b/c;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/q$c;->requested(J)V

    return-void
.end method

.method public final run()V
    .locals 5

    .line 335
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    monitor-enter p0

    .line 350
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->cancelled:Z

    if-eqz v1, :cond_1

    .line 351
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->e:Lio/reactivex/ah$c;

    new-instance v2, Lio/reactivex/internal/operators/flowable/q$c$a;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/flowable/q$c$a;-><init>(Lio/reactivex/internal/operators/flowable/q$c;Ljava/util/Collection;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/q$c;->b:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$c;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    return-void

    :catchall_0
    move-exception v0

    .line 354
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 343
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 344
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q$c;->cancel()V

    .line 345
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q$c;->n:Lorg/b/c;

    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
