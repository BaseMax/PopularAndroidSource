.class final Lio/reactivex/internal/operators/flowable/ck$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ck;
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/a;

.field final c:Lio/reactivex/BackpressureOverflowStrategy;

.field final d:J

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lorg/b/d;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/a;Lio/reactivex/BackpressureOverflowStrategy;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/a;",
            "Lio/reactivex/BackpressureOverflowStrategy;",
            "J)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->a:Lorg/b/c;

    .line 82
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ck$a;->b:Lio/reactivex/e/a;

    .line 83
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ck$a;->c:Lio/reactivex/BackpressureOverflowStrategy;

    .line 84
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->d:J

    .line 85
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->f:Ljava/util/Deque;

    return-void
.end method

.method private a()V
    .locals 13

    .line 191
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->f:Ljava/util/Deque;

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->a:Lorg/b/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 199
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_6

    .line 202
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/ck$a;->h:Z

    if-eqz v10, :cond_2

    .line 203
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/ck$a;->a(Ljava/util/Deque;)V

    return-void

    .line 207
    :cond_2
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    .line 211
    monitor-enter v0

    .line 212
    :try_start_0
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-eqz v10, :cond_5

    .line 218
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/ck$a;->j:Ljava/lang/Throwable;

    if-eqz v10, :cond_4

    .line 220
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/ck$a;->a(Ljava/util/Deque;)V

    .line 221
    invoke-interface {v1, v10}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    if-eqz v12, :cond_5

    .line 225
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    if-nez v12, :cond_6

    .line 234
    invoke-interface {v1, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    cmp-long v10, v8, v4

    if-nez v10, :cond_9

    .line 240
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->h:Z

    if-eqz v4, :cond_7

    .line 241
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/ck$a;->a(Ljava/util/Deque;)V

    return-void

    .line 245
    :cond_7
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    .line 249
    monitor-enter v0

    .line 250
    :try_start_2
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    .line 251
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_9

    .line 254
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->j:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 256
    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/ck$a;->a(Ljava/util/Deque;)V

    .line 257
    invoke-interface {v1, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    if-eqz v5, :cond_9

    .line 261
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :catchall_1
    move-exception v1

    .line 251
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_9
    cmp-long v4, v8, v6

    if-eqz v4, :cond_a

    .line 268
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/ck$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v8, v9}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_a
    neg-int v3, v3

    .line 271
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/ck$a;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method private static a(Ljava/util/Deque;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TT;>;)V"
        }
    .end annotation

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-interface {p0}, Ljava/util/Deque;->clear()V

    .line 187
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
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->h:Z

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->f:Ljava/util/Deque;

    invoke-static {v0}, Lio/reactivex/internal/operators/flowable/ck$a;->a(Ljava/util/Deque;)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    .line 163
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 155
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    .line 157
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->f:Ljava/util/Deque;

    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ck$a;->d:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_3

    .line 110
    sget-object v1, Lio/reactivex/internal/operators/flowable/ck$1;->a:[I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ck$a;->c:Lio/reactivex/BackpressureOverflowStrategy;

    invoke-virtual {v2}, Lio/reactivex/BackpressureOverflowStrategy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v6, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 118
    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    .line 127
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :goto_1
    const/4 v6, 0x0

    .line 129
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    .line 132
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->b:Lio/reactivex/e/a;

    if-eqz p1, :cond_6

    .line 134
    :try_start_1
    invoke-interface {p1}, Lio/reactivex/e/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 136
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->g:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 138
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ck$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    if-eqz v6, :cond_5

    .line 142
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->g:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 143
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1}, Lio/reactivex/c/c;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ck$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 145
    :cond_5
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->a()V

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 129
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->g:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ck$a;->g:Lorg/b/d;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 96
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 168
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ck$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 170
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ck$a;->a()V

    :cond_0
    return-void
.end method
