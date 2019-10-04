.class final Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/internal/cq;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/ct;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/ct;

    new-instance v1, Lcom/google/android/gms/internal/cr;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/ct;

    invoke-static {p1}, Lcom/google/android/gms/internal/cr;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/cr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
