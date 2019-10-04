.class final Lio/reactivex/internal/operators/c/aw$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# static fields
.field static final k:[Lio/reactivex/internal/operators/c/aw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/c/aw$a<",
            "**>;"
        }
    .end annotation
.end field

.field static final l:[Lio/reactivex/internal/operators/c/aw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/c/aw$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/internal/util/b;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/c/aw$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field m:Lio/reactivex/b/c;

.field n:J

.field o:J

.field p:I

.field q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/ae<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 78
    sput-object v1, Lio/reactivex/internal/operators/c/aw$b;->k:[Lio/reactivex/internal/operators/c/aw$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 80
    sput-object v0, Lio/reactivex/internal/operators/c/aw$b;->l:[Lio/reactivex/internal/operators/c/aw$a;

    return-void
.end method

.method constructor <init>(Lio/reactivex/ag;Lio/reactivex/e/h;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TU;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ae<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    new-instance v0, Lio/reactivex/internal/util/b;

    invoke-direct {v0}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/c/aw$b;->b:Lio/reactivex/e/h;

    .line 96
    iput-boolean p3, p0, Lio/reactivex/internal/operators/c/aw$b;->c:Z

    .line 97
    iput p4, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    .line 98
    iput p5, p0, Lio/reactivex/internal/operators/c/aw$b;->e:I

    const p1, 0x7fffffff

    if-eq p4, p1, :cond_0

    .line 100
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$b;->q:Ljava/util/Queue;

    .line 102
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/c/aw$b;->k:[Lio/reactivex/internal/operators/c/aw$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Lio/reactivex/ae;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TU;>;)V"
        }
    .end annotation

    .line 145
    :goto_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 146
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/aw$b;->a(Ljava/util/concurrent/Callable;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ae;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 151
    iget p1, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    const/4 p1, 0x1

    .line 154
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void

    :cond_1
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 163
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/c/aw$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/aw$b;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/internal/operators/c/aw$b;->n:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/c/aw$a;-><init>(Lio/reactivex/internal/operators/c/aw$b;J)V

    .line 164
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/c/aw$b;->a(Lio/reactivex/internal/operators/c/aw$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_3
    return-void
.end method

.method private a(Lio/reactivex/internal/operators/c/aw$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/aw$a<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 174
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 175
    sget-object v1, Lio/reactivex/internal/operators/c/aw$b;->l:[Lio/reactivex/internal/operators/c/aw$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 176
    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/aw$a;->dispose()V

    return v2

    .line 179
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 180
    new-array v3, v3, [Lio/reactivex/internal/operators/c/aw$a;

    .line 181
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    aput-object p1, v3, v1

    .line 183
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/util/concurrent/Callable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 223
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2, v0}, Lio/reactivex/internal/operators/c/aw$b;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    invoke-interface {v1, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 241
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->f:Lio/reactivex/internal/b/i;

    if-nez v1, :cond_3

    .line 243
    iget v1, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 244
    new-instance v1, Lio/reactivex/internal/d/c;

    iget v3, p0, Lio/reactivex/internal/operators/c/aw$b;->e:I

    invoke-direct {v1, v3}, Lio/reactivex/internal/d/c;-><init>(I)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v3, Lio/reactivex/internal/d/b;

    invoke-direct {v3, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    move-object v1, v3

    .line 248
    :goto_0
    iput-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->f:Lio/reactivex/internal/b/i;

    .line 251
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 252
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar queue full?!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/aw$b;->onError(Ljava/lang/Throwable;)V

    return v0

    .line 255
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 259
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->b()V

    return v0

    :catchall_0
    move-exception p1

    .line 225
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 226
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return v0
.end method

.method private b(Lio/reactivex/internal/operators/c/aw$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/aw$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 191
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 192
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 198
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 208
    sget-object v1, Lio/reactivex/internal/operators/c/aw$b;->k:[Lio/reactivex/internal/operators/c/aw$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 210
    new-array v5, v5, [Lio/reactivex/internal/operators/c/aw$a;

    .line 211
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 212
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 214
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private d()Z
    .locals 3

    .line 488
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 491
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 492
    iget-boolean v2, p0, Lio/reactivex/internal/operators/c/aw$b;->c:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->c()Z

    .line 494
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 495
    sget-object v2, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 496
    iget-object v2, p0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    invoke-interface {v2, v0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 14

    .line 331
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 334
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 337
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/c/aw$b;->f:Lio/reactivex/internal/b/i;

    if-eqz v3, :cond_3

    .line 341
    :goto_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 345
    :cond_2
    invoke-interface {v3}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 351
    invoke-interface {v0, v4}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-boolean v3, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    .line 356
    iget-object v4, p0, Lio/reactivex/internal/operators/c/aw$b;->f:Lio/reactivex/internal/b/i;

    .line 357
    iget-object v5, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/internal/operators/c/aw$a;

    .line 358
    array-length v6, v5

    .line 361
    iget v7, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    const v8, 0x7fffffff

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/c/aw$b;->q:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    .line 364
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v3, :cond_8

    if-eqz v4, :cond_5

    .line 367
    invoke-interface {v4}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    .line 368
    iget-object v1, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v1}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 369
    sget-object v2, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v1, v2, :cond_7

    if-nez v1, :cond_6

    .line 371
    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V

    return-void

    .line 373
    :cond_6
    invoke-interface {v0, v1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    :cond_7
    return-void

    :cond_8
    if-eqz v6, :cond_17

    .line 381
    iget-wide v3, p0, Lio/reactivex/internal/operators/c/aw$b;->o:J

    .line 382
    iget v7, p0, Lio/reactivex/internal/operators/c/aw$b;->p:I

    if-le v6, v7, :cond_9

    .line 384
    aget-object v10, v5, v7

    iget-wide v10, v10, Lio/reactivex/internal/operators/c/aw$a;->a:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_d

    :cond_9
    if-gt v6, v7, :cond_a

    const/4 v7, 0x0

    :cond_a
    move v10, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_c

    .line 390
    aget-object v11, v5, v10

    iget-wide v11, v11, Lio/reactivex/internal/operators/c/aw$a;->a:J

    cmp-long v13, v11, v3

    if-eqz v13, :cond_c

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_b

    const/4 v10, 0x0

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 399
    :cond_c
    iput v10, p0, Lio/reactivex/internal/operators/c/aw$b;->p:I

    .line 400
    aget-object v3, v5, v10

    iget-wide v3, v3, Lio/reactivex/internal/operators/c/aw$a;->a:J

    iput-wide v3, p0, Lio/reactivex/internal/operators/c/aw$b;->o:J

    move v7, v10

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v6, :cond_16

    .line 406
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v10

    if-eqz v10, :cond_e

    return-void

    .line 411
    :cond_e
    aget-object v10, v5, v7

    .line 412
    iget-object v11, v10, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    if-eqz v11, :cond_11

    .line 417
    :cond_f
    :try_start_1
    invoke-interface {v11}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_11

    .line 437
    invoke-interface {v0, v12}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    .line 439
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v12

    if-eqz v12, :cond_f

    return-void

    :catchall_1
    move-exception v11

    .line 419
    invoke-static {v11}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 420
    invoke-virtual {v10}, Lio/reactivex/internal/operators/c/aw$a;->dispose()V

    .line 421
    iget-object v12, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v12, v11}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 422
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v11

    if-eqz v11, :cond_10

    return-void

    .line 425
    :cond_10
    invoke-direct {p0, v10}, Lio/reactivex/internal/operators/c/aw$b;->b(Lio/reactivex/internal/operators/c/aw$a;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_15

    goto :goto_4

    .line 445
    :cond_11
    iget-boolean v11, v10, Lio/reactivex/internal/operators/c/aw$a;->c:Z

    .line 446
    iget-object v12, v10, Lio/reactivex/internal/operators/c/aw$a;->d:Lio/reactivex/internal/b/j;

    if-eqz v11, :cond_14

    if-eqz v12, :cond_12

    .line 447
    invoke-interface {v12}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 448
    :cond_12
    invoke-direct {p0, v10}, Lio/reactivex/internal/operators/c/aw$b;->b(Lio/reactivex/internal/operators/c/aw$a;)V

    .line 449
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/aw$b;->d()Z

    move-result v10

    if-eqz v10, :cond_13

    return-void

    :cond_13
    add-int/lit8 v4, v4, 0x1

    :cond_14
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_15

    :goto_4
    const/4 v7, 0x0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 460
    :cond_16
    iput v7, p0, Lio/reactivex/internal/operators/c/aw$b;->p:I

    .line 461
    aget-object v3, v5, v7

    iget-wide v5, v3, Lio/reactivex/internal/operators/c/aw$a;->a:J

    iput-wide v5, p0, Lio/reactivex/internal/operators/c/aw$b;->o:J

    goto :goto_5

    :cond_17
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_19

    .line 465
    iget v3, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    if-eq v3, v8, :cond_0

    :goto_6
    add-int/lit8 v3, v4, -0x1

    if-eqz v4, :cond_0

    .line 468
    monitor-enter p0

    .line 469
    :try_start_2
    iget-object v4, p0, Lio/reactivex/internal/operators/c/aw$b;->q:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/ae;

    if-nez v4, :cond_18

    .line 471
    iget v4, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    sub-int/2addr v4, v1

    iput v4, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    .line 472
    monitor-exit p0

    goto :goto_7

    .line 474
    :cond_18
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 475
    invoke-direct {p0, v4}, Lio/reactivex/internal/operators/c/aw$b;->a(Lio/reactivex/ae;)V

    :goto_7
    move v4, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 474
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_19
    neg-int v2, v2

    .line 480
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/c/aw$b;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method final c()Z
    .locals 4

    .line 504
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->m:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 505
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 506
    sget-object v1, Lio/reactivex/internal/operators/c/aw$b;->l:[Lio/reactivex/internal/operators/c/aw$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 507
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/c/aw$a;

    .line 508
    sget-object v1, Lio/reactivex/internal/operators/c/aw$b;->l:[Lio/reactivex/internal/operators/c/aw$a;

    if-eq v0, v1, :cond_1

    .line 509
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 510
    invoke-virtual {v3}, Lio/reactivex/internal/operators/c/aw$a;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public final dispose()V
    .locals 2

    .line 308
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->i:Z

    .line 310
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v1, Lio/reactivex/internal/util/h;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 313
    invoke-static {v0}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->i:Z

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    .line 303
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->h:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    .line 291
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/aw$b;->a()V

    return-void

    .line 293
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

    .line 116
    iget-boolean v0, p0, Lio/reactivex/internal/operators/c/aw$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->b:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    iget v0, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget v0, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    iget v1, p0, Lio/reactivex/internal/operators/c/aw$b;->d:I

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/c/aw$b;->r:I

    .line 136
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 139
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/c/aw$b;->a(Lio/reactivex/ae;)V

    return-void

    :catchall_1
    move-exception p1

    .line 123
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->m:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 125
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/aw$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/c/aw$b;->m:Lio/reactivex/b/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/b/c;Lio/reactivex/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lio/reactivex/internal/operators/c/aw$b;->m:Lio/reactivex/b/c;

    .line 109
    iget-object p1, p0, Lio/reactivex/internal/operators/c/aw$b;->a:Lio/reactivex/ag;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
