.class public final Lcom/google/android/gms/common/internal/bi;
.super Lcom/google/android/gms/common/internal/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/ay;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/internal/ax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ax;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bi;->a:Lcom/google/android/gms/common/internal/ax;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/ay;-><init>(Lcom/google/android/gms/common/internal/ax;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bi;->a:Lcom/google/android/gms/common/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ax;->e:Lcom/google/android/gms/common/internal/bd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/bd;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bi;->a:Lcom/google/android/gms/common/internal/ax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bi;->a:Lcom/google/android/gms/common/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ax;->e:Lcom/google/android/gms/common/internal/bd;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzfkr:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/bd;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
