.class final Lcom/google/android/gms/common/api/internal/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/bb;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/dd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/dd;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/dg;-><init>(Lcom/google/android/gms/common/api/internal/dd;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 6000
    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/dd;->e:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/dd;->a(Lcom/google/android/gms/common/api/internal/dd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 7000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzf(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 10000
    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/dd;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    const/4 v1, 0x0

    .line 11000
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/dd;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/dd;->a(Lcom/google/android/gms/common/api/internal/dd;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 12000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    const/4 v0, 0x1

    .line 13000
    iput-boolean v0, p2, Lcom/google/android/gms/common/api/internal/dd;->f:Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 14000
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/dd;->a:Lcom/google/android/gms/common/api/internal/ah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/ah;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 15000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 16000
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzj(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzfkr:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    iput-object v0, p1, Lcom/google/android/gms/common/api/internal/dd;->e:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/dd;->a(Lcom/google/android/gms/common/api/internal/dd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dg;->a:Lcom/google/android/gms/common/api/internal/dd;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/dd;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
