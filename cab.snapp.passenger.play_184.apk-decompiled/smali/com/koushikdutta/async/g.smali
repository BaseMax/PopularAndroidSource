.class public final Lcom/koushikdutta/async/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final acquire()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/ae;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ae;

    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    .line 13
    iput-object p0, v0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    .line 14
    iget-object v2, v0, Lcom/koushikdutta/async/ae;->b:Ljava/util/concurrent/Semaphore;

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 36
    iput-object v1, v0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return-void

    .line 22
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/ae;->remove()Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 26
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 31
    iget-object v3, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 36
    iput-object v1, v0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, v0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public final release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-static {p0}, Lcom/koushikdutta/async/ae;->a(Lcom/koushikdutta/async/g;)V

    return-void
.end method

.method public final tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-static {p3}, Lcom/koushikdutta/async/ae;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ae;

    move-result-object p3

    .line 43
    iget-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    .line 44
    iput-object p0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    .line 45
    iget-object v1, p3, Lcom/koushikdutta/async/ae;->b:Ljava/util/concurrent/Semaphore;

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 72
    iput-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return v3

    .line 51
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/ae;->remove()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 59
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 63
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-nez v2, :cond_3

    .line 72
    iput-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return v6

    .line 65
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/koushikdutta/async/g;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 72
    iput-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return v3

    .line 68
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v7, v4

    cmp-long v2, v7, p1

    if-ltz v2, :cond_1

    .line 72
    iput-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    return v6

    :catchall_0
    move-exception p1

    iput-object v0, p3, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/g;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
