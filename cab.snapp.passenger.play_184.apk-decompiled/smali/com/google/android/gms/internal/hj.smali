.class public final Lcom/google/android/gms/internal/hj;
.super Lcom/google/android/gms/internal/fw;


# instance fields
.field private final h:Lcom/google/android/gms/internal/hc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->zzcl(Landroid/content/Context;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/hj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/bl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/bl;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/fw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/bl;)V

    new-instance p2, Lcom/google/android/gms/internal/hc;

    iget-object p3, p0, Lcom/google/android/gms/internal/hj;->g:Lcom/google/android/gms/internal/hq;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hq;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hc;->removeAllListeners()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hc;->zzavl()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/fw;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final getLastLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final zza(JLandroid/app/PendingIntent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gy;

    invoke-interface {v1, p1, p2, v0, p3}, Lcom/google/android/gms/internal/gy;->zza(JZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hc;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "Lcom/google/android/gms/location/h;",
            ">;",
            "Lcom/google/android/gms/internal/gt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcfo;",
            "Lcom/google/android/gms/common/api/internal/bg<",
            "Lcom/google/android/gms/location/g;",
            ">;",
            "Lcom/google/android/gms/internal/gt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/hk;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/hk;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/gy;

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/common/api/internal/bg<",
            "Lcom/google/android/gms/location/h;",
            ">;",
            "Lcom/google/android/gms/internal/gt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/common/api/internal/cv;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/hm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/hm;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gy;

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/ha;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/zzag;Lcom/google/android/gms/common/api/internal/cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zzag;",
            "Lcom/google/android/gms/common/api/internal/cv<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/hl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/hl;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gy;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/location/zzag;Lcom/google/android/gms/internal/gw;)V

    return-void
.end method

.method public final zzavk()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc;->zzavk()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "Lcom/google/android/gms/location/g;",
            ">;",
            "Lcom/google/android/gms/internal/gt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hc;->zzb(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zzbj(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->zzbj(Z)V

    return-void
.end method

.method public final zzc(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zzc(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final zzc(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->h:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->zzc(Landroid/location/Location;)V

    return-void
.end method
