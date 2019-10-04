.class public final Lcom/pusher/client/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/a/a$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Lcom/pusher/client/connection/a/a;

.field private b:Lcom/pusher/client/channel/a/b;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pusher/client/a/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 42
    sget-object v0, Lcom/pusher/client/a/a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getChannelManager()Lcom/pusher/client/channel/a/b;
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->b:Lcom/pusher/client/channel/a/b;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/pusher/client/channel/a/b;

    invoke-direct {v0, p0}, Lcom/pusher/client/channel/a/b;-><init>(Lcom/pusher/client/a/a;)V

    iput-object v0, p0, Lcom/pusher/client/a/a;->b:Lcom/pusher/client/channel/a/b;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->b:Lcom/pusher/client/channel/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnection(Ljava/lang/String;Lcom/pusher/client/d;)Lcom/pusher/client/connection/a/a;
    .locals 11

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->a:Lcom/pusher/client/connection/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 53
    :try_start_1
    new-instance v0, Lcom/pusher/client/connection/b/b;

    .line 54
    invoke-virtual {p2, p1}, Lcom/pusher/client/d;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p2}, Lcom/pusher/client/d;->getActivityTimeout()J

    move-result-wide v3

    .line 56
    invoke-virtual {p2}, Lcom/pusher/client/d;->getPongTimeout()J

    move-result-wide v5

    .line 57
    invoke-virtual {p2}, Lcom/pusher/client/d;->getMaxReconnectionAttempts()I

    move-result v7

    .line 58
    invoke-virtual {p2}, Lcom/pusher/client/d;->getMaxReconnectGapInSeconds()I

    move-result v8

    .line 59
    invoke-virtual {p2}, Lcom/pusher/client/d;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    move-object v1, v0

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/pusher/client/connection/b/b;-><init>(Ljava/lang/String;JJIILjava/net/Proxy;Lcom/pusher/client/a/a;)V

    iput-object v0, p0, Lcom/pusher/client/a/a;->a:Lcom/pusher/client/connection/a/a;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    :try_start_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to initialise connection"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 66
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/pusher/client/a/a;->a:Lcom/pusher/client/connection/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTimers()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/pusher/client/a/a$a;

    const-string v1, "timers"

    invoke-direct {v0, v1}, Lcom/pusher/client/a/a$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newPresenceChannel(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;)Lcom/pusher/client/channel/a/d;
    .locals 1

    .line 91
    new-instance v0, Lcom/pusher/client/channel/a/d;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/pusher/client/channel/a/d;-><init>(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;Lcom/pusher/client/a/a;)V

    return-object v0
.end method

.method public final newPrivateChannel(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;)Lcom/pusher/client/channel/a/e;
    .locals 1

    .line 86
    new-instance v0, Lcom/pusher/client/channel/a/e;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/pusher/client/channel/a/e;-><init>(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;Lcom/pusher/client/a/a;)V

    return-object v0
.end method

.method public final newPublicChannel(Ljava/lang/String;)Lcom/pusher/client/channel/a/a;
    .locals 1

    .line 81
    new-instance v0, Lcom/pusher/client/channel/a/a;

    invoke-direct {v0, p1, p0}, Lcom/pusher/client/channel/a/a;-><init>(Ljava/lang/String;Lcom/pusher/client/a/a;)V

    return-object v0
.end method

.method public final newWebSocketClientWrapper(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/b/c;)Lcom/pusher/client/connection/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/pusher/client/connection/b/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/pusher/client/connection/b/a;-><init>(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/b/c;)V

    return-object v0
.end method

.method public final declared-synchronized queueOnEventThread(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/pusher/client/a/a$a;

    const-string v1, "eventQueue"

    invoke-direct {v0, v1}, Lcom/pusher/client/a/a$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pusher/client/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/a/a$1;-><init>(Lcom/pusher/client/a/a;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized shutdownThreads()V
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 118
    iput-object v1, p0, Lcom/pusher/client/a/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 122
    iput-object v1, p0, Lcom/pusher/client/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
