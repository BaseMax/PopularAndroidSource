.class public final Lio/reactivex/observers/e;
.super Lio/reactivex/observers/BaseTestConsumer;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;
.implements Lio/reactivex/al;
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/d;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/observers/e<",
        "TT;>;>;",
        "Lio/reactivex/ag<",
        "TT;>;",
        "Lio/reactivex/al<",
        "TT;>;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/d;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final k:Lio/reactivex/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ag<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/reactivex/internal/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/b/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    sget-object v0, Lio/reactivex/observers/e$a;->INSTANCE:Lio/reactivex/observers/e$a;

    invoke-direct {p0, v0}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/ag;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lio/reactivex/observers/BaseTestConsumer;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    iput-object p1, p0, Lio/reactivex/observers/e;->k:Lio/reactivex/ag;

    return-void
.end method

.method public static create()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    return-object v0
.end method

.method public static create(Lio/reactivex/ag;)Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ag<",
            "-TT;>;)",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0, p0}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/ag;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/reactivex/observers/e;->assertNotSubscribed()Lio/reactivex/observers/e;

    move-result-object v0

    return-object v0
.end method

.method public final assertNotSubscribed()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed but errors found"

    .line 259
    invoke-virtual {p0, v0}, Lio/reactivex/observers/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "Subscribed!"

    .line 256
    invoke-virtual {p0, v0}, Lio/reactivex/observers/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertOf(Lio/reactivex/e/g;)Lio/reactivex/observers/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/observers/e<",
            "TT;>;>;)",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-interface {p1, p0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 273
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final bridge synthetic assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/reactivex/observers/e;->assertSubscribed()Lio/reactivex/observers/e;

    move-result-object v0

    return-object v0
.end method

.method public final assertSubscribed()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed!"

    .line 244
    invoke-virtual {p0, v0}, Lio/reactivex/observers/e;->a(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final cancel()V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lio/reactivex/observers/e;->dispose()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 220
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final hasSubscription()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 206
    invoke-virtual {p0}, Lio/reactivex/observers/e;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/b/c;)Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    .line 186
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/e;->e:Ljava/lang/Thread;

    .line 193
    iget-wide v0, p0, Lio/reactivex/observers/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/e;->d:J

    .line 195
    iget-object v0, p0, Lio/reactivex/observers/e;->k:Lio/reactivex/ag;

    invoke-interface {v0}, Lio/reactivex/ag;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lio/reactivex/observers/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/observers/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    .line 163
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/e;->e:Ljava/lang/Thread;

    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    iget-object v0, p0, Lio/reactivex/observers/e;->k:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object p1, p0, Lio/reactivex/observers/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/reactivex/observers/e;->a:Ljava/util/concurrent/CountDownLatch;

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

    .line 128
    iget-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/reactivex/observers/e;->f:Z

    .line 130
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/e;->e:Ljava/lang/Thread;

    .line 137
    iget v0, p0, Lio/reactivex/observers/e;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/observers/e;->m:Lio/reactivex/internal/b/e;

    invoke-interface {p1}, Lio/reactivex/internal/b/e;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lio/reactivex/observers/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Lio/reactivex/observers/e;->m:Lio/reactivex/internal/b/e;

    invoke-interface {p1}, Lio/reactivex/internal/b/e;->dispose()V

    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lio/reactivex/observers/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    .line 153
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v0, p0, Lio/reactivex/observers/e;->k:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 4

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/observers/e;->e:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 90
    iget-object v0, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

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

    .line 96
    :cond_2
    iget v0, p0, Lio/reactivex/observers/e;->g:I

    if-eqz v0, :cond_4

    .line 97
    instance-of v0, p1, Lio/reactivex/internal/b/e;

    if-eqz v0, :cond_4

    .line 98
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/b/e;

    iput-object v0, p0, Lio/reactivex/observers/e;->m:Lio/reactivex/internal/b/e;

    .line 100
    iget-object v0, p0, Lio/reactivex/observers/e;->m:Lio/reactivex/internal/b/e;

    iget v1, p0, Lio/reactivex/observers/e;->g:I

    invoke-interface {v0, v1}, Lio/reactivex/internal/b/e;->requestFusion(I)I

    move-result v0

    .line 101
    iput v0, p0, Lio/reactivex/observers/e;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 104
    iput-boolean v1, p0, Lio/reactivex/observers/e;->f:Z

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/observers/e;->e:Ljava/lang/Thread;

    .line 108
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/reactivex/observers/e;->m:Lio/reactivex/internal/b/e;

    invoke-interface {p1}, Lio/reactivex/internal/b/e;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    iget-object v0, p0, Lio/reactivex/observers/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_3
    iget-wide v0, p0, Lio/reactivex/observers/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/observers/e;->d:J

    .line 113
    iget-object p1, p0, Lio/reactivex/observers/e;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    iget-object v0, p0, Lio/reactivex/observers/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 123
    :cond_4
    iget-object v0, p0, Lio/reactivex/observers/e;->k:Lio/reactivex/ag;

    invoke-interface {v0, p1}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lio/reactivex/observers/e;->onNext(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lio/reactivex/observers/e;->onComplete()V

    return-void
.end method
