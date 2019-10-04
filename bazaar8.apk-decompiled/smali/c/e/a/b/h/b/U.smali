.class public final Lc/e/a/b/h/b/U;
.super Lc/e/a/b/h/b/va;


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public d:Lc/e/a/b/h/b/X;

.field public e:Lc/e/a/b/h/b/X;

.field public final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/e/a/b/h/b/W<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/e/a/b/h/b/W<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final i:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/concurrent/Semaphore;

.field public volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lc/e/a/b/h/b/U;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/va;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->j:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->k:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->g:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance p1, Lc/e/a/b/h/b/V;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/V;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    new-instance p1, Lc/e/a/b/h/b/V;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/V;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;
    .locals 0

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/h/b/U;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 29
    iget-object p0, p0, Lc/e/a/b/h/b/U;->k:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/b/h/b/U;Lc/e/a/b/h/b/X;)Lc/e/a/b/h/b/X;
    .locals 0

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    return-object p1
.end method

.method public static synthetic b(Lc/e/a/b/h/b/U;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lc/e/a/b/h/b/U;->l:Z

    return p0
.end method

.method public static synthetic c(Lc/e/a/b/h/b/U;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/h/b/U;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    return-object p0
.end method

.method public static synthetic e(Lc/e/a/b/h/b/U;)Lc/e/a/b/h/b/X;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    return-object p0
.end method

.method public static synthetic u()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/U;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object p2

    invoke-virtual {p2, p5}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p2, 0x3a98

    .line 14
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Timed out waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_0
    invoke-virtual {p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 18
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Interrupted waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_1
    invoke-virtual {p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 19
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/va;->o()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lc/e/a/b/h/b/W;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc/e/a/b/h/b/W;-><init>(Lc/e/a/b/h/b/U;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lc/e/a/b/h/b/U;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/W;)V

    :goto_0
    return-object v0
.end method

.method public final a(Lc/e/a/b/h/b/W;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/h/b/W<",
            "*>;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lc/e/a/b/h/b/U;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/U;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lc/e/a/b/h/b/X;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lc/e/a/b/h/b/U;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lc/e/a/b/h/b/X;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    .line 25
    iget-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    iget-object v1, p0, Lc/e/a/b/h/b/U;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    iget-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    invoke-virtual {p1}, Lc/e/a/b/h/b/X;->a()V

    .line 28
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/va;->o()V

    .line 10
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lc/e/a/b/h/b/W;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc/e/a/b/h/b/W;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/W;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/va;->o()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lc/e/a/b/h/b/W;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc/e/a/b/h/b/W;-><init>(Lc/e/a/b/h/b/U;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/U;->a(Lc/e/a/b/h/b/W;)V

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/va;->o()V

    .line 8
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lc/e/a/b/h/b/W;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lc/e/a/b/h/b/W;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lc/e/a/b/h/b/U;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/U;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lc/e/a/b/h/b/X;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lc/e/a/b/h/b/U;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lc/e/a/b/h/b/X;-><init>(Lc/e/a/b/h/b/U;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    .line 14
    iget-object v0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    iget-object v1, p0, Lc/e/a/b/h/b/U;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 15
    iget-object v0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    invoke-virtual {v0}, Lc/e/a/b/h/b/X;->a()V

    .line 17
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/U;->e:Lc/e/a/b/h/b/X;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/U;->d:Lc/e/a/b/h/b/X;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
