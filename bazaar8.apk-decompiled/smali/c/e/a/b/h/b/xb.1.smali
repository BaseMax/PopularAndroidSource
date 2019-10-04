.class public final Lc/e/a/b/h/b/xb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lc/e/a/b/d/d/d$a;
.implements Lc/e/a/b/d/d/d$b;


# instance fields
.field public volatile a:Z

.field public volatile b:Lc/e/a/b/h/b/s;

.field public final synthetic c:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/xb;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lc/e/a/b/h/b/xb;->a:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 12
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v0}, Lc/e/a/b/d/d/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v0}, Lc/e/a/b/d/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v0}, Lc/e/a/b/d/d/d;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lc/e/a/b/d/f/a;->a()Lc/e/a/b/d/f/a;

    move-result-object v1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lc/e/a/b/h/b/xb;->a:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lc/e/a/b/h/b/xb;->a:Z

    .line 10
    iget-object v2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-static {v2}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/xb;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lc/e/a/b/d/f/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 15
    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    iget-object v0, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->m()Lc/e/a/b/h/b/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    .line 19
    :try_start_0
    iput-boolean p1, p0, Lc/e/a/b/h/b/xb;->a:Z

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object p1

    new-instance v0, Lc/e/a/b/h/b/Db;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/Db;-><init>(Lc/e/a/b/h/b/xb;)V

    .line 23
    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lc/e/a/b/h/b/xb;->a:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v1}, Lc/e/a/b/d/d/d;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v1}, Lc/e/a/b/d/d/d;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    new-instance v1, Lc/e/a/b/h/b/s;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lc/e/a/b/h/b/s;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;)V

    iput-object v1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    .line 12
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lc/e/a/b/h/b/xb;->a:Z

    .line 14
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {v0}, Lc/e/a/b/d/d/d;->h()V

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "MeasurementServiceConnection.onConnected"

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    invoke-virtual {p1}, Lc/e/a/b/d/d/d;->r()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lc/e/a/b/h/b/l;

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/Bb;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/Bb;-><init>(Lc/e/a/b/h/b/xb;Lc/e/a/b/h/b/l;)V

    .line 5
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 6
    :try_start_1
    iput-object p1, p0, Lc/e/a/b/h/b/xb;->b:Lc/e/a/b/h/b/s;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lc/e/a/b/h/b/xb;->a:Z

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(I)V
    .locals 1

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object p1

    new-instance v0, Lc/e/a/b/h/b/Cb;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/Cb;-><init>(Lc/e/a/b/h/b/xb;)V

    .line 4
    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lc/e/a/b/h/b/xb;->a:Z

    .line 4
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 8
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lc/e/a/b/h/b/l;

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Lc/e/a/b/h/b/l;

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lc/e/a/b/h/b/n;

    invoke-direct {v1, p2}, Lc/e/a/b/h/b/n;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    .line 12
    :goto_1
    iget-object p2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 14
    :catch_0
    :try_start_2
    iget-object p2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_4

    .line 15
    iput-boolean p1, p0, Lc/e/a/b/h/b/xb;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-static {}, Lc/e/a/b/d/f/a;->a()Lc/e/a/b/d/f/a;

    move-result-object p1

    iget-object p2, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/xb;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/e/a/b/d/f/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 17
    :cond_4
    :try_start_4
    iget-object p1, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object p1

    new-instance p2, Lc/e/a/b/h/b/yb;

    invoke-direct {p2, p0, v0}, Lc/e/a/b/h/b/yb;-><init>(Lc/e/a/b/h/b/xb;Lc/e/a/b/h/b/l;)V

    .line 18
    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    .line 19
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

    .line 1
    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/Ab;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/Ab;-><init>(Lc/e/a/b/h/b/xb;Landroid/content/ComponentName;)V

    .line 4
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method
