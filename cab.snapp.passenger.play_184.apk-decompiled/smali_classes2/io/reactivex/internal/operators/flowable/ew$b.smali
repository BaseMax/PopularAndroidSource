.class final Lio/reactivex/internal/operators/flowable/ew$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lorg/b/d;"
    }
.end annotation


# static fields
.field static final d:Lio/reactivex/internal/operators/flowable/ew$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ew$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/ew$a<",
            "TT;TB;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Lio/reactivex/internal/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/util/b;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/b/b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicLong;

.field l:Lorg/b/d;

.field volatile m:Z

.field n:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lio/reactivex/internal/operators/flowable/ew$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/ew$a;-><init>(Lio/reactivex/internal/operators/flowable/ew$b;)V

    sput-object v0, Lio/reactivex/internal/operators/flowable/ew$b;->d:Lio/reactivex/internal/operators/flowable/ew$a;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/ew$b;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/b/c;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/b/b<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->a:Lorg/b/c;

    .line 88
    iput p2, p0, Lio/reactivex/internal/operators/flowable/ew$b;->b:I

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance p1, Lio/reactivex/internal/d/a;

    invoke-direct {p1}, Lio/reactivex/internal/d/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->f:Lio/reactivex/internal/d/a;

    .line 92
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->g:Lio/reactivex/internal/util/b;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ew$b;->i:Ljava/util/concurrent/Callable;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private b()V
    .locals 2

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ew$b;->d:Lio/reactivex/internal/operators/flowable/ew$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 151
    sget-object v1, Lio/reactivex/internal/operators/flowable/ew$b;->d:Lio/reactivex/internal/operators/flowable/ew$a;

    if-eq v0, v1, :cond_0

    .line 152
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->a:Lorg/b/c;

    .line 193
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->f:Lio/reactivex/internal/d/a;

    .line 194
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ew$b;->g:Lio/reactivex/internal/util/b;

    .line 195
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/ew$b;->o:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 200
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 201
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 202
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    return-void

    .line 206
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 208
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    if-eqz v9, :cond_4

    .line 210
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 211
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->clear()V

    .line 212
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 214
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 215
    invoke-virtual {v7, v1}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    .line 217
    :cond_3
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 221
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/d/a;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 226
    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 229
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 230
    invoke-virtual {v7}, Lio/reactivex/h/c;->onComplete()V

    .line 232
    :cond_6
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    .line 235
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 236
    invoke-virtual {v7, v1}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    .line 238
    :cond_8
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-nez v11, :cond_d

    .line 247
    sget-object v9, Lio/reactivex/internal/operators/flowable/ew$b;->j:Ljava/lang/Object;

    if-eq v10, v9, :cond_a

    .line 248
    invoke-virtual {v7, v10}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz v7, :cond_b

    .line 253
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 254
    invoke-virtual {v7}, Lio/reactivex/h/c;->onComplete()V

    .line 257
    :cond_b
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v7, v3, v9

    if-eqz v7, :cond_c

    .line 259
    iget v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->b:I

    invoke-static {v7, p0}, Lio/reactivex/h/c;->create(ILjava/lang/Runnable;)Lio/reactivex/h/c;

    move-result-object v7

    .line 260
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->n:Lio/reactivex/h/c;

    .line 261
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/ew$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 266
    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/ew$b;->i:Ljava/util/concurrent/Callable;

    invoke-interface {v9}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "The other Callable returned a null Publisher"

    invoke-static {v9, v10}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    new-instance v10, Lio/reactivex/internal/operators/flowable/ew$a;

    invoke-direct {v10, p0}, Lio/reactivex/internal/operators/flowable/ew$a;-><init>(Lio/reactivex/internal/operators/flowable/ew$b;)V

    .line 276
    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/ew$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v8, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 277
    invoke-interface {v9, v10}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 280
    invoke-interface {v0, v7}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    .line 268
    invoke-static {v7}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 269
    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 270
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    goto/16 :goto_0

    .line 283
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-interface {v7}, Lorg/b/d;->cancel()V

    .line 284
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->b()V

    .line 285
    new-instance v7, Lio/reactivex/c/c;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 286
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    goto/16 :goto_0

    .line 291
    :cond_d
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/ew$b;->o:J

    neg-int v6, v6

    .line 292
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/flowable/ew$b;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 3

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->b()V

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->b()V

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->b()V

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->m:Z

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->f:Lio/reactivex/internal/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->f:Lio/reactivex/internal/d/a;

    sget-object v1, Lio/reactivex/internal/operators/flowable/ew$b;->j:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/d/a;->offer(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ew$b;->a()V

    const-wide v0, 0x7fffffffffffffffL

    .line 105
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public final run()V
    .locals 1

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ew$b;->l:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method
