.class final Lcom/google/android/gms/auth/api/signin/internal/i;
.super Lcom/google/android/gms/auth/api/signin/internal/a;


# instance fields
.field private synthetic a:Lcom/google/android/gms/auth/api/signin/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/auth/api/signin/internal/h;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/auth/api/signin/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
