.class public final Lcom/google/android/gms/internal/ew;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c<",
        "Lcom/google/android/gms/internal/ez;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ez;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ez;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzhi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method public final zzhj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method
