.class Lcom/webengage/sdk/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/ScheduledFuture;

.field private c:Landroid/content/BroadcastReceiver$PendingResult;

.field private d:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/ar;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->c:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->d:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/ar;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->c:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object v0, p0, Lcom/webengage/sdk/android/ar;->d:Landroid/content/Intent;

    iput-object p1, p0, Lcom/webengage/sdk/android/ar;->d:Landroid/content/Intent;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f40

    invoke-virtual {p2, p0, v0, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/ar;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/webengage/sdk/android/ar;->c:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/ar;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/ar;->c:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/webengage/sdk/android/ar;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/webengage/sdk/android/ar;->c:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    iget-object v0, p0, Lcom/webengage/sdk/android/ar;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/webengage/sdk/android/ar;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "WebEngage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/ar;->b()V

    return-void
.end method
