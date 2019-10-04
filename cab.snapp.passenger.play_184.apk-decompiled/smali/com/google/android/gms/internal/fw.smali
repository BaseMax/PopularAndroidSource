.class public Lcom/google/android/gms/internal/fw;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c<",
        "Lcom/google/android/gms/internal/gy;",
        ">;"
    }
.end annotation


# instance fields
.field protected final g:Lcom/google/android/gms/internal/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hq<",
            "Lcom/google/android/gms/internal/gy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/bl;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    new-instance p1, Lcom/google/android/gms/internal/fx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/fx;-><init>(Lcom/google/android/gms/internal/fw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->g:Lcom/google/android/gms/internal/hq;

    iput-object p5, p0, Lcom/google/android/gms/internal/fw;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fw;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ax;->zzakm()V

    return-void
.end method


# virtual methods
.method public final zzaap()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fw;->h:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/gy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/gy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gz;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzhi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final zzhj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method
