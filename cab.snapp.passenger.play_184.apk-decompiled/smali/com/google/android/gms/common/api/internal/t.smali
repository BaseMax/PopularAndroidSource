.class final Lcom/google/android/gms/common/api/internal/t;
.super Lcom/google/android/gms/internal/of;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/of;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzcxq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/m;

    if-nez v0, :cond_0

    return-void

    .line 1000
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/m;->a:Lcom/google/android/gms/common/api/internal/ah;

    new-instance v2, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v2, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/ag;Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/internal/zzcxq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ai;)V

    return-void
.end method
