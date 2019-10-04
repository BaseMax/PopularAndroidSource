.class final Lcom/google/android/gms/internal/ct;
.super Lcom/google/android/gms/internal/cz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cz<",
        "Lcom/google/android/gms/auth/api/credentials/a;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/df;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cu;-><init>(Lcom/google/android/gms/internal/ct;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/df;->zza(Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/cr;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/cr;

    move-result-object p1

    return-object p1
.end method
