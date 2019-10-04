.class final Lio/reactivex/internal/operators/flowable/n$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/n$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TC;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TOpen;+",
            "Lorg/b/b<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/b/b;

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/internal/util/b;

.field volatile i:Z

.field final j:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TC;>;"
        }
    .end annotation
.end field

.field volatile k:Z

.field l:J

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TC;>;"
        }
    .end annotation
.end field

.field n:J


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;Lio/reactivex/e/h;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TC;>;",
            "Lorg/b/b<",
            "+TOpen;>;",
            "Lio/reactivex/e/h<",
            "-TOpen;+",
            "Lorg/b/b<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->a:Lorg/b/c;

    .line 95
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/n$a;->b:Ljava/util/concurrent/Callable;

    .line 96
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/n$a;->c:Lorg/b/b;

    .line 97
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/n$a;->d:Lio/reactivex/e/h;

    .line 98
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->j:Lio/reactivex/internal/d/c;

    .line 99
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    .line 100
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 103
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 11

    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->n:J

    .line 253
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n$a;->a:Lorg/b/c;

    .line 254
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/n$a;->j:Lio/reactivex/internal/d/c;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 257
    :cond_1
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_0
    cmp-long v8, v0, v6

    if-eqz v8, :cond_6

    .line 260
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/n$a;->k:Z

    if-eqz v8, :cond_2

    .line 261
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 265
    :cond_2
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/n$a;->i:Z

    if-eqz v8, :cond_3

    .line 266
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v9}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 267
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    .line 268
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 269
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 273
    :cond_3
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    if-nez v9, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    .line 277
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    if-nez v10, :cond_6

    .line 285
    invoke-interface {v2, v9}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_6
    cmp-long v8, v0, v6

    if-nez v8, :cond_9

    .line 290
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/n$a;->k:Z

    if-eqz v6, :cond_7

    .line 291
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 295
    :cond_7
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/n$a;->i:Z

    if-eqz v6, :cond_9

    .line 296
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v6}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 297
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->clear()V

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 299
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 301
    :cond_8
    invoke-virtual {v3}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 302
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    .line 308
    :cond_9
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->n:J

    neg-int v5, v5

    .line 309
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/n$a;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method final a(Lio/reactivex/b/c;Ljava/lang/Throwable;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 243
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Lio/reactivex/internal/operators/flowable/n$b;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/n$b<",
            "TT;TC;>;J)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->delete(Lio/reactivex/b/c;)Z

    .line 223
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->size()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 227
    :goto_0
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 230
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n$a;->j:Lio/reactivex/internal/d/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 235
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->i:Z

    .line 237
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 233
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final cancel()V
    .locals 1

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->k:Z

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 174
    monitor-enter p0

    const/4 v0, 0x0

    .line 175
    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->j:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 176
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onComplete()V
    .locals 3

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 155
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n$a;->j:Lio/reactivex/internal/d/c;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->i:Z

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 158
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

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 136
    monitor-enter p0

    const/4 p1, 0x0

    .line 137
    :try_start_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/n$a;->i:Z

    .line 140
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 142
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 127
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
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
    .locals 2

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/flowable/n$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/n$a$a;-><init>(Lio/reactivex/internal/operators/flowable/n$a;)V

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    .line 113
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n$a;->c:Lorg/b/b;

    invoke-interface {v1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 115
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/n$a;->a()V

    return-void
.end method
