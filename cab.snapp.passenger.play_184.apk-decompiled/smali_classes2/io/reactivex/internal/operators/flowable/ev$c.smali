.class final Lio/reactivex/internal/operators/flowable/ev$c;
.super Lio/reactivex/internal/f/n;
.source "SourceFile"

# interfaces
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/f/n<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lorg/b/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lio/reactivex/b/b;

.field e:Lorg/b/d;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/h/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/b/c;Lorg/b/b;Lio/reactivex/e/h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;",
            "Lorg/b/b<",
            "TB;>;",
            "Lio/reactivex/e/h<",
            "-TB;+",
            "Lorg/b/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 78
    new-instance v0, Lio/reactivex/internal/d/a;

    invoke-direct {v0}, Lio/reactivex/internal/d/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/f/n;-><init>(Lorg/b/c;Lio/reactivex/internal/b/i;)V

    .line 68
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ev$c;->a:Lorg/b/b;

    .line 80
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/ev$c;->b:Lio/reactivex/e/h;

    .line 81
    iput p4, p0, Lio/reactivex/internal/operators/flowable/ev$c;->c:I

    .line 82
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->g:Ljava/util/List;

    .line 84
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 190
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 191
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->queue:Lio/reactivex/internal/b/i;

    .line 196
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->n:Lorg/b/c;

    .line 197
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/ev$c;->g:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 203
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    .line 204
    invoke-interface {v0}, Lio/reactivex/internal/b/i;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 209
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->b()V

    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->p:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 212
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/h/c;

    .line 213
    invoke-virtual {v3, v0}, Lio/reactivex/h/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 216
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/h/c;

    .line 217
    invoke-virtual {v1}, Lio/reactivex/h/c;->onComplete()V

    goto :goto_3

    .line 220
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-nez v7, :cond_9

    .line 228
    instance-of v5, v6, Lio/reactivex/internal/operators/flowable/ev$d;

    if-eqz v5, :cond_8

    .line 230
    check-cast v6, Lio/reactivex/internal/operators/flowable/ev$d;

    .line 232
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/ev$d;->a:Lio/reactivex/h/c;

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_5

    .line 234
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/ev$d;->a:Lio/reactivex/h/c;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/ev$d;->a:Lio/reactivex/h/c;

    invoke-virtual {v5}, Lio/reactivex/h/c;->onComplete()V

    .line 237
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 238
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->b()V

    return-void

    .line 245
    :cond_5
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 249
    iget v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->c:I

    invoke-static {v5}, Lio/reactivex/h/c;->create(I)Lio/reactivex/h/c;

    move-result-object v5

    .line 251
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->requested()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_7

    .line 253
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v1, v5}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    const-wide/16 v7, 0x1

    .line 256
    invoke-virtual {p0, v7, v8}, Lio/reactivex/internal/operators/flowable/ev$c;->produced(J)J

    .line 267
    :cond_6
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/ev$c;->b:Lio/reactivex/e/h;

    iget-object v6, v6, Lio/reactivex/internal/operators/flowable/ev$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The publisher supplied is null"

    invoke-static {v6, v7}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    new-instance v7, Lio/reactivex/internal/operators/flowable/ev$a;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/flowable/ev$a;-><init>(Lio/reactivex/internal/operators/flowable/ev$c;Lio/reactivex/h/c;)V

    .line 276
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v5, v7}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 279
    invoke-interface {v6, v7}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 269
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->cancel()V

    .line 270
    invoke-interface {v1, v5}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 259
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->cancel()V

    .line 260
    new-instance v5, Lio/reactivex/c/c;

    const-string v6, "Could not deliver new window due to lack of requests"

    invoke-direct {v5, v6}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 285
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/h/c;

    .line 286
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    neg-int v4, v4

    .line 290
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/ev$c;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Lorg/b/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final cancel()V
    .locals 5

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->e:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 150
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    .line 155
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->a()V

    .line 159
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 163
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->n:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 130
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->p:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    .line 137
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->a()V

    .line 141
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 145
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->n:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/h/c;

    .line 114
    invoke-virtual {v1, p1}, Lio/reactivex/h/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 116
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/ev$c;->leave(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->queue:Lio/reactivex/internal/b/i;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/b/i;->offer(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->enter()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 125
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/ev$c;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->e:Lorg/b/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/b/d;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->e:Lorg/b/d;

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->n:Lorg/b/c;

    invoke-interface {v0, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ev$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/ev$b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/ev$b;-><init>(Lio/reactivex/internal/operators/flowable/ev$c;)V

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 101
    invoke-interface {p1, v1, v2}, Lorg/b/d;->request(J)V

    .line 102
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/ev$c;->a:Lorg/b/b;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_1
    return-void
.end method

.method public final request(J)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/ev$c;->requested(J)V

    return-void
.end method
