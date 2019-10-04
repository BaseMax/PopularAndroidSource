.class final Lio/reactivex/internal/operators/flowable/cf$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cf$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "-TT;>;"
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

.field final c:Lio/reactivex/internal/operators/flowable/cf$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/cf$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/util/b;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:I

.field final g:I

.field volatile h:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile j:Z

.field volatile k:Z

.field volatile l:I

.field m:J

.field n:I


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->a:Lorg/b/c;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance p1, Lio/reactivex/internal/operators/flowable/cf$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/cf$a$a;-><init>(Lio/reactivex/internal/operators/flowable/cf$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->c:Lio/reactivex/internal/operators/flowable/cf$a$a;

    .line 94
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->f:I

    .line 97
    iget p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->f:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->g:I

    return-void
.end method

.method private c()Lio/reactivex/internal/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lio/reactivex/internal/d/b;

    invoke-static {}, Lio/reactivex/j;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/d/b;-><init>(I)V

    .line 219
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    :cond_0
    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 18

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/cf$a;->a:Lorg/b/c;

    .line 233
    iget-wide v2, v0, Lio/reactivex/internal/operators/flowable/cf$a;->m:J

    .line 234
    iget v4, v0, Lio/reactivex/internal/operators/flowable/cf$a;->n:I

    .line 235
    iget v5, v0, Lio/reactivex/internal/operators/flowable/cf$a;->g:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 238
    :goto_0
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/cf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x0

    cmp-long v13, v2, v8

    if-eqz v13, :cond_7

    .line 241
    iget-boolean v13, v0, Lio/reactivex/internal/operators/flowable/cf$a;->j:Z

    if-eqz v13, :cond_0

    .line 242
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 243
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    return-void

    .line 247
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v13}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 248
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 249
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    .line 250
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 254
    :cond_1
    iget v13, v0, Lio/reactivex/internal/operators/flowable/cf$a;->l:I

    const-wide/16 v14, 0x1

    if-ne v13, v6, :cond_2

    .line 256
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 257
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 258
    iput v11, v0, Lio/reactivex/internal/operators/flowable/cf$a;->l:I

    .line 260
    invoke-interface {v1, v10}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v14

    goto :goto_1

    .line 266
    :cond_2
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/cf$a;->k:Z

    .line 267
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    if-eqz v10, :cond_3

    .line 268
    invoke-interface {v10}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v12

    :goto_2
    if-nez v10, :cond_4

    const/16 v17, 0x1

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v17, :cond_5

    if-ne v13, v11, :cond_5

    .line 272
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    .line 273
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_5
    if-nez v17, :cond_7

    .line 281
    invoke-interface {v1, v10}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_6

    .line 287
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/d;

    int-to-long v10, v5

    invoke-interface {v4, v10, v11}, Lorg/b/d;->request(J)V

    const/4 v4, 0x0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    cmp-long v6, v2, v8

    if-nez v6, :cond_c

    .line 292
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/cf$a;->j:Z

    if-eqz v6, :cond_8

    .line 293
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 294
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    return-void

    .line 298
    :cond_8
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v6}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 299
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    .line 300
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    .line 301
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v2}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 305
    :cond_9
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/cf$a;->k:Z

    .line 306
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    if-eqz v8, :cond_b

    .line 307
    invoke-interface {v8}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_4

    :cond_a
    const/16 v16, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v16, 0x1

    :goto_5
    if-eqz v6, :cond_c

    if-eqz v16, :cond_c

    .line 309
    iget v6, v0, Lio/reactivex/internal/operators/flowable/cf$a;->l:I

    if-ne v6, v11, :cond_c

    .line 310
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    .line 311
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    .line 316
    :cond_c
    iput-wide v2, v0, Lio/reactivex/internal/operators/flowable/cf$a;->m:J

    .line 317
    iput v4, v0, Lio/reactivex/internal/operators/flowable/cf$a;->n:I

    neg-int v6, v7

    .line 318
    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/cf$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_d

    return-void

    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->j:Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->c:Lio/reactivex/internal/operators/flowable/cf$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    .line 172
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->i:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->k:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->d:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->a()V

    return-void

    .line 149
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/flowable/cf$a;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/cf$a;->m:J

    .line 109
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/cf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    .line 110
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/cf$a;->h:Lio/reactivex/internal/b/i;

    if-eqz v4, :cond_1

    .line 111
    invoke-interface {v4}, Lio/reactivex/internal/b/i;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 113
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/cf$a;->m:J

    .line 114
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cf$a;->a:Lorg/b/c;

    invoke-interface {v2, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 116
    iget p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->n:I

    add-int/2addr p1, v0

    .line 117
    iget v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->g:I

    if-ne p1, v0, :cond_2

    .line 118
    iput v1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->n:I

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_1

    .line 121
    :cond_2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->n:I

    goto :goto_1

    .line 127
    :cond_3
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->c()Lio/reactivex/internal/b/i;

    move-result-object v0

    .line 128
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 130
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 134
    :cond_4
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->c()Lio/reactivex/internal/b/i;

    move-result-object v0

    .line 135
    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 140
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->b()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/cf$a;->f:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cf$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/cf$a;->a()V

    return-void
.end method
