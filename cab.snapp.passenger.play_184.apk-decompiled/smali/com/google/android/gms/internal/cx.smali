.class final Lcom/google/android/gms/internal/cx;
.super Lcom/google/android/gms/internal/cz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cz<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/df;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/df;->zza(Lcom/google/android/gms/internal/dd;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method
