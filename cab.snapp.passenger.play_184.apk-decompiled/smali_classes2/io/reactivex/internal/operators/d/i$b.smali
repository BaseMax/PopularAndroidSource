.class final Lio/reactivex/internal/operators/d/i$b;
.super Lio/reactivex/internal/operators/d/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/i;
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
        "Lio/reactivex/internal/operators/d/i$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/d/i$c;-><init>(Lorg/b/c;II)V

    return-void
.end method

.method private d()V
    .locals 17

    move-object/from16 v0, p0

    .line 214
    iget-object v1, v0, Lio/reactivex/internal/operators/d/i$b;->b:[Lio/reactivex/internal/operators/d/i$a;

    .line 215
    array-length v2, v1

    .line 216
    iget-object v3, v0, Lio/reactivex/internal/operators/d/i$b;->a:Lorg/b/c;

    const/4 v5, 0x1

    .line 220
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/d/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1
    cmp-long v13, v10, v6

    if-eqz v13, :cond_8

    .line 225
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/i$b;->e:Z

    if-eqz v13, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$b;->c()V

    return-void

    .line 230
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/d/i$b;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v13}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    if-eqz v13, :cond_1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$b;->c()V

    .line 233
    invoke-interface {v3, v13}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 237
    :cond_1
    iget-object v13, v0, Lio/reactivex/internal/operators/d/i$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    move-wide v14, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 241
    :goto_3
    array-length v4, v1

    if-ge v10, v4, :cond_5

    .line 242
    aget-object v4, v1, v10

    .line 243
    iget-object v12, v4, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    if-eqz v12, :cond_4

    .line 245
    invoke-interface {v12}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 249
    invoke-interface {v3, v12}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v4}, Lio/reactivex/internal/operators/d/i$a;->requestOne()V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v14

    cmp-long v4, v11, v6

    if-eqz v4, :cond_3

    move-wide v14, v11

    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    move-wide v10, v11

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    if-eqz v13, :cond_6

    if-eqz v11, :cond_6

    .line 259
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    return-void

    :cond_6
    if-eqz v11, :cond_7

    move-wide v10, v14

    goto :goto_5

    :cond_7
    move-wide v10, v14

    goto :goto_1

    :cond_8
    :goto_5
    cmp-long v4, v10, v6

    if-nez v4, :cond_e

    .line 269
    iget-boolean v4, v0, Lio/reactivex/internal/operators/d/i$b;->e:Z

    if-eqz v4, :cond_9

    .line 270
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$b;->c()V

    return-void

    .line 274
    :cond_9
    iget-object v4, v0, Lio/reactivex/internal/operators/d/i$b;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v4}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    .line 276
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$b;->c()V

    .line 277
    invoke-interface {v3, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 281
    :cond_a
    iget-object v4, v0, Lio/reactivex/internal/operators/d/i$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v2, :cond_d

    .line 286
    aget-object v13, v1, v12

    .line 288
    iget-object v13, v13, Lio/reactivex/internal/operators/d/i$a;->e:Lio/reactivex/internal/b/i;

    if-eqz v13, :cond_c

    .line 289
    invoke-interface {v13}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    const/16 v16, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    const/16 v16, 0x1

    :goto_8
    if-eqz v4, :cond_e

    if-eqz v16, :cond_e

    .line 296
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    return-void

    :cond_e
    cmp-long v4, v10, v8

    if-eqz v4, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_f

    .line 302
    iget-object v4, v0, Lio/reactivex/internal/operators/d/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 305
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/i$b;->get()I

    move-result v4

    if-ne v4, v5, :cond_10

    neg-int v4, v5

    .line 307
    invoke-virtual {v0, v4}, Lio/reactivex/internal/operators/d/i$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    move v5, v4

    goto/16 :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/d/i$b;->d()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 199
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$b;->c:Lio/reactivex/internal/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/util/b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->b()V

    .line 188
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->a()V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$b;->c:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 191
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onNext(Lio/reactivex/internal/operators/d/i$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/d/i$a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->get()I

    move-result v0

    const-string v1, "Queue full?!"

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/d/i$b;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/d/i$b;->a:Lorg/b/c;

    invoke-interface {v0, p2}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 146
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    .line 149
    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/d/i$a;->request(J)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->a()Lio/reactivex/internal/b/i;

    move-result-object p1

    .line 153
    invoke-interface {p1, p2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->b()V

    .line 155
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$b;->c:Lio/reactivex/internal/util/b;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lio/reactivex/internal/util/b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 157
    iget-object p2, p0, Lio/reactivex/internal/operators/d/i$b;->a:Lorg/b/c;

    invoke-interface {p2, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 159
    :cond_2
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 164
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 168
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/d/i$a;->a()Lio/reactivex/internal/b/i;

    move-result-object p1

    .line 170
    invoke-interface {p1, p2}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 171
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->b()V

    .line 172
    new-instance p1, Lio/reactivex/c/c;

    invoke-direct {p1, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/i$b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 176
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/d/i$b;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 181
    :cond_6
    invoke-direct {p0}, Lio/reactivex/internal/operators/d/i$b;->d()V

    return-void
.end method
