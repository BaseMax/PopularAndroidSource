.class final Lcom/google/android/gms/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ba;->a:Lcom/google/android/gms/internal/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->a:Lcom/google/android/gms/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/internal/az;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/r;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->a:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/az;->zzdx()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->a:Lcom/google/android/gms/internal/az;

    invoke-static {v1}, Lcom/google/android/gms/internal/az;->b(Lcom/google/android/gms/internal/az;)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->a:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/az;->run()V

    :cond_1
    return-void
.end method
