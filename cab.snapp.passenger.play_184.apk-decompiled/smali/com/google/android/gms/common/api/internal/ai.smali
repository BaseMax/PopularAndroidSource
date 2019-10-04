.class abstract Lcom/google/android/gms/common/api/internal/ai;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/ag;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/internal/ag;

    return-void
.end method


# virtual methods
.method protected abstract zzaib()V
.end method

.method public final zzc(Lcom/google/android/gms/common/api/internal/ah;)V
    .locals 2

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ah;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2000
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ah;->k:Lcom/google/android/gms/common/api/internal/ag;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ai;->a:Lcom/google/android/gms/common/api/internal/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ah;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ai;->zzaib()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ah;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ah;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
