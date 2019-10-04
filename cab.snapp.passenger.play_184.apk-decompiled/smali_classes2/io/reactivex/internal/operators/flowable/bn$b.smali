.class public final Lio/reactivex/internal/operators/flowable/bn$b;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/a<",
        "Lio/reactivex/d/b<",
        "TK;TV;>;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final i:Ljava/lang/Object;


# instance fields
.field final a:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/d/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/reactivex/internal/operators/flowable/bn$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "Lio/reactivex/d/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/bn$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field j:Lorg/b/d;

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final l:Ljava/util/concurrent/atomic/AtomicLong;

.field final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field n:Ljava/lang/Throwable;

.field volatile o:Z

.field p:Z

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/bn$b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Lio/reactivex/e/h;IZLjava/util/Map;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/d/b<",
            "TK;TV;>;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/reactivex/internal/operators/flowable/bn$c<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/bn$c<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->a:Lorg/b/c;

    .line 116
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/bn$b;->b:Lio/reactivex/e/h;

    .line 117
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/bn$b;->c:Lio/reactivex/e/h;

    .line 118
    iput p4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->d:I

    .line 119
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/bn$b;->e:Z

    .line 120
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    .line 121
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/bn$b;->h:Ljava/util/Queue;

    .line 122
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p4}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    return-void
.end method

.method private a()V
    .locals 2

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->h:Ljava/util/Queue;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/bn$c;

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/bn$c;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 254
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_1
    return-void
.end method

.method private a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/b/c<",
            "*>;",
            "Lio/reactivex/internal/d/c<",
            "*>;)Z"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p4}, Lio/reactivex/internal/d/c;->clear()V

    return v1

    .line 380
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 382
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 384
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_4

    .line 392
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 394
    invoke-virtual {p4}, Lio/reactivex/internal/d/c;->clear()V

    .line 395
    invoke-interface {p3, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 398
    invoke-interface {p3}, Lorg/b/c;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->q:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->c()V

    return-void

    .line 279
    :cond_1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->d()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 286
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    .line 287
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->a:Lorg/b/c;

    const/4 v2, 0x1

    .line 290
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/bn$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void

    .line 295
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/bn$b;->o:Z

    if-eqz v3, :cond_2

    .line 297
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->e:Z

    if-nez v4, :cond_2

    .line 298
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->n:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 300
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    .line 301
    invoke-interface {v1, v4}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 306
    invoke-interface {v1, v4}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 309
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->n:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 311
    invoke-interface {v1, v0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 313
    :cond_3
    invoke-interface {v1}, Lorg/b/c;->onComplete()V

    return-void

    :cond_4
    neg-int v2, v2

    .line 318
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/bn$b;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method private d()V
    .locals 13

    .line 328
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    .line 329
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->a:Lorg/b/c;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 333
    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_3

    .line 337
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/bn$b;->o:Z

    .line 339
    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/d/b;

    if-nez v11, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 343
    :goto_1
    invoke-direct {p0, v10, v12, v1, v0}, Lio/reactivex/internal/operators/flowable/bn$b;->a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    return-void

    :cond_2
    if-nez v12, :cond_3

    .line 351
    invoke-interface {v1, v11}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_3
    cmp-long v10, v8, v4

    if-nez v10, :cond_4

    .line 356
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/bn$b;->o:Z

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v11

    invoke-direct {p0, v10, v11, v1, v0}, Lio/reactivex/internal/operators/flowable/bn$b;->a(ZZLorg/b/c;Lio/reactivex/internal/d/c;)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_5

    .line 362
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 364
    :cond_5
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {v4, v8, v9}, Lorg/b/d;->request(J)V

    :cond_6
    neg-int v3, v3

    .line 367
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/bn$b;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 237
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->a()V

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final cancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/flowable/bn$b;->i:Ljava/lang/Object;

    .line 261
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 265
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 266
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    invoke-virtual {p1}, Lio/reactivex/internal/d/c;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 424
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->p:Z

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/bn$c;

    .line 213
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/bn$c;->onComplete()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->h:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->p:Z

    .line 220
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->o:Z

    .line 221
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->b()V

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 192
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->p:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->p:Z

    .line 197
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/bn$c;

    .line 198
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/flowable/bn$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 201
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->h:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 202
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 204
    :cond_2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->n:Ljava/lang/Throwable;

    .line 205
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->o:Z

    .line 206
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->b()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    .line 144
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->b:Lio/reactivex/e/h;

    invoke-interface {v1, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    .line 153
    :cond_1
    sget-object v3, Lio/reactivex/internal/operators/flowable/bn$b;->i:Ljava/lang/Object;

    .line 154
    :goto_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/internal/operators/flowable/bn$c;

    if-nez v4, :cond_3

    .line 158
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/bn$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 162
    :cond_2
    iget v2, p0, Lio/reactivex/internal/operators/flowable/bn$b;->d:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/bn$b;->e:Z

    invoke-static {v1, v2, p0, v4}, Lio/reactivex/internal/operators/flowable/bn$c;->createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/bn$b;Z)Lio/reactivex/internal/operators/flowable/bn$c;

    move-result-object v4

    .line 163
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->f:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v2, 0x1

    .line 172
    :cond_3
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->c:Lio/reactivex/e/h;

    invoke-interface {v1, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The valueSelector returned null"

    invoke-static {p1, v1}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v4, p1}, Lio/reactivex/internal/operators/flowable/bn$c;->onNext(Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->a()V

    if-eqz v2, :cond_4

    .line 185
    invoke-virtual {v0, v4}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->b()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 174
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 176
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bn$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 146
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 148
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/bn$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->j:Lorg/b/d;

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->a:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 130
    iget v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Lio/reactivex/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/d/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->g:Lio/reactivex/internal/d/c;

    invoke-virtual {v0}, Lio/reactivex/internal/d/c;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/d/b;

    return-object v0
.end method

.method public final bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->poll()Lio/reactivex/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 1

    .line 227
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/bn$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/c;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 229
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/bn$b;->b()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/bn$b;->q:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
