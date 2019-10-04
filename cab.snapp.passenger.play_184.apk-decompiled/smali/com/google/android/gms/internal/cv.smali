.class final Lcom/google/android/gms/internal/cv;
.super Lcom/google/android/gms/internal/cz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cz<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/df;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/common/api/internal/cv;)V

    new-instance v1, Lcom/google/android/gms/internal/zzawf;

    iget-object v2, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzawf;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/df;->zza(Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/zzawf;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method
