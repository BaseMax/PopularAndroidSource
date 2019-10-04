.class final Lio/reactivex/internal/operators/flowable/cr$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cr;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final k:[Lio/reactivex/internal/operators/flowable/cr$a;

.field static final l:[Lio/reactivex/internal/operators/flowable/cr$a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cr$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/cr$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:I

.field volatile f:Lio/reactivex/internal/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:I

.field volatile h:Z

.field i:Ljava/lang/Throwable;

.field j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 174
    sput-object v1, Lio/reactivex/internal/operators/flowable/cr$b;->k:[Lio/reactivex/internal/operators/flowable/cr$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 176
    sput-object v0, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/cr$b<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 180
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 181
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 182
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    iput p2, p0, Lio/reactivex/internal/operators/flowable/cr$b;->e:I

    .line 184
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/cr$b;->k:[Lio/reactivex/internal/operators/flowable/cr$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 5

    .line 369
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cr$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 370
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/cr$a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/cr$a;->a:Lorg/b/c;

    invoke-interface {v3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 351
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->i:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/cr$b;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 356
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/cr$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 357
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/cr$a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/cr$a;->a:Lorg/b/c;

    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method final a()V
    .locals 20

    move-object/from16 v1, p0

    .line 259
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/cr$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    .line 265
    iget v2, v1, Lio/reactivex/internal/operators/flowable/cr$b;->j:I

    .line 266
    iget v3, v1, Lio/reactivex/internal/operators/flowable/cr$b;->e:I

    shr-int/lit8 v4, v3, 0x2

    sub-int/2addr v3, v4

    .line 267
    iget v4, v1, Lio/reactivex/internal/operators/flowable/cr$b;->g:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v7, v2

    move-object v2, v0

    const/4 v0, 0x1

    :goto_1
    if-eqz v2, :cond_b

    const-wide v8, 0x7fffffffffffffffL

    .line 275
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 277
    array-length v11, v10

    move-wide v12, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v14, v10, v8

    .line 278
    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/cr$a;->get()J

    move-result-wide v15

    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v19, v15, v17

    if-eqz v19, :cond_2

    .line 281
    iget-wide v5, v14, Lio/reactivex/internal/operators/flowable/cr$a;->c:J

    sub-long v5, v15, v5

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide v12, v5

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    if-nez v9, :cond_4

    move-wide v12, v5

    :cond_4
    :goto_3
    cmp-long v8, v12, v5

    if-eqz v8, :cond_a

    .line 290
    iget-boolean v8, v1, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    .line 294
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 306
    :goto_4
    invoke-direct {v1, v8, v11}, Lio/reactivex/internal/operators/flowable/cr$b;->a(ZZ)Z

    move-result v8

    if-eqz v8, :cond_6

    return-void

    :cond_6
    if-nez v11, :cond_a

    .line 314
    array-length v8, v10

    const/4 v11, 0x0

    :goto_5
    const-wide/16 v14, 0x1

    if-ge v11, v8, :cond_8

    aget-object v5, v10, v11

    .line 315
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/cr$a;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 316
    iget-object v6, v5, Lio/reactivex/internal/operators/flowable/cr$a;->a:Lorg/b/c;

    invoke-interface {v6, v9}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    move/from16 v16, v8

    move-object v6, v9

    .line 317
    iget-wide v8, v5, Lio/reactivex/internal/operators/flowable/cr$a;->c:J

    add-long/2addr v8, v14

    iput-wide v8, v5, Lio/reactivex/internal/operators/flowable/cr$a;->c:J

    goto :goto_6

    :cond_7
    move/from16 v16, v8

    move-object v6, v9

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object v9, v6

    move/from16 v8, v16

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_9

    .line 323
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/cr$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/b/d;

    int-to-long v6, v3

    invoke-interface {v5, v6, v7}, Lorg/b/d;->request(J)V

    const/4 v7, 0x0

    :cond_9
    sub-long/2addr v12, v14

    .line 327
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v10, v5, :cond_d

    const-wide/16 v5, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 296
    invoke-static {v3}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 297
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/cr$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 298
    invoke-interface {v2}, Lio/reactivex/internal/b/j;->clear()V

    const/4 v5, 0x1

    .line 299
    iput-boolean v5, v1, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    .line 300
    invoke-direct {v1, v3}, Lio/reactivex/internal/operators/flowable/cr$b;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v5, 0x1

    .line 332
    iget-boolean v6, v1, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    invoke-interface {v2}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v8

    invoke-direct {v1, v6, v8}, Lio/reactivex/internal/operators/flowable/cr$b;->a(ZZ)Z

    move-result v6

    if-eqz v6, :cond_c

    return-void

    :cond_b
    const/4 v5, 0x1

    .line 337
    :cond_c
    iput v7, v1, Lio/reactivex/internal/operators/flowable/cr$b;->j:I

    neg-int v0, v0

    .line 338
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/cr$b;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_e

    if-nez v2, :cond_d

    .line 343
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method final a(Lio/reactivex/internal/operators/flowable/cr$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/cr$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 406
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 407
    array-length v1, v0

    if-eqz v1, :cond_5

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 416
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v2, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 430
    sget-object v1, Lio/reactivex/internal/operators/flowable/cr$b;->k:[Lio/reactivex/internal/operators/flowable/cr$a;

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v1, -0x1

    .line 433
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/cr$a;

    .line 435
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 437
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 440
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    return-void
.end method

.method public final dispose()V
    .locals 2

    .line 190
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/cr$b;->l:[Lio/reactivex/internal/operators/flowable/cr$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    .line 255
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 246
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    .line 248
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 232
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/cr$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_1

    .line 205
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    const/4 v1, 0x7

    .line 207
    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 209
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->g:I

    .line 210
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    .line 211
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/cr$b;->h:Z

    .line 212
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cr$b;->a()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 216
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->g:I

    .line 217
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    .line 218
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 223
    :cond_1
    new-instance v0, Lio/reactivex/internal/d/b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/cr$b;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->f:Lio/reactivex/internal/b/j;

    .line 225
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cr$b;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_2
    return-void
.end method
