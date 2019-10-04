.class public final Lcom/google/android/gms/location/m;
.super Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/i;->API:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/co;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/co;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/bx;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/location/i;->API:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/co;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/co;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/bx;)V

    return-void
.end method


# virtual methods
.method public final checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Lcom/google/android/gms/location/j;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->SettingsApi:Lcom/google/android/gms/location/l;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/l;->checkLocationSettings(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/location/j;

    invoke-direct {v0}, Lcom/google/android/gms/location/j;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ai;->zza(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method
