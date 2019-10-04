.class final Lcom/google/android/gms/common/api/internal/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/m;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/ce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ce;Lcom/google/android/gms/common/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/common/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ce;->a:Lcom/google/android/gms/common/api/p;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/p;->onSuccess(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ce;->f:Lcom/google/android/gms/common/api/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ce;->f:Lcom/google/android/gms/common/api/internal/cg;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/cg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/cg;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/common/api/m;

    .line 4000
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/m;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ce;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->zzb(Lcom/google/android/gms/common/api/internal/ce;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ce;->f:Lcom/google/android/gms/common/api/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 7000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ce;->f:Lcom/google/android/gms/common/api/internal/cg;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/cg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/cg;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/common/api/m;

    .line 8000
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/m;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ce;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->zzb(Lcom/google/android/gms/common/api/internal/ce;)V

    :cond_1
    return-void

    :goto_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/common/api/m;

    .line 10000
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/m;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    .line 11000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ce;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/f;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/f;->zzb(Lcom/google/android/gms/common/api/internal/ce;)V

    :cond_2
    throw v0
.end method
