.class final Lio/reactivex/internal/operators/b/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/d$a$a;
    }
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
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/internal/util/b;

.field final f:Lio/reactivex/internal/operators/b/d$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/b/d$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/internal/util/ErrorMode;

.field i:Lorg/b/d;

.field volatile j:Z

.field volatile k:Z

.field l:J

.field m:I

.field n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile o:I


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->a:Lorg/b/c;

    .line 112
    iput-object p2, p0, Lio/reactivex/internal/operators/b/d$a;->b:Lio/reactivex/e/h;

    .line 113
    iput p3, p0, Lio/reactivex/internal/operators/b/d$a;->c:I

    .line 114
    iput-object p4, p0, Lio/reactivex/internal/operators/b/d$a;->h:Lio/reactivex/internal/util/ErrorMode;

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 116
    new-instance p1, Lio/reactivex/internal/util/b;

    invoke-direct {p1}, Lio/reactivex/internal/util/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->e:Lio/reactivex/internal/util/b;

    .line 117
    new-instance p1, Lio/reactivex/internal/operators/b/d$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/b/d$a$a;-><init>(Lio/reactivex/internal/operators/b/d$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->f:Lio/reactivex/internal/operators/b/d$a$a;

    .line 118
    new-instance p1, Lio/reactivex/internal/d/b;

    invoke-direct {p1, p3}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->g:Lio/reactivex/internal/b/i;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 15

    .line 200
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->a:Lorg/b/c;

    .line 206
    iget-object v1, p0, Lio/reactivex/internal/operators/b/d$a;->h:Lio/reactivex/internal/util/ErrorMode;

    .line 207
    iget-object v2, p0, Lio/reactivex/internal/operators/b/d$a;->g:Lio/reactivex/internal/b/i;

    .line 208
    iget-object v3, p0, Lio/reactivex/internal/operators/b/d$a;->e:Lio/reactivex/internal/util/b;

    .line 209
    iget-object v4, p0, Lio/reactivex/internal/operators/b/d$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    iget v5, p0, Lio/reactivex/internal/operators/b/d$a;->c:I

    shr-int/lit8 v6, v5, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 215
    :cond_1
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/internal/operators/b/d$a;->k:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 216
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 217
    iput-object v9, p0, Lio/reactivex/internal/operators/b/d$a;->n:Ljava/lang/Object;

    goto/16 :goto_3

    .line 221
    :cond_2
    iget v8, p0, Lio/reactivex/internal/operators/b/d$a;->o:I

    .line 223
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 224
    sget-object v10, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-eq v1, v10, :cond_3

    sget-object v10, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v1, v10, :cond_4

    if-nez v8, :cond_4

    .line 226
    :cond_3
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 227
    iput-object v9, p0, Lio/reactivex/internal/operators/b/d$a;->n:Ljava/lang/Object;

    .line 228
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v10, 0x0

    if-nez v8, :cond_9

    .line 235
    iget-boolean v8, p0, Lio/reactivex/internal/operators/b/d$a;->j:Z

    .line 236
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v8, :cond_7

    if-eqz v11, :cond_7

    .line 240
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 242
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void

    .line 244
    :cond_6
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-nez v11, :cond_a

    .line 253
    iget v8, p0, Lio/reactivex/internal/operators/b/d$a;->m:I

    add-int/2addr v8, v6

    if-ne v8, v5, :cond_8

    .line 255
    iput v10, p0, Lio/reactivex/internal/operators/b/d$a;->m:I

    .line 256
    iget-object v8, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    int-to-long v10, v5

    invoke-interface {v8, v10, v11}, Lorg/b/d;->request(J)V

    goto :goto_2

    .line 258
    :cond_8
    iput v8, p0, Lio/reactivex/internal/operators/b/d$a;->m:I

    .line 264
    :goto_2
    :try_start_0
    iget-object v8, p0, Lio/reactivex/internal/operators/b/d$a;->b:Lio/reactivex/e/h;

    invoke-interface {v8, v9}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "The mapper returned a null MaybeSource"

    invoke-static {v8, v9}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iput v6, p0, Lio/reactivex/internal/operators/b/d$a;->o:I

    .line 276
    iget-object v9, p0, Lio/reactivex/internal/operators/b/d$a;->f:Lio/reactivex/internal/operators/b/d$a$a;

    invoke-interface {v8, v9}, Lio/reactivex/w;->subscribe(Lio/reactivex/t;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 266
    invoke-static {v1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 267
    iget-object v4, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    invoke-interface {v4}, Lorg/b/d;->cancel()V

    .line 268
    invoke-interface {v2}, Lio/reactivex/internal/b/i;->clear()V

    .line 269
    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    .line 270
    invoke-virtual {v3}, Lio/reactivex/internal/util/b;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 271
    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    const/4 v11, 0x2

    if-ne v8, v11, :cond_a

    .line 279
    iget-wide v11, p0, Lio/reactivex/internal/operators/b/d$a;->l:J

    .line 280
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-eqz v8, :cond_a

    .line 281
    iget-object v8, p0, Lio/reactivex/internal/operators/b/d$a;->n:Ljava/lang/Object;

    .line 282
    iput-object v9, p0, Lio/reactivex/internal/operators/b/d$a;->n:Ljava/lang/Object;

    .line 284
    invoke-interface {v0, v8}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v11, v8

    .line 286
    iput-wide v11, p0, Lio/reactivex/internal/operators/b/d$a;->l:J

    .line 287
    iput v10, p0, Lio/reactivex/internal/operators/b/d$a;->o:I

    goto/16 :goto_0

    :cond_a
    :goto_3
    neg-int v7, v7

    .line 296
    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/b/d$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/d$a;->k:Z

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->f:Lio/reactivex/internal/operators/b/d$a$a;

    .line 2336
    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0}, Lio/reactivex/internal/b/i;->clear()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->n:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/reactivex/internal/operators/b/d$a;->j:Z

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->e:Lio/reactivex/internal/util/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/b;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->h:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->f:Lio/reactivex/internal/operators/b/d$a$a;

    .line 1336
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lio/reactivex/internal/operators/b/d$a;->j:Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->a()V

    return-void

    .line 149
    :cond_1
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

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->g:Lio/reactivex/internal/b/i;

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 134
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/b/d$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, Lio/reactivex/internal/operators/b/d$a;->i:Lorg/b/d;

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 126
    iget v0, p0, Lio/reactivex/internal/operators/b/d$a;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/operators/b/d$a;->a()V

    return-void
.end method
