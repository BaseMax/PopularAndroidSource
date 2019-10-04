.class final Lio/reactivex/internal/operators/flowable/b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/b/d;",
        ">;",
        "Lio/reactivex/b/c;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/locks/Lock;

.field final e:Ljava/util/concurrent/locks/Condition;

.field f:J

.field volatile g:Z

.field h:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 68
    new-instance v0, Lio/reactivex/internal/d/b;

    invoke-direct {v0, p1}, Lio/reactivex/internal/d/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lio/reactivex/internal/d/b;

    int-to-long v0, p1

    .line 69
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:J

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    int-to-long v0, p1

    .line 70
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->c:J

    .line 71
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->e:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private a()V
    .locals 2

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 177
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 78
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->g:Z

    .line 79
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lio/reactivex/internal/d/b;

    invoke-virtual {v1}, Lio/reactivex/internal/d/b;->isEmpty()Z

    move-result v1

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    if-eqz v1, :cond_3

    .line 90
    invoke-static {}, Lio/reactivex/internal/util/d;->verifyNonBlocking()V

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lio/reactivex/internal/d/b;

    invoke-virtual {v0}, Lio/reactivex/internal/d/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b$a;->run()V

    .line 98
    invoke-static {v0}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b$a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final isDisposed()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b$a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lio/reactivex/internal/d/b;

    invoke-virtual {v0}, Lio/reactivex/internal/d/b;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/b$a;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 114
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/b$a;->c:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    .line 115
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/b$a;->f:J

    .line 116
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/b$a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/d;

    invoke-interface {v3, v1, v2}, Lorg/b/d;->request(J)V

    goto :goto_0

    .line 118
    :cond_0
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/b$a;->f:J

    :goto_0
    return-object v0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->g:Z

    .line 152
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/b$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->g:Z

    .line 146
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/b$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lio/reactivex/internal/d/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/b;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 136
    new-instance p1, Lio/reactivex/c/c;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/b$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/b$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 128
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:J

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/b/d;J)Z

    return-void
.end method

.method public final remove()V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final run()V
    .locals 0

    .line 166
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 167
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/b$a;->a()V

    return-void
.end method
