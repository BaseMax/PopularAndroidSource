.class public final Lcom/google/android/gms/common/internal/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:I

.field private synthetic b:Lcom/google/android/gms/common/internal/ax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ax;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/bf;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ax;->b(Lcom/google/android/gms/common/internal/ax;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/common/internal/x;

    if-eqz v2, :cond_2

    move-object p2, v1

    check-cast p2, Lcom/google/android/gms/common/internal/x;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/common/internal/y;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/y;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    :goto_0
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/x;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    const/4 p2, 0x0

    iget v0, p0, Lcom/google/android/gms/common/internal/bf;->a:I

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/ax;->a(II)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ax;->b(Lcom/google/android/gms/common/internal/ax;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/x;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/ax;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bf;->b:Lcom/google/android/gms/common/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ax;->d:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/common/internal/bf;->a:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
