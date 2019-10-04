.class final Lio/reactivex/internal/operators/c/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/internal/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/w;
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
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/internal/c/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;

.field final f:Lio/reactivex/internal/util/b;

.field final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/internal/c/r<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/b/c;

.field volatile j:Z

.field k:I

.field volatile l:Z

.field m:Lio/reactivex/internal/c/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/c/r<",
            "TR;>;"
        }
    .end annotation
.end field

.field n:I


# direct methods
.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->a:Lio/reactivex/ag;

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/c/w$a;->b:Lio/reactivex/e/h;

    .line 96
    iput p3, p0, Lio/reactivex/internal/operators/c/w$a;->c:I

    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/c/w$a;->d:I

    .line 98
    iput-object p5, p0, Lio/reactivex/internal/operators/c/w$a;->e:Lio/reactivex/internal/util/ErrorMode;

    .line 99
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    .line 100
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->g:Ljava/util/ArrayDeque;

    return-void
.end method

.method private a()V
    .locals 1

    .line 189
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->m:Lio/reactivex/internal/c/r;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lio/reactivex/internal/c/r;->dispose()V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/c/r;

    if-nez v0, :cond_1

    return-void

    .line 203
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/c/r;->dispose()V

    goto :goto_0
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->i:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 1175
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 1177
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 1178
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 1179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-void
.end method

.method public final drain()V
    .locals 13

    .line 234
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    .line 241
    iget-object v1, p0, Lio/reactivex/internal/operators/c/w$a;->g:Ljava/util/ArrayDeque;

    .line 242
    iget-object v2, p0, Lio/reactivex/internal/operators/c/w$a;->a:Lio/reactivex/ag;

    .line 243
    iget-object v3, p0, Lio/reactivex/internal/operators/c/w$a;->e:Lio/reactivex/internal/util/ErrorMode;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 248
    :cond_1
    :goto_0
    iget v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    .line 250
    :goto_1
    iget v7, p0, Lio/reactivex/internal/operators/c/w$a;->c:I

    if-eq v6, v7, :cond_5

    .line 251
    iget-boolean v7, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    if-eqz v7, :cond_2

    .line 252
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 253
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    return-void

    .line 257
    :cond_2
    sget-object v7, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v7, :cond_3

    .line 258
    iget-object v7, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v7}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 260
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 261
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 272
    :cond_3
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 278
    :cond_4
    iget-object v8, p0, Lio/reactivex/internal/operators/c/w$a;->b:Lio/reactivex/e/h;

    invoke-interface {v8, v7}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The mapper returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    new-instance v8, Lio/reactivex/internal/c/r;

    iget v9, p0, Lio/reactivex/internal/operators/c/w$a;->d:I

    invoke-direct {v8, p0, v9}, Lio/reactivex/internal/c/r;-><init>(Lio/reactivex/internal/c/s;I)V

    .line 291
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v7, v8}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 280
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 281
    iget-object v3, p0, Lio/reactivex/internal/operators/c/w$a;->i:Lio/reactivex/b/c;

    invoke-interface {v3}, Lio/reactivex/b/c;->dispose()V

    .line 282
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 283
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 285
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 298
    :cond_5
    :goto_2
    iput v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    .line 300
    iget-boolean v6, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    if-eqz v6, :cond_6

    .line 301
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 302
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    return-void

    .line 306
    :cond_6
    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v6, :cond_7

    .line 307
    iget-object v6, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v6}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    .line 309
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 310
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 312
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 317
    :cond_7
    iget-object v6, p0, Lio/reactivex/internal/operators/c/w$a;->m:Lio/reactivex/internal/c/r;

    const/4 v7, 0x0

    if-nez v6, :cond_d

    .line 320
    sget-object v6, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v6, :cond_8

    .line 321
    iget-object v6, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v6}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 323
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 324
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 326
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 330
    :cond_8
    iget-boolean v6, p0, Lio/reactivex/internal/operators/c/w$a;->j:Z

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/internal/c/r;

    if-nez v8, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 337
    iget-object v1, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 339
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 340
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 342
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 344
    :cond_a
    invoke-interface {v2}, Lio/reactivex/ag;->onComplete()V

    return-void

    :cond_b
    if-nez v9, :cond_c

    .line 350
    iput-object v8, p0, Lio/reactivex/internal/operators/c/w$a;->m:Lio/reactivex/internal/c/r;

    :cond_c
    move-object v6, v8

    :cond_d
    if-eqz v6, :cond_12

    .line 356
    invoke-virtual {v6}, Lio/reactivex/internal/c/r;->queue()Lio/reactivex/internal/b/j;

    move-result-object v8

    .line 359
    :goto_4
    iget-boolean v9, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    if-eqz v9, :cond_e

    .line 360
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 361
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    return-void

    .line 365
    :cond_e
    invoke-virtual {v6}, Lio/reactivex/internal/c/r;->isDone()Z

    move-result v9

    .line 367
    sget-object v10, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne v3, v10, :cond_f

    .line 368
    iget-object v10, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v10}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    .line 370
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->clear()V

    .line 371
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/w$a;->a()V

    .line 373
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_f
    const/4 v10, 0x0

    .line 381
    :try_start_1
    invoke-interface {v8}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_10

    const/4 v12, 0x1

    goto :goto_5

    :cond_10
    const/4 v12, 0x0

    :goto_5
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    .line 394
    iput-object v10, p0, Lio/reactivex/internal/operators/c/w$a;->m:Lio/reactivex/internal/c/r;

    .line 395
    iget v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    sub-int/2addr v6, v4

    iput v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    goto/16 :goto_0

    :cond_11
    if-nez v12, :cond_12

    .line 403
    invoke-interface {v2, v11}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v6

    .line 383
    invoke-static {v6}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 384
    iget-object v7, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 386
    iput-object v10, p0, Lio/reactivex/internal/operators/c/w$a;->m:Lio/reactivex/internal/c/r;

    .line 387
    iget v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    sub-int/2addr v6, v4

    iput v6, p0, Lio/reactivex/internal/operators/c/w$a;->n:I

    goto/16 :goto_0

    :cond_12
    neg-int v5, v5

    .line 407
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/c/w$a;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public final innerComplete(Lio/reactivex/internal/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/c/r<",
            "TR;>;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lio/reactivex/internal/c/r;->setDone()V

    .line 229
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void
.end method

.method public final innerError(Lio/reactivex/internal/c/r;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/c/r<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object p2, p0, Lio/reactivex/internal/operators/c/w$a;->e:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p2, v0, :cond_0

    .line 217
    iget-object p2, p0, Lio/reactivex/internal/operators/c/w$a;->i:Lio/reactivex/b/c;

    invoke-interface {p2}, Lio/reactivex/b/c;->dispose()V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/internal/c/r;->setDone()V

    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void

    .line 222
    :cond_1
    invoke-static {p2}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final innerNext(Lio/reactivex/internal/c/r;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/c/r<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lio/reactivex/internal/c/r;->queue()Lio/reactivex/internal/b/j;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/w$a;->l:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/w$a;->j:Z

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/w$a;->j:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void

    .line 153
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

    .line 141
    iget v0, p0, Lio/reactivex/internal/operators/c/w$a;->k:I

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/c/w$a;->i:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->i:Lio/reactivex/b/c;

    .line 109
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Lio/reactivex/internal/b/e;

    const/4 v0, 0x3

    .line 112
    invoke-interface {p1, v0}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iput v0, p0, Lio/reactivex/internal/operators/c/w$a;->k:I

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    .line 116
    iput-boolean v1, p0, Lio/reactivex/internal/operators/c/w$a;->j:Z

    .line 118
    iget-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/w$a;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 124
    iput v0, p0, Lio/reactivex/internal/operators/c/w$a;->k:I

    .line 125
    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    .line 127
    iget-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return-void

    .line 133
    :cond_1
    new-instance p1, Lio/reactivex/internal/d/c;

    iget v0, p0, Lio/reactivex/internal/operators/c/w$a;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->h:Lio/reactivex/internal/b/j;

    .line 135
    iget-object p1, p0, Lio/reactivex/internal/operators/c/w$a;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method
