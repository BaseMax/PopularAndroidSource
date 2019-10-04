.class final Lcom/google/android/gms/location/aa;
.super Lcom/google/android/gms/common/api/internal/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/cl<",
        "Lcom/google/android/gms/internal/hj;",
        "Lcom/google/android/gms/location/g;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/location/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/common/api/internal/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/aa;->a:Lcom/google/android/gms/location/b;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/cl;-><init>(Lcom/google/android/gms/common/api/internal/bi;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/hj;

    .line 2000
    new-instance v0, Lcom/google/android/gms/location/ab;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/ab;-><init>(Lcom/google/android/gms/c/g;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/cl;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/hj;->zzb(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/internal/gt;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/c/g;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
