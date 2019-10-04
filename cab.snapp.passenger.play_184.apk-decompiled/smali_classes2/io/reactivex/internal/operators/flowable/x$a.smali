.class final Lio/reactivex/internal/operators/flowable/x$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/f/l;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/x;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/f/l<",
        "TR;>;",
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

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;

.field final f:Lio/reactivex/internal/util/b;

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Lio/reactivex/internal/f/k<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field i:Lorg/b/d;

.field volatile j:Z

.field volatile k:Z

.field volatile l:Lio/reactivex/internal/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/f/k<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/b/c;

    .line 93
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x$a;->b:Lio/reactivex/e/h;

    .line 94
    iput p3, p0, Lio/reactivex/internal/operators/flowable/x$a;->c:I

    .line 95
    iput p4, p0, Lio/reactivex/internal/operators/flowable/x$a;->d:I

    .line 96
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    .line 97
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/d/c;

    .line 98
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    .line 99
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 179
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lio/reactivex/internal/f/k;->cancel()V

    .line 186
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/f/k;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lio/reactivex/internal/f/k;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 167
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/x$a;->a()V

    return-void
.end method

.method public final drain()V
    .locals 19

    move-object/from16 v1, p0

    .line 230
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 236
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/b/c;

    .line 237
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    const/4 v5, 0x1

    .line 240
    :cond_1
    :goto_0
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    if-nez v0, :cond_5

    .line 245
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq v3, v0, :cond_2

    .line 246
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 248
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    .line 250
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 255
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 257
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/d/c;

    invoke-virtual {v8}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/internal/f/k;

    if-eqz v0, :cond_4

    if-nez v8, :cond_4

    .line 260
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 264
    :cond_3
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    :cond_4
    if-eqz v8, :cond_6

    .line 270
    iput-object v8, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    goto :goto_1

    :cond_5
    move-object v8, v0

    :cond_6
    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_f

    .line 277
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->queue()Lio/reactivex/internal/b/j;

    move-result-object v12

    if-eqz v12, :cond_f

    move/from16 v16, v5

    move-wide v13, v9

    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v17, v13, v6

    if-eqz v17, :cond_b

    .line 280
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v0, :cond_7

    .line 281
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    return-void

    .line 285
    :cond_7
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v0, :cond_8

    .line 286
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 288
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 289
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->cancel()V

    .line 290
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    .line 292
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 297
    :cond_8
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->isDone()Z

    move-result v0

    .line 302
    :try_start_0
    invoke-interface {v12}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_9

    const/16 v18, 0x1

    goto :goto_3

    :cond_9
    const/16 v18, 0x0

    :goto_3
    if-eqz v0, :cond_a

    if-eqz v18, :cond_a

    .line 316
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 317
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-interface {v0, v4, v5}, Lorg/b/d;->request(J)V

    move-object v8, v11

    const/16 v17, 0x1

    goto :goto_4

    :cond_a
    if-nez v18, :cond_b

    .line 326
    invoke-interface {v2, v15}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v13, v4

    .line 330
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->requestOne()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 304
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 305
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 306
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->cancel()V

    .line 307
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    .line 308
    invoke-interface {v2, v3}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    const/16 v17, 0x0

    :goto_4
    cmp-long v0, v13, v6

    if-nez v0, :cond_e

    .line 334
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v0, :cond_c

    .line 335
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    return-void

    .line 339
    :cond_c
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v0, :cond_d

    .line 340
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_d

    .line 342
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 343
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->cancel()V

    .line 344
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/x$a;->b()V

    .line 346
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 351
    :cond_d
    invoke-virtual {v8}, Lio/reactivex/internal/f/k;->isDone()Z

    move-result v0

    .line 353
    invoke-interface {v12}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v12

    if-eqz v0, :cond_e

    if-eqz v12, :cond_e

    .line 357
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/x$a;->l:Lio/reactivex/internal/f/k;

    .line 358
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-interface {v0, v4, v5}, Lorg/b/d;->request(J)V

    move-object v0, v11

    const/16 v17, 0x1

    goto :goto_5

    :cond_e
    move-object v0, v8

    goto :goto_5

    :cond_f
    move/from16 v16, v5

    move-object v0, v8

    move-wide v13, v9

    const/16 v17, 0x0

    :goto_5
    cmp-long v4, v13, v9

    if-eqz v4, :cond_10

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v8, v6, v4

    if-eqz v8, :cond_10

    .line 366
    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    move/from16 v4, v16

    if-nez v17, :cond_11

    neg-int v4, v4

    .line 373
    invoke-virtual {v1, v4}, Lio/reactivex/internal/operators/flowable/x$a;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_11
    move v5, v4

    goto/16 :goto_0
.end method

.method public final innerComplete(Lio/reactivex/internal/f/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/f/k<",
            "TR;>;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lio/reactivex/internal/f/k;->setDone()V

    .line 225
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    return-void
.end method

.method public final innerError(Lio/reactivex/internal/f/k;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/f/k<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p1}, Lio/reactivex/internal/f/k;->setDone()V

    .line 213
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->e:Lio/reactivex/internal/util/ErrorMode;

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, p2, :cond_0

    .line 214
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    return-void

    .line 218
    :cond_1
    invoke-static {p2}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerNext(Lio/reactivex/internal/f/k;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/f/k<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lio/reactivex/internal/f/k;->queue()Lio/reactivex/internal/b/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/internal/f/k;->cancel()V

    .line 205
    new-instance p2, Lio/reactivex/c/c;

    invoke-direct {p2}, Lio/reactivex/c/c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/x$a;->innerError(Lio/reactivex/internal/f/k;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->k:Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    return-void

    .line 149
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

    .line 119
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    new-instance v0, Lio/reactivex/internal/f/k;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->d:I

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/f/k;-><init>(Lio/reactivex/internal/f/l;I)V

    .line 129
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/x$a;->h:Lio/reactivex/internal/d/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 137
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->j:Z

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {v0}, Lio/reactivex/internal/f/k;->cancel()V

    .line 139
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/x$a;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 123
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/x$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/x$a;->i:Lorg/b/d;

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 109
    iget v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 193
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 195
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/x$a;->drain()V

    :cond_0
    return-void
.end method
