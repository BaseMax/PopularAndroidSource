.class final Lcom/google/android/gms/internal/ge;
.super Lcom/google/android/gms/internal/gm;


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ge;->a:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gm;-><init>(Lcom/google/android/gms/common/api/f;)V

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ge;->a:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hj;->zzbj(Z)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
