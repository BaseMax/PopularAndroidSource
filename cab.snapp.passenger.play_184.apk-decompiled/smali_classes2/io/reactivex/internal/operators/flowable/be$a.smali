.class final Lio/reactivex/internal/operators/flowable/be$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/be$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/b/b;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final g:Lio/reactivex/internal/util/b;

.field final h:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/d/c<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field j:Lorg/b/d;

.field volatile k:Z


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/be$a;->h:Lio/reactivex/e/h;

    .line 89
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/be$a;->b:Z

    .line 90
    iput p4, p0, Lio/reactivex/internal/operators/flowable/be$a;->c:I

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    .line 93
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    .line 94
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private d()V
    .locals 1

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/c;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Lio/reactivex/internal/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/d/c<",
            "TR;>;"
        }
    .end annotation

    .line 216
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/c;

    if-eqz v0, :cond_1

    return-object v0

    .line 220
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/c;

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/c;-><init>(I)V

    .line 221
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method final b()V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a;->c()V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 15

    .line 260
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    .line 261
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/be$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 265
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    const/4 v11, 0x0

    cmp-long v12, v9, v5

    if-eqz v12, :cond_8

    .line 269
    iget-boolean v12, p0, Lio/reactivex/internal/operators/flowable/be$a;->k:Z

    if-eqz v12, :cond_1

    .line 270
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/be$a;->d()V

    return-void

    .line 274
    :cond_1
    iget-boolean v12, p0, Lio/reactivex/internal/operators/flowable/be$a;->b:Z

    if-nez v12, :cond_2

    .line 275
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v12}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Throwable;

    if-eqz v12, :cond_2

    .line 277
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 278
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/be$a;->d()V

    .line 279
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 284
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 285
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/reactivex/internal/d/c;

    if-eqz v13, :cond_4

    .line 286
    invoke-virtual {v13}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v13

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v12, :cond_7

    if-eqz v14, :cond_7

    .line 290
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 292
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 294
    :cond_6
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_7
    if-nez v14, :cond_8

    .line 303
    invoke-interface {v0, v13}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_8
    cmp-long v12, v9, v5

    if-nez v12, :cond_f

    .line 309
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->k:Z

    if-eqz v5, :cond_9

    .line 310
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/be$a;->d()V

    return-void

    .line 314
    :cond_9
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->b:Z

    if-nez v5, :cond_a

    .line 315
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v5}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 317
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 318
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/be$a;->d()V

    .line 319
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 324
    :cond_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 325
    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/internal/d/c;

    if-eqz v6, :cond_c

    .line 326
    invoke-virtual {v6}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    const/4 v11, 0x1

    :cond_d
    if-eqz v5, :cond_f

    if-eqz v11, :cond_f

    .line 329
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 331
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 333
    :cond_e
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    :cond_f
    cmp-long v5, v9, v7

    if-eqz v5, :cond_10

    .line 340
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v9, v10}, Lio/reactivex/internal/util/c;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 341
    iget v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->c:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_10

    .line 342
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-interface {v5, v9, v10}, Lorg/b/d;->request(J)V

    :cond_10
    neg-int v4, v4

    .line 346
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/be$a;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->k:Z

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->g:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->b:Z

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {p1}, Lio/reactivex/b/b;->dispose()V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a;->b()V

    return-void

    .line 145
    :cond_1
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

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->h:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 129
    new-instance v0, Lio/reactivex/internal/operators/flowable/be$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/be$a$a;-><init>(Lio/reactivex/internal/operators/flowable/be$a;)V

    .line 131
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/be$a;->e:Lio/reactivex/b/b;

    invoke-virtual {v1, v0}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p1, v0}, Lio/reactivex/ao;->subscribe(Lio/reactivex/al;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 123
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/be$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/be$a;->j:Lorg/b/d;

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 105
    iget v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 107
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    :cond_0
    int-to-long v0, v0

    .line 109
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 164
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/be$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/be$a;->b()V

    :cond_0
    return-void
.end method
