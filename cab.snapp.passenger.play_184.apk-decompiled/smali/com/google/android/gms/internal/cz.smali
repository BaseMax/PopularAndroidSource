.class abstract Lcom/google/android/gms/internal/cz;
.super Lcom/google/android/gms/common/api/internal/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/m;",
        ">",
        "Lcom/google/android/gms/common/api/internal/cu<",
        "TR;",
        "Lcom/google/android/gms/internal/db;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/a;->CREDENTIALS_API:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/cu;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/df;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/m;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/cu;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/db;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ax;->getContext()Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ax;->zzakn()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/df;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cz;->a(Lcom/google/android/gms/internal/df;)V

    return-void
.end method
