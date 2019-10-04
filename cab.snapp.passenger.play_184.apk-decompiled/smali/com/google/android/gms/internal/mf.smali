.class public final Lcom/google/android/gms/internal/mf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/az;
.implements Lcom/google/android/gms/common/internal/ba;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lr;

.field private volatile b:Z

.field private volatile c:Lcom/google/android/gms/internal/iy;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/lr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/mf;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mf;->b:Z

    return v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzge(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ir;

    iput-object p1, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mi;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/mf;Lcom/google/android/gms/internal/ir;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mf;->b:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->e:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzazx()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mf;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mk;-><init>(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzge(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mj;-><init>(Lcom/google/android/gms/internal/mf;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzge(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mf;->b:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ir;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/internal/ir;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/it;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mf;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->zzamc()Lcom/google/android/gms/common/stats/a;

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    .line 2000
    iget-object p2, p2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/mf;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mg;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/mg;-><init>(Lcom/google/android/gms/internal/mf;Lcom/google/android/gms/internal/ir;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mh;-><init>(Lcom/google/android/gms/internal/mf;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbau()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mf;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/iy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/internal/iy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/az;Lcom/google/android/gms/common/internal/ba;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mf;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->c:Lcom/google/android/gms/internal/iy;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ax;->zzakj()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzn(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->zzamc()Lcom/google/android/gms/common/stats/a;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/mf;->b:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mf;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/mf;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/a;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
