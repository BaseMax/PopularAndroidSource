.class public final Lcom/raizlabs/android/dbflow/structure/b/a/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/d;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    .line 29
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final add(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cancel(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cancel(Ljava/lang/String;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/structure/b/a/g;

    .line 93
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final quit()V
    .locals 1

    .line 119
    monitor-enter p0

    const/4 v0, 0x1

    .line 120
    :try_start_0
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/b;->interrupt()V

    return-void

    :catchall_0
    move-exception v0

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 36
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    goto :goto_0

    .line 42
    :catch_0
    monitor-enter p0

    .line 43
    :try_start_1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->b:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 46
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 49
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final startIfNotAlive()V
    .locals 2

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/b;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/a/b;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
