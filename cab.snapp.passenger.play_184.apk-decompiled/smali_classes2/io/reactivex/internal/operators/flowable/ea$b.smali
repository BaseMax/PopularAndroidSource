.class final Lio/reactivex/internal/operators/flowable/ea$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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


# static fields
.field static final k:Lio/reactivex/internal/operators/flowable/ea$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/ea$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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

.field final d:Z

.field volatile e:Z

.field final f:Lio/reactivex/internal/util/b;

.field volatile g:Z

.field h:Lorg/b/d;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/ea$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile l:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lio/reactivex/internal/operators/flowable/ea$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/ea$a;-><init>(Lio/reactivex/internal/operators/flowable/ea$b;JI)V

    .line 74
    sput-object v0, Lio/reactivex/internal/operators/flowable/ea$b;->k:Lio/reactivex/internal/operators/flowable/ea$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ea$a;->cancel()V

    return-void
.end method

.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->a:Lorg/b/c;

    .line 83
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ea$b;->b:Lio/reactivex/e/h;

    .line 84
    iput p3, p0, Lio/reactivex/internal/operators/flowable/ea$b;->c:I

    .line 85
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    .line 86
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    return-void
.end method

.method private b()V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/ea$a;

    .line 182
    sget-object v1, Lio/reactivex/internal/operators/flowable/ea$b;->k:Lio/reactivex/internal/operators/flowable/ea$a;

    if-eq v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/ea$a;

    .line 184
    sget-object v1, Lio/reactivex/internal/operators/flowable/ea$b;->k:Lio/reactivex/internal/operators/flowable/ea$a;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/ea$a;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 17

    move-object/from16 v1, p0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ea$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/ea$b;->a:Lorg/b/c;

    const/4 v4, 0x1

    .line 201
    :cond_1
    :goto_0
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->g:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 206
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    if-eqz v0, :cond_6

    .line 207
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 209
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 213
    :cond_3
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    .line 218
    :cond_4
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 220
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ea$b;->b()V

    .line 221
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 224
    :cond_5
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 225
    invoke-interface {v2}, Lorg/b/c;->onComplete()V

    return-void

    .line 231
    :cond_6
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/reactivex/internal/operators/flowable/ea$a;

    if-eqz v6, :cond_7

    .line 232
    iget-object v0, v6, Lio/reactivex/internal/operators/flowable/ea$a;->d:Lio/reactivex/internal/b/j;

    move-object v7, v0

    goto :goto_1

    :cond_7
    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_14

    .line 234
    iget-boolean v0, v6, Lio/reactivex/internal/operators/flowable/ea$a;->e:Z

    if-eqz v0, :cond_a

    .line 235
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    if-nez v0, :cond_9

    .line 236
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 238
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/ea$b;->b()V

    .line 239
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 242
    :cond_8
    invoke-interface {v7}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 247
    :cond_9
    invoke-interface {v7}, Lio/reactivex/internal/b/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 254
    :cond_a
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_2
    const/4 v14, 0x0

    cmp-long v0, v12, v8

    if-eqz v0, :cond_11

    .line 259
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->g:Z

    if-eqz v0, :cond_b

    return-void

    .line 263
    :cond_b
    iget-boolean v0, v6, Lio/reactivex/internal/operators/flowable/ea$a;->e:Z

    .line 267
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/internal/b/j;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 269
    invoke-static {v15}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/ea$a;->cancel()V

    .line 271
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, v15}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-object v15, v5

    const/4 v0, 0x1

    :goto_3
    if-nez v15, :cond_c

    const/16 v16, 0x1

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    .line 277
    :goto_4
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v6, v3, :cond_d

    :goto_5
    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    if-eqz v0, :cond_10

    .line 283
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    if-nez v0, :cond_f

    .line 284
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    .line 286
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    if-eqz v16, :cond_10

    .line 290
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    if-eqz v16, :cond_10

    .line 296
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    if-nez v16, :cond_11

    .line 307
    invoke-interface {v2, v15}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    goto :goto_2

    :cond_11
    :goto_6
    cmp-long v0, v12, v10

    if-eqz v0, :cond_13

    .line 313
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->g:Z

    if-nez v0, :cond_13

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/ea$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v12

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 317
    :cond_12
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/ea$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0, v12, v13}, Lorg/b/d;->request(J)V

    :cond_13
    if-nez v14, :cond_1

    :cond_14
    neg-int v0, v4

    .line 326
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/ea$b;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->g:Z

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 175
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ea$b;->b()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->f:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->d:Z

    if-nez p1, :cond_0

    .line 139
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ea$b;->b()V

    :cond_0
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    return-void

    .line 144
    :cond_1
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 104
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    .line 106
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/ea$a;

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/ea$a;->cancel()V

    .line 113
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ea$b;->b:Lio/reactivex/e/h;

    invoke-interface {v2, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The publisher returned is null"

    invoke-static {p1, v2}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v2, Lio/reactivex/internal/operators/flowable/ea$a;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/ea$b;->c:I

    invoke-direct {v2, p0, v0, v1, v3}, Lio/reactivex/internal/operators/flowable/ea$a;-><init>(Lio/reactivex/internal/operators/flowable/ea$b;JI)V

    .line 124
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/ea$a;

    .line 125
    sget-object v1, Lio/reactivex/internal/operators/flowable/ea$b;->k:Lio/reactivex/internal/operators/flowable/ea$a;

    if-eq v0, v1, :cond_3

    .line 128
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-interface {p1, v2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ea$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    .line 93
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->a:Lorg/b/c;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 3

    .line 159
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ea$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 161
    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->l:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 162
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ea$b;->h:Lorg/b/d;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ea$b;->a()V

    :cond_1
    return-void
.end method