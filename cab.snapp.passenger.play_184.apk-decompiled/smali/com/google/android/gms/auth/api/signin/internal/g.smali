.class final Lcom/google/android/gms/auth/api/signin/internal/g;
.super Lcom/google/android/gms/auth/api/signin/internal/a;


# instance fields
.field private synthetic a:Lcom/google/android/gms/auth/api/signin/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/g;->a:Lcom/google/android/gms/auth/api/signin/internal/f;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/g;->a:Lcom/google/android/gms/auth/api/signin/internal/f;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/n;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/g;->a:Lcom/google/android/gms/auth/api/signin/internal/f;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/f;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/n;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/g;->a:Lcom/google/android/gms/auth/api/signin/internal/f;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/e;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/e;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
