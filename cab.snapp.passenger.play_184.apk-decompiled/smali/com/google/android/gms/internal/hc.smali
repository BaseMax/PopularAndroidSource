.class public final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hq<",
            "Lcom/google/android/gms/internal/gy;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "Lcom/google/android/gms/location/h;",
            ">;",
            "Lcom/google/android/gms/internal/hh;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/hg;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "Lcom/google/android/gms/location/g;",
            ">;",
            "Lcom/google/android/gms/internal/hd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/hq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/hq<",
            "Lcom/google/android/gms/internal/gy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/hc;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/internal/bg;)Lcom/google/android/gms/internal/hh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bg<",
            "Lcom/google/android/gms/location/h;",
            ">;)",
            "Lcom/google/android/gms/internal/hh;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bg;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/hh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/hh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/hh;-><init>(Lcom/google/android/gms/common/api/internal/bg;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bg;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final b(Lcom/google/android/gms/common/api/internal/bg;)Lcom/google/android/gms/internal/hd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bg<",
            "Lcom/google/android/gms/location/g;",
            ">;)",
            "Lcom/google/android/gms/internal/hd;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bg;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/hd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/hd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/hd;-><init>(Lcom/google/android/gms/common/api/internal/bg;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bg;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gy;->zzif(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final removeAllListeners()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/hh;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gy;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzcfq;->zza(Lcom/google/android/gms/location/aj;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/zzcfq;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/hd;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gy;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzcfq;->zza(Lcom/google/android/gms/location/ag;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/zzcfq;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/hg;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gy;

    new-instance v5, Lcom/google/android/gms/internal/zzcdz;

    const/4 v6, 0x2

    invoke-interface {v2}, Lcom/google/android/gms/location/ad;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v5, v6, v3, v2, v3}, Lcom/google/android/gms/internal/zzcdz;-><init>(ILcom/google/android/gms/internal/zzcdx;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcdz;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    new-instance v8, Lcom/google/android/gms/internal/zzcfq;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/gt;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcfq;-><init>(ILcom/google/android/gms/internal/zzcfo;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/hh;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hh;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcfq;->zza(Lcom/google/android/gms/location/aj;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/zzcfq;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

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

.method public final zza(Lcom/google/android/gms/internal/gt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V
    .locals 9
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

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/common/api/internal/bg;)Lcom/google/android/gms/internal/hd;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    new-instance v8, Lcom/google/android/gms/internal/zzcfq;

    invoke-interface {p2}, Lcom/google/android/gms/location/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/gt;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcfq;-><init>(ILcom/google/android/gms/internal/zzcfo;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gt;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfo;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcfo;

    move-result-object v3

    new-instance p1, Lcom/google/android/gms/internal/zzcfq;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/gt;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v7, p3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcfq;-><init>(ILcom/google/android/gms/internal/zzcfo;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V
    .locals 8
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

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/common/api/internal/bg;)Lcom/google/android/gms/internal/hh;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfo;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcfo;

    move-result-object v3

    new-instance p1, Lcom/google/android/gms/internal/zzcfq;

    invoke-interface {p2}, Lcom/google/android/gms/location/aj;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/gt;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcfq;-><init>(ILcom/google/android/gms/internal/zzcfo;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

    return-void
.end method

.method public final zzavk()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gy;->zzig(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public final zzavl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hc;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hc;->zzbj(Z)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/hd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hd;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcfq;->zza(Lcom/google/android/gms/location/ag;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/zzcfq;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/gy;->zza(Lcom/google/android/gms/internal/zzcfq;)V

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

.method public final zzbj(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zzbj(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hc;->d:Z

    return-void
.end method

.method public final zzc(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/internal/hq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hq;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gy;->zzc(Landroid/location/Location;)V

    return-void
.end method
