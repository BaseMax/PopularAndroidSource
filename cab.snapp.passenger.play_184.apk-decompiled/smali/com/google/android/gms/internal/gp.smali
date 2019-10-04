.class public final Lcom/google/android/gms/internal/gp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/zzag;)Lcom/google/android/gms/common/api/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/location/zzag;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gr;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/zzag;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->zze(Lcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addGeofences(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gq;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gq;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f;->zze(Lcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;

    move-result-object p1

    return-object p1
.end method

.method public final addGeofences(Lcom/google/android/gms/common/api/f;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/c;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/GeofencingRequest$a;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$a;

    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/GeofencingRequest$a;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$a;

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$a;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gp;->addGeofences(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    return-object p1
.end method

.method public final removeGeofences(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/location/zzag;->zzb(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/zzag;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/zzag;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    return-object p1
.end method

.method public final removeGeofences(Lcom/google/android/gms/common/api/f;Ljava/util/List;)Lcom/google/android/gms/common/api/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/location/zzag;->zzac(Ljava/util/List;)Lcom/google/android/gms/location/zzag;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/zzag;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    return-object p1
.end method
