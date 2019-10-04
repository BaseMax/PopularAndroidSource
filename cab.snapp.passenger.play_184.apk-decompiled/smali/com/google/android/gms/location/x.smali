.class final Lcom/google/android/gms/location/x;
.super Lcom/google/android/gms/common/api/internal/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/cb<",
        "Lcom/google/android/gms/internal/hj;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hj;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/c/g;->setResult(Ljava/lang/Object;)V

    return-void
.end method
