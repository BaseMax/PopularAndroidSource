.class public abstract Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.super Ljava/lang/Object;
.source "DispatchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelled:Z

.field private scheduled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized setCancelled(Z)V
    .locals 0

    monitor-enter p0

    .line 58
    :try_start_0
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 66
    :try_start_0
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method

.method protected abstract execute()V
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScheduled()Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->scheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->setScheduled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->setCancelled(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Exception while executing task"

    .line 42
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 45
    :goto_2
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->setCancelled(Z)V

    throw v1
.end method

.method declared-synchronized setScheduled(Z)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/threading/DispatchTask;->scheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method
