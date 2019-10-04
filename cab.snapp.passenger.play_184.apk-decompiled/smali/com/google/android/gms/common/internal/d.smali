.class final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/az;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/f$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->a:Lcom/google/android/gms/common/api/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->a:Lcom/google/android/gms/common/api/f$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f$b;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->a:Lcom/google/android/gms/common/api/f$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f$b;->onConnectionSuspended(I)V

    return-void
.end method
