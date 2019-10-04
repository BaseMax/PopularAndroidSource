.class public final Lc/e/a/b/h/b/X;
.super Ljava/lang/Thread;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/e/a/b/h/b/W<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lc/e/a/b/h/b/U;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/U;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/e/a/b/h/b/W<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/X;->a:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lc/e/a/b/h/b/X;->b:Ljava/util/concurrent/BlockingQueue;

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/X;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/X;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/InterruptedException;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v1}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/U;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/X;->a(Ljava/lang/InterruptedException;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 4
    :goto_1
    iget-object v2, p0, Lc/e/a/b/h/b/X;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/W;

    if-eqz v2, :cond_2

    .line 5
    iget-boolean v3, v2, Lc/e/a/b/h/b/W;->b:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    const/16 v3, 0xa

    .line 6
    :goto_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Lc/e/a/b/h/b/X;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 9
    :try_start_2
    iget-object v3, p0, Lc/e/a/b/h/b/X;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 10
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3}, Lc/e/a/b/h/b/U;->b(Lc/e/a/b/h/b/U;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_3

    .line 11
    :try_start_3
    iget-object v3, p0, Lc/e/a/b/h/b/X;->a:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v3

    .line 12
    :try_start_4
    invoke-virtual {p0, v3}, Lc/e/a/b/h/b/X;->a(Ljava/lang/InterruptedException;)V

    .line 13
    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :try_start_5
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 15
    :try_start_6
    iget-object v3, p0, Lc/e/a/b/h/b/X;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 16
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 17
    iget-object v1, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v1}, Lc/e/a/b/h/b/U;->c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 18
    :try_start_7
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/U;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 19
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 20
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->d(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;

    move-result-object v2

    if-ne p0, v2, :cond_4

    .line 21
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2, v0}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;

    goto :goto_4

    .line 22
    :cond_4
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->e(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;

    move-result-object v2

    if-ne p0, v2, :cond_5

    .line 23
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2, v0}, Lc/e/a/b/h/b/U;->b(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;

    goto :goto_4

    .line 24
    :cond_5
    iget-object v0, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 25
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 26
    :cond_6
    :try_start_8
    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception v1

    .line 27
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v1

    .line 28
    iget-object v2, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v2}, Lc/e/a/b/h/b/U;->c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 29
    :try_start_c
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/U;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 30
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3}, Lc/e/a/b/h/b/U;->c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 31
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3}, Lc/e/a/b/h/b/U;->d(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;

    move-result-object v3

    if-eq p0, v3, :cond_8

    .line 32
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3}, Lc/e/a/b/h/b/U;->e(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;

    move-result-object v3

    if-ne p0, v3, :cond_7

    .line 33
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3, v0}, Lc/e/a/b/h/b/U;->b(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;

    goto :goto_5

    .line 34
    :cond_7
    iget-object v0, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 35
    :cond_8
    iget-object v3, p0, Lc/e/a/b/h/b/X;->c:Lc/e/a/b/h/b/U;

    invoke-static {v3, v0}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;

    .line 36
    :goto_5
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
