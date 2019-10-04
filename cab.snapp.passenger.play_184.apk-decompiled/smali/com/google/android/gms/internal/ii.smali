.class final Lcom/google/android/gms/internal/ii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ih;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

    invoke-static {v0}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/internal/ih;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawx()Lcom/google/android/gms/internal/js;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/js;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->zzdx()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

    invoke-static {v1}, Lcom/google/android/gms/internal/ih;->b(Lcom/google/android/gms/internal/ih;)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

    invoke-static {v0}, Lcom/google/android/gms/internal/ih;->c(Lcom/google/android/gms/internal/ih;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->a:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->run()V

    :cond_1
    return-void
.end method
