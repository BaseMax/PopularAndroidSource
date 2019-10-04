.class public final Lcom/google/android/gms/common/internal/bh;
.super Lcom/google/android/gms/common/internal/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/ay;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private synthetic b:Lcom/google/android/gms/common/internal/ax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ax;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/ay;-><init>(Lcom/google/android/gms/common/internal/ax;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/bh;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ax;->h(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ax;->h(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/ba;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/bh;->a:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ax;->zzhj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ax;->zzhj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "service descriptor mismatch: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vs. "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bh;->a:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/ax;->zzd(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ax;->a(Lcom/google/android/gms/common/internal/ax;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ax;->zzafi()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ax;->f(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/az;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bh;->b:Lcom/google/android/gms/common/internal/ax;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ax;->f(Lcom/google/android/gms/common/internal/ax;)Lcom/google/android/gms/common/internal/az;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/az;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    :catch_0
    :cond_3
    return v0
.end method
