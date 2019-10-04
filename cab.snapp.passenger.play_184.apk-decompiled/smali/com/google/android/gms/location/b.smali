.class public final Lcom/google/android/gms/location/b;
.super Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_VERTICAL_ACCURACY:Ljava/lang/String; = "verticalAccuracy"


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
.method public final flushLocations()Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/a;->flushLocations(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final getLastLocation()Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/f<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/x;

    invoke-direct {v0}, Lcom/google/android/gms/location/x;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->zza(Lcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationAvailability()Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/f<",
            "Lcom/google/android/gms/location/LocationAvailability;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/y;

    invoke-direct {v0}, Lcom/google/android/gms/location/y;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->zza(Lcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;
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

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/a;->removeLocationUpdates(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final removeLocationUpdates(Lcom/google/android/gms/location/g;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/g;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/location/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/bk;->zzb(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->zza(Lcom/google/android/gms/common/api/internal/bi;)Lcom/google/android/gms/c/f;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/cc;->zza(Lcom/google/android/gms/c/f;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/location/a;->requestLocationUpdates(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/g;Landroid/os/Looper;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/g;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfo;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcfo;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ht;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, Lcom/google/android/gms/location/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/bk;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bg;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/location/z;

    invoke-direct {p3, p2, p1, p2}, Lcom/google/android/gms/location/z;-><init>(Lcom/google/android/gms/common/api/internal/bg;Lcom/google/android/gms/internal/zzcfo;Lcom/google/android/gms/common/api/internal/bg;)V

    new-instance p1, Lcom/google/android/gms/location/aa;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/bg;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/location/aa;-><init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/common/api/internal/bi;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/common/api/e;->zza(Lcom/google/android/gms/common/api/internal/bo;Lcom/google/android/gms/common/api/internal/cl;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final setMockLocation(Landroid/location/Location;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/a;->setMockLocation(Lcom/google/android/gms/common/api/f;Landroid/location/Location;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final setMockMode(Z)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->zzago()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/a;->setMockMode(Lcom/google/android/gms/common/api/f;Z)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ai;->zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method
