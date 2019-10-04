.class final Lio/reactivex/internal/operators/flowable/bf$a;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/a<",
        "TR;>;",
        "Lio/reactivex/o<",
        "TT;>;"
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

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field f:Lorg/b/d;

.field g:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field l:I

.field m:I


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->a:Lorg/b/c;

    .line 119
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bf$a;->b:Lio/reactivex/e/h;

    .line 120
    iput p3, p0, Lio/reactivex/internal/operators/flowable/bf$a;->c:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 121
    iput p3, p0, Lio/reactivex/internal/operators/flowable/bf$a;->d:I

    .line 122
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a()V
    .locals 18

    move-object/from16 v1, p0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/bf$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/bf$a;->a:Lorg/b/c;

    .line 223
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    .line 224
    iget v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    if-nez v6, :cond_5

    .line 234
    iget-boolean v9, v1, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    .line 239
    :try_start_0
    invoke-interface {v3}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 255
    :goto_2
    invoke-direct {v1, v9, v11, v2, v3}, Lio/reactivex/internal/operators/flowable/bf$a;->a(ZZLorg/b/c;Lio/reactivex/internal/b/j;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_5

    .line 265
    :try_start_1
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/bf$a;->b:Lio/reactivex/e/h;

    invoke-interface {v6, v10}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 267
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 269
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_4

    .line 281
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/bf$a;->a(Z)V

    move-object v6, v7

    goto :goto_1

    .line 285
    :cond_4
    iput-object v6, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 272
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-interface {v3}, Lorg/b/d;->cancel()V

    .line 273
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 274
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 275
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 241
    invoke-static {v4}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 242
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 243
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v4}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 244
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 246
    iput-object v7, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 247
    invoke-interface {v3}, Lio/reactivex/internal/b/j;->clear()V

    .line 249
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_3
    if-eqz v6, :cond_d

    .line 290
    iget-object v9, v1, Lio/reactivex/internal/operators/flowable/bf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_4
    cmp-long v15, v13, v9

    if-eqz v15, :cond_9

    .line 294
    iget-boolean v15, v1, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    invoke-direct {v1, v15, v4, v2, v3}, Lio/reactivex/internal/operators/flowable/bf$a;->a(ZZLorg/b/c;Lio/reactivex/internal/b/j;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    .line 301
    :cond_6
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-string v5, "The iterator returned a null value"

    invoke-static {v15, v5}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 312
    invoke-interface {v2, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 314
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    invoke-direct {v1, v5, v4, v2, v3}, Lio/reactivex/internal/operators/flowable/bf$a;->a(ZZLorg/b/c;Lio/reactivex/internal/b/j;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    .line 323
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_8

    .line 335
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/bf$a;->a(Z)V

    .line 337
    iput-object v7, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    move-object v6, v7

    goto :goto_5

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 325
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 326
    iput-object v7, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 327
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 328
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 329
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 330
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    .line 303
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 304
    iput-object v7, v1, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 305
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-interface {v3}, Lorg/b/d;->cancel()V

    .line 306
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 307
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 308
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    :goto_5
    cmp-long v5, v13, v9

    if-nez v5, :cond_b

    .line 343
    iget-boolean v5, v1, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    .line 344
    invoke-interface {v3}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    if-nez v6, :cond_a

    const/4 v15, 0x1

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    .line 346
    :goto_6
    invoke-direct {v1, v5, v15, v2, v3}, Lio/reactivex/internal/operators/flowable/bf$a;->a(ZZLorg/b/c;Lio/reactivex/internal/b/j;)Z

    move-result v5

    if-eqz v5, :cond_b

    return-void

    :cond_b
    cmp-long v5, v13, v11

    if-eqz v5, :cond_c

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v9, v11

    if-eqz v5, :cond_c

    .line 353
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/bf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v13

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_c
    if-eqz v6, :cond_e

    :cond_d
    neg-int v5, v8

    .line 362
    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/flowable/bf$a;->addAndGet(I)I

    move-result v8

    if-nez v8, :cond_e

    return-void

    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 371
    iget p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->l:I

    add-int/lit8 p1, p1, 0x1

    .line 372
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->d:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->l:I

    .line 374
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    return-void

    .line 376
    :cond_0
    iput p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->l:I

    :cond_1
    return-void
.end method

.method private a(ZZLorg/b/c;Lio/reactivex/internal/b/j;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "*>;",
            "Lio/reactivex/internal/b/j<",
            "*>;)Z"
        }
    .end annotation

    .line 382
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 383
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 384
    invoke-interface {p4}, Lio/reactivex/internal/b/j;->clear()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    .line 388
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/util/h;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    .line 392
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 393
    invoke-interface {p4}, Lio/reactivex/internal/b/j;->clear()V

    .line 395
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    .line 398
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->i:Z

    .line 209
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 211
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bf$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 408
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    .line 193
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bf$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/h;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    .line 181
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bf$a;->a()V

    return-void

    .line 183
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

    .line 167
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->m:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 171
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bf$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bf$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->f:Lorg/b/d;

    .line 131
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 133
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x3

    .line 135
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    iput v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->m:I

    .line 139
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    .line 140
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/bf$a;->h:Z

    .line 142
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 147
    iput v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->m:I

    .line 148
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 152
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 157
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 161
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 422
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->g:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 427
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bf$a;->b:Lio/reactivex/e/h;

    invoke-interface {v2, v0}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 433
    :cond_1
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    .line 436
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 439
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->k:Ljava/util/Iterator;

    :cond_3
    return-object v2
.end method

.method public final request(J)V
    .locals 1

    .line 198
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 200
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bf$a;->a()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 448
    iget p1, p0, Lio/reactivex/internal/operators/flowable/bf$a;->m:I

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
