.class final Lcom/google/android/gms/internal/gr;
.super Lcom/google/android/gms/internal/gs;


# instance fields
.field private synthetic a:Lcom/google/android/gms/location/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/zzag;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gr;->a:Lcom/google/android/gms/location/zzag;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    iget-object v0, p0, Lcom/google/android/gms/internal/gr;->a:Lcom/google/android/gms/location/zzag;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/hj;->zza(Lcom/google/android/gms/location/zzag;Lcom/google/android/gms/common/api/internal/cv;)V

    return-void
.end method
