.class final Lio/reactivex/internal/operators/flowable/fa$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/fa;
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

.field final b:[Lio/reactivex/internal/operators/flowable/fa$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/fa$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/internal/util/b;

.field final f:Z

.field volatile g:Z

.field final h:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$a;->a:Lorg/b/c;

    .line 107
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/fa$a;->c:Lio/reactivex/e/h;

    .line 108
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    .line 110
    new-array p1, p3, [Lio/reactivex/internal/operators/flowable/fa$b;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 112
    new-instance p5, Lio/reactivex/internal/operators/flowable/fa$b;

    invoke-direct {p5, p0, p4}, Lio/reactivex/internal/operators/flowable/fa$b;-><init>(Lio/reactivex/internal/operators/flowable/fa$a;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/fa$a;->h:[Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$a;->b:[Lio/reactivex/internal/operators/flowable/fa$b;

    .line 116
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    return-void
.end method

.method private b()V
    .locals 4

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$a;->b:[Lio/reactivex/internal/operators/flowable/fa$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/fa$b;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 17

    move-object/from16 v1, p0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/fa$a;->a:Lorg/b/c;

    .line 169
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/fa$a;->b:[Lio/reactivex/internal/operators/flowable/fa$b;

    .line 170
    array-length v4, v3

    .line 171
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/fa$a;->h:[Ljava/lang/Object;

    const/4 v7, 0x1

    .line 177
    :cond_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    :goto_0
    const/4 v14, 0x0

    cmp-long v0, v8, v12

    if-eqz v0, :cond_b

    .line 182
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->g:Z

    if-eqz v0, :cond_2

    return-void

    .line 186
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 188
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_a

    .line 195
    aget-object v15, v3, v6

    .line 196
    aget-object v16, v5, v6

    if-nez v16, :cond_9

    .line 198
    :try_start_0
    iget-boolean v10, v15, Lio/reactivex/internal/operators/flowable/fa$b;->f:Z

    .line 199
    iget-object v11, v15, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    if-eqz v11, :cond_4

    .line 201
    invoke-interface {v11}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v14

    :goto_2
    if-nez v11, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v10, :cond_7

    if-eqz v15, :cond_7

    .line 205
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 206
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 210
    :cond_6
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    :cond_7
    if-nez v15, :cond_8

    .line 215
    aput-object v11, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 220
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 222
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 223
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    if-nez v0, :cond_8

    .line 224
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 225
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    .line 240
    :try_start_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->c:Lio/reactivex/e/h;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "The zipper returned a null value"

    invoke-static {v0, v6}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    invoke-interface {v2, v0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    .line 253
    invoke-static {v5, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 242
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 243
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 244
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 245
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    cmp-long v0, v8, v12

    if-nez v0, :cond_13

    .line 257
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->g:Z

    if-eqz v0, :cond_c

    return-void

    .line 261
    :cond_c
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 262
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 263
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_13

    .line 268
    aget-object v0, v3, v6

    .line 269
    aget-object v10, v5, v6

    if-nez v10, :cond_12

    .line 271
    :try_start_2
    iget-boolean v10, v0, Lio/reactivex/internal/operators/flowable/fa$b;->f:Z

    .line 272
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/fa$b;->d:Lio/reactivex/internal/b/j;

    if-eqz v0, :cond_e

    .line 273
    invoke-interface {v0}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_e
    move-object v0, v14

    :goto_6
    if-nez v0, :cond_f

    const/4 v11, 0x1

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    if-eqz v10, :cond_11

    if-eqz v11, :cond_11

    .line 277
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 278
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    .line 280
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 282
    :cond_10
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    :cond_11
    if-nez v11, :cond_12

    .line 287
    aput-object v0, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 290
    invoke-static {v0}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 291
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 292
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->f:Z

    if-nez v0, :cond_12

    .line 293
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    .line 294
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_12
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_13
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_15

    .line 305
    array-length v0, v3

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v0, :cond_14

    aget-object v10, v3, v6

    .line 306
    invoke-virtual {v10, v12, v13}, Lio/reactivex/internal/operators/flowable/fa$b;->request(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_14
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_15

    .line 310
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/fa$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_15
    neg-int v0, v7

    .line 314
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/fa$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method final a(Lio/reactivex/internal/operators/flowable/fa$b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/fa$b<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 149
    iput-boolean p2, p1, Lio/reactivex/internal/operators/flowable/fa$b;->f:Z

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/fa$a;->a()V

    return-void

    .line 152
    :cond_0
    invoke-static {p2}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/fa$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/fa$a;->g:Z

    .line 143
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/fa$a;->b()V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 132
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/fa$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/fa$a;->a()V

    :cond_0
    return-void
.end method
