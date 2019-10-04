.class final Lio/reactivex/internal/operators/flowable/en$b;
.super Lio/reactivex/internal/subscriptions/e;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/en$d;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/en;
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
        "Lio/reactivex/internal/operators/flowable/en$d;",
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah$c;

.field final e:Lio/reactivex/internal/disposables/f;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field h:J

.field i:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/b/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah$c;Lorg/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah$c;",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Lio/reactivex/internal/subscriptions/e;-><init>(Z)V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->a:Lorg/b/c;

    .line 201
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/en$b;->b:J

    .line 202
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/en$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 203
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    .line 204
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/en$b;->i:Lorg/b/b;

    .line 205
    new-instance p1, Lio/reactivex/internal/disposables/f;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/f;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->e:Lio/reactivex/internal/disposables/f;

    .line 206
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 4

    .line 234
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->e:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    new-instance v2, Lio/reactivex/internal/operators/flowable/en$e;

    invoke-direct {v2, p1, p2, p0}, Lio/reactivex/internal/operators/flowable/en$e;-><init>(JLio/reactivex/internal/operators/flowable/en$d;)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/en$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 282
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/e;->cancel()V

    .line 283
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 5

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 255
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->a:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->dispose()V

    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    .line 244
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    return-void

    .line 246
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

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 220
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 226
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->h:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->h:J

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->a:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/operators/flowable/en$b;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/en$b;->setSubscription(Lorg/b/d;)V

    :cond_0
    return-void
.end method

.method public final onTimeout(J)V
    .locals 3

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 266
    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->h:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/en$b;->produced(J)V

    .line 271
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->i:Lorg/b/b;

    const/4 p2, 0x0

    .line 272
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/en$b;->i:Lorg/b/b;

    .line 274
    new-instance p2, Lio/reactivex/internal/operators/flowable/en$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$b;->a:Lorg/b/c;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/flowable/en$a;-><init>(Lorg/b/c;Lio/reactivex/internal/subscriptions/e;)V

    invoke-interface {p1, p2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 276
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/en$b;->d:Lio/reactivex/ah$c;

    invoke-virtual {p1}, Lio/reactivex/ah$c;->dispose()V

    :cond_1
    return-void
.end method
