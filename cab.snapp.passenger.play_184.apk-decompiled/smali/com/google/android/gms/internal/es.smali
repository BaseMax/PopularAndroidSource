.class final Lcom/google/android/gms/internal/es;
.super Lcom/google/android/gms/internal/ev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/common/api/f;)V

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

    check-cast p1, Lcom/google/android/gms/internal/ew;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ez;

    new-instance v0, Lcom/google/android/gms/internal/et;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/et;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ez;->zza(Lcom/google/android/gms/internal/ex;)V

    return-void
.end method
