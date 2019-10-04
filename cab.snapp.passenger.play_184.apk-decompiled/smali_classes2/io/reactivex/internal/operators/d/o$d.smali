.class final Lio/reactivex/internal/operators/d/o$d;
.super Lio/reactivex/internal/operators/d/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/d/o$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final k:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;I",
            "Lio/reactivex/internal/d/b<",
            "TT;>;",
            "Lio/reactivex/ah$c;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/d/o$a;-><init>(ILio/reactivex/internal/d/b;Lio/reactivex/ah$c;)V

    .line 211
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o$d;->k:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o$d;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o$d;->e:Lorg/b/d;

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o$d;->k:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 221
    iget v0, p0, Lio/reactivex/internal/operators/d/o$d;->a:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 228
    iget v1, v0, Lio/reactivex/internal/operators/d/o$d;->j:I

    .line 229
    iget-object v2, v0, Lio/reactivex/internal/operators/d/o$d;->c:Lio/reactivex/internal/d/b;

    .line 230
    iget-object v3, v0, Lio/reactivex/internal/operators/d/o$d;->k:Lorg/b/c;

    .line 231
    iget v4, v0, Lio/reactivex/internal/operators/d/o$d;->b:I

    move v6, v1

    const/4 v1, 0x1

    .line 235
    :cond_0
    :goto_0
    iget-object v7, v0, Lio/reactivex/internal/operators/d/o$d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_1
    :goto_1
    cmp-long v13, v11, v7

    if-eqz v13, :cond_6

    .line 239
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/o$d;->i:Z

    if-eqz v13, :cond_2

    .line 240
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    return-void

    .line 244
    :cond_2
    iget-boolean v13, v0, Lio/reactivex/internal/operators/d/o$d;->f:Z

    if-eqz v13, :cond_3

    .line 247
    iget-object v14, v0, Lio/reactivex/internal/operators/d/o$d;->g:Ljava/lang/Throwable;

    if-eqz v14, :cond_3

    .line 249
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    .line 251
    invoke-interface {v3, v14}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 253
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$d;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 258
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->poll()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v16, :cond_5

    .line 263
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    .line 265
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$d;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_5
    if-nez v16, :cond_6

    .line 273
    invoke-interface {v3, v14}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_1

    .line 280
    iget-object v13, v0, Lio/reactivex/internal/operators/d/o$d;->e:Lorg/b/d;

    int-to-long v5, v6

    invoke-interface {v13, v5, v6}, Lorg/b/d;->request(J)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    cmp-long v5, v11, v7

    if-nez v5, :cond_9

    .line 285
    iget-boolean v5, v0, Lio/reactivex/internal/operators/d/o$d;->i:Z

    if-eqz v5, :cond_7

    .line 286
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    return-void

    .line 290
    :cond_7
    iget-boolean v5, v0, Lio/reactivex/internal/operators/d/o$d;->f:Z

    if-eqz v5, :cond_9

    .line 291
    iget-object v5, v0, Lio/reactivex/internal/operators/d/o$d;->g:Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 293
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->clear()V

    .line 295
    invoke-interface {v3, v5}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 297
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$d;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 300
    :cond_8
    invoke-virtual {v2}, Lio/reactivex/internal/d/b;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 301
    invoke-interface {v3}, Lorg/b/c;->onComplete()V

    .line 303
    iget-object v1, v0, Lio/reactivex/internal/operators/d/o$d;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :cond_9
    cmp-long v5, v11, v9

    if-eqz v5, :cond_a

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v5, v7, v9

    if-eqz v5, :cond_a

    .line 310
    iget-object v5, v0, Lio/reactivex/internal/operators/d/o$d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v11

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 313
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/d/o$d;->get()I

    move-result v5

    if-ne v5, v1, :cond_b

    .line 315
    iput v6, v0, Lio/reactivex/internal/operators/d/o$d;->j:I

    neg-int v1, v1

    .line 316
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/d/o$d;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_b
    move v1, v5

    goto/16 :goto_0
.end method
