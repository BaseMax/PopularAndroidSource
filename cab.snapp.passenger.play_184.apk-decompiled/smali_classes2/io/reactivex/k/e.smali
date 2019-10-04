.class public final Lio/reactivex/k/e;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/k/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/k/e<",
        "TT;>;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field private final k:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private o:Lio/reactivex/internal/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 90
    sget-object v0, Lio/reactivex/k/e$a;->INSTANCE:Lio/reactivex/k/e$a;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/k/e;-><init>(Lorg/b/c;J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 100
    sget-object v0, Lio/reactivex/k/e$a;->INSTANCE:Lio/reactivex/k/e$a;

    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/k/e;-><init>(Lorg/b/c;J)V

    return-void
.end method

.method public constructor <init>(Lorg/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/k/e;-><init>(Lorg/b/c;J)V

    return-void
.end method

.method public constructor <init>(Lorg/b/c;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 123
    iput-object p1, p0, Lio/reactivex/k/e;->k:Lorg/b/c;

    .line 124
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/reactivex/k/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative initial request not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create()Lio/reactivex/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lio/reactivex/k/e;

    invoke-direct {v0}, Lio/reactivex/k/e;-><init>()V

    return-object v0
.end method

.method public static create(J)Lio/reactivex/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lio/reactivex/k/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/k/e;-><init>(J)V

    return-object v0
.end method

.method public static create(Lorg/b/c;)Lio/reactivex/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/b/c<",
            "-TT;>;)",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lio/reactivex/k/e;

    invoke-direct {v0, p0}, Lio/reactivex/k/e;-><init>(Lorg/b/c;)V

    return-object v0
.end method


# virtual methods
.method public final assertNotSubscribed()Lio/reactivex/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed but errors found"

    .line 324
    invoke-virtual {p0, v0}, Lio/reactivex/k/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "Subscribed!"

    .line 321
    invoke-virtual {p0, v0}, Lio/reactivex/k/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/reactivex/k/e;->assertNotSubscribed()Lio/reactivex/k/e;

    move-result-object v0

    return-object v0
.end method

.method public final assertOf(Lio/reactivex/e/g;)Lio/reactivex/k/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/k/e<",
            "TT;>;>;)",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 405
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final assertSubscribed()Lio/reactivex/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed!"

    .line 309
    invoke-virtual {p0, v0}, Lio/reactivex/k/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/reactivex/k/e;->assertSubscribed()Lio/reactivex/k/e;

    move-result-object v0

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lio/reactivex/k/e;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lio/reactivex/k/e;->l:Z

    .line 268
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 282
    invoke-virtual {p0}, Lio/reactivex/k/e;->cancel()V

    return-void
.end method

.method public final hasSubscription()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lio/reactivex/k/e;->l:Z

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lio/reactivex/k/e;->l:Z

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 243
    iget-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    .line 245
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/k/e;->e:Ljava/lang/Thread;

    .line 251
    iget-wide v0, p0, Lio/reactivex/k/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/k/e;->d:J

    .line 253
    iget-object v0, p0, Lio/reactivex/k/e;->k:Lorg/b/c;

    invoke-interface {v0}, Lorg/b/c;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lio/reactivex/k/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/k/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 221
    iget-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    .line 223
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/k/e;->e:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    .line 232
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    iget-object v0, p0, Lio/reactivex/k/e;->k:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p1, p0, Lio/reactivex/k/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/reactivex/k/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lio/reactivex/k/e;->f:Z

    .line 191
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/k/e;->e:Ljava/lang/Thread;

    .line 197
    iget v0, p0, Lio/reactivex/k/e;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 199
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/k/e;->o:Lio/reactivex/internal/b/g;

    invoke-interface {p1}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lio/reactivex/k/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 204
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lio/reactivex/k/e;->o:Lio/reactivex/internal/b/g;

    invoke-interface {p1}, Lio/reactivex/internal/b/g;->cancel()V

    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lio/reactivex/k/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    .line 213
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    iget-object v0, p0, Lio/reactivex/k/e;->k:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 5

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/k/e;->e:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    .line 139
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 145
    :cond_2
    iget v0, p0, Lio/reactivex/k/e;->g:I

    if-eqz v0, :cond_4

    .line 146
    instance-of v0, p1, Lio/reactivex/internal/b/g;

    if-eqz v0, :cond_4

    .line 147
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/g;

    iput-object v0, p0, Lio/reactivex/k/e;->o:Lio/reactivex/internal/b/g;

    .line 149
    iget-object v0, p0, Lio/reactivex/k/e;->o:Lio/reactivex/internal/b/g;

    iget v1, p0, Lio/reactivex/k/e;->g:I

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/g;->requestFusion(I)I

    move-result v0

    .line 150
    iput v0, p0, Lio/reactivex/k/e;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 153
    iput-boolean v1, p0, Lio/reactivex/k/e;->f:Z

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/k/e;->e:Ljava/lang/Thread;

    .line 157
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/k/e;->o:Lio/reactivex/internal/b/g;

    invoke-interface {p1}, Lio/reactivex/internal/b/g;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 158
    iget-object v0, p0, Lio/reactivex/k/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    iget-wide v0, p0, Lio/reactivex/k/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/k/e;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 163
    iget-object v0, p0, Lio/reactivex/k/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lio/reactivex/k/e;->k:Lorg/b/c;

    invoke-interface {v0, p1}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 172
    iget-object v0, p0, Lio/reactivex/k/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    .line 174
    invoke-interface {p1, v3, v4}, Lorg/b/d;->request(J)V

    :cond_5
    return-void
.end method

.method public final request(J)V
    .locals 2

    .line 261
    iget-object v0, p0, Lio/reactivex/k/e;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/k/e;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public final requestMore(J)Lio/reactivex/k/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1, p2}, Lio/reactivex/k/e;->request(J)V

    return-object p0
.end method
