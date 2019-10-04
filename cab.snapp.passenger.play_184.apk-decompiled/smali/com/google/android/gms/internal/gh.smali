.class final Lcom/google/android/gms/internal/gh;
.super Lcom/google/android/gms/internal/gm;


# instance fields
.field private synthetic a:Lcom/google/android/gms/location/LocationRequest;

.field private synthetic b:Lcom/google/android/gms/location/h;

.field private synthetic d:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/location/h;

    iput-object p4, p0, Lcom/google/android/gms/internal/gh;->d:Landroid/os/Looper;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    new-instance v0, Lcom/google/android/gms/internal/gn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/location/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/gh;->d:Landroid/os/Looper;

    invoke-static {v3}, Lcom/google/android/gms/internal/ht;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/location/h;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/bk;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bg;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/hj;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method
