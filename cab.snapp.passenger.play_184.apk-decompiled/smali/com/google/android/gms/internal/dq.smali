.class final Lcom/google/android/gms/internal/dq;
.super Lcom/google/android/gms/internal/do;


# instance fields
.field private synthetic a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/do;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/dm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/dr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dr;-><init>(Lcom/google/android/gms/internal/dq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dm;->zza(Lcom/google/android/gms/internal/dk;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
