.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f

.field private static a:Lcom/google/android/gms/maps/model/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/android/gms/maps/model/a/b;
    .locals 2

    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/b;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/b;

    return-object v0
.end method

.method public static defaultMarker()Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/maps/model/a/b;->zzawg()Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static defaultMarker(F)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zze(F)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zzin(Ljava/lang/String;)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zzd(Landroid/graphics/Bitmap;)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zzio(Ljava/lang/String;)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zzip(Ljava/lang/String;)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static fromResource(I)Lcom/google/android/gms/maps/model/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/b;->zzea(I)Lcom/google/android/gms/a/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/maps/model/a/b;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/a/b;

    sput-object p0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/b;

    return-void
.end method
