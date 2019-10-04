.class final Lcom/pusher/client/connection/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/connection/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pusher/client/connection/b/b;

.field private final b:J

.field private final c:J

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/b/b;JJ)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-wide p2, p0, Lcom/pusher/client/connection/b/b$a;->b:J

    .line 352
    iput-wide p4, p0, Lcom/pusher/client/connection/b/b$a;->c:J

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->d(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/a/a;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/pusher/client/connection/b/b$a$1;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/b/b$a$1;-><init>(Lcom/pusher/client/connection/b/b$a;)V

    iget-wide v2, p0, Lcom/pusher/client/connection/b/b$a;->b:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/b/b$a;->d:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->d:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/b/b$a;->a:Lcom/pusher/client/connection/b/b;

    invoke-static {v0}, Lcom/pusher/client/connection/b/b;->d(Lcom/pusher/client/connection/b/b;)Lcom/pusher/client/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/a/a;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/pusher/client/connection/b/b$a$2;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/b/b$a$2;-><init>(Lcom/pusher/client/connection/b/b$a;)V

    iget-wide v2, p0, Lcom/pusher/client/connection/b/b$a;->c:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/b/b$a;->e:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
