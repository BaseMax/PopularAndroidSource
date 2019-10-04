.class final Lcom/google/android/gms/internal/gd;
.super Lcom/google/android/gms/internal/gm;


# instance fields
.field private synthetic a:Lcom/google/android/gms/location/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/g;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gd;->a:Lcom/google/android/gms/location/g;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->a:Lcom/google/android/gms/location/g;

    const-class v1, Lcom/google/android/gms/location/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/bk;->zzb(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/hj;->zzb(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method
