.class final Lcom/google/android/gms/location/ab;
.super Lcom/google/android/gms/internal/gu;


# instance fields
.field private synthetic a:Lcom/google/android/gms/c/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/ab;->a:Lcom/google/android/gms/c/g;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzceo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceo;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/location/ab;->a:Lcom/google/android/gms/c/g;

    new-instance v0, Lcom/google/android/gms/common/api/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/g;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/location/ab;->a:Lcom/google/android/gms/c/g;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/g;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/ab;->a:Lcom/google/android/gms/c/g;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/g;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
