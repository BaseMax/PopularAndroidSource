.class final Lcom/google/android/gms/internal/dr;
.super Lcom/google/android/gms/internal/di;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/dq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dr;->a:Lcom/google/android/gms/internal/dq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->a:Lcom/google/android/gms/internal/dq;

    new-instance v1, Lcom/google/android/gms/internal/ds;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ds;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
