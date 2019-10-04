.class final Lcom/google/android/gms/common/api/internal/cg;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/ce;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ce;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cg;->a:Lcom/google/android/gms/common/api/internal/ce;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7000
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    const-string v0, "Runtime exception on the transformation worker thread: "

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    throw p1

    .line 0
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/h;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cg;->a:Lcom/google/android/gms/common/api/internal/ce;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ce;->d:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/cg;->a:Lcom/google/android/gms/common/api/internal/ce;

    .line 2000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/common/api/internal/ce;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3000
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/br;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cg;->a:Lcom/google/android/gms/common/api/internal/ce;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/common/api/internal/ce;

    check-cast p1, Lcom/google/android/gms/common/api/internal/br;

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/br;->a:Lcom/google/android/gms/common/api/Status;

    .line 6000
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cg;->a:Lcom/google/android/gms/common/api/internal/ce;

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/ce;->zza(Lcom/google/android/gms/common/api/h;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
