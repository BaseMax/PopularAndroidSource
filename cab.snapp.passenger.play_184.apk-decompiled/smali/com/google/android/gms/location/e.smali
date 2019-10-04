.class public final Lcom/google/android/gms/location/e;
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
.method public final addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/location/d;->addGeofences(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final removeGeofences(Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/d;->removeGeofences(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final removeGeofences(Ljava/util/List;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/d;->removeGeofences(Lcom/google/android/gms/common/api/f;Ljava/util/List;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method
