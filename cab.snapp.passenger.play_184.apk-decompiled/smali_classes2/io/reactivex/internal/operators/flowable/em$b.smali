.class final Lio/reactivex/internal/operators/flowable/em$b;
.super Lio/reactivex/internal/subscriptions/e;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/em$c;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/em;
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
        "Lio/reactivex/internal/subscriptions/e;",
        "Lio/reactivex/internal/operators/flowable/em$c;",
        "Lio/reactivex/o<",
        "TT;>;"
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

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/disposables/f;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field f:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field g:J


# direct methods
.method constructor <init>(Lorg/b/c;Lio/reactivex/e/h;Lorg/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lorg/b/b<",
            "*>;>;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 212
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    .line 213
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/em$b;->b:Lio/reactivex/e/h;

    .line 214
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    .line 215
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/em$b;->f:Lorg/b/b;

    .line 217
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 326
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/e;->cancel()V

    .line 327
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 287
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 290
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 292
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 274
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 277
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 279
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/f;->dispose()V

    return-void

    .line 281
    :cond_0
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 230
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long v7, v0, v5

    invoke-virtual {v4, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 239
    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->g:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->g:J

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 246
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->b:Lio/reactivex/e/h;

    .line 247
    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null Publisher."

    .line 246
    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    new-instance v0, Lio/reactivex/internal/operators/flowable/em$a;

    invoke-direct {v0, v7, v8, p0}, Lio/reactivex/internal/operators/flowable/em$a;-><init>(JLio/reactivex/internal/operators/flowable/em$c;)V

    .line 258
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/em$b;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 250
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/em$b;->setSubscription(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final onTimeout(J)V
    .locals 4

    .line 298
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 301
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->f:Lorg/b/b;

    const/4 p2, 0x0

    .line 302
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/em$b;->f:Lorg/b/b;

    .line 304
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->g:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 306
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/em$b;->produced(J)V

    .line 309
    :cond_0
    new-instance p2, Lio/reactivex/internal/operators/flowable/en$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/flowable/en$a;-><init>(Lorg/b/c;Lio/reactivex/internal/subscriptions/e;)V

    invoke-interface {p1, p2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    :cond_1
    return-void
.end method

.method public final onTimeoutError(JLjava/lang/Throwable;)V
    .locals 3

    .line 315
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/em$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 318
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/em$b;->a:Lorg/b/c;

    invoke-interface {p1, p3}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 320
    :cond_0
    invoke-static {p3}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
