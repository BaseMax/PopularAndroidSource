.class public final Lcab/snapp/passenger/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static t:Ljava/lang/String; = "LOCATION_PERMISSION_DENIED"


# instance fields
.field private final a:D

.field private final b:D

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:Lcab/snapp/b/a;

.field private f:Lcom/google/android/gms/location/b;

.field private g:Lcom/google/android/gms/location/m;

.field private h:Lcom/google/android/gms/location/LocationRequest;

.field private i:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private j:Lcom/google/android/gms/location/g;

.field private k:Landroid/location/Location;

.field private l:Landroid/location/Location;

.field private m:Landroid/location/Location;

.field private n:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:J

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4041d5c2e8d75e3aL    # 35.670010667

    .line 53
    iput-wide v0, p0, Lcab/snapp/passenger/c/e;->a:D

    const-wide v2, 0x4049b1120e4c9653L    # 51.383363521

    .line 60
    iput-wide v2, p0, Lcab/snapp/passenger/c/e;->b:D

    .line 104
    new-instance v4, Landroid/location/Location;

    const-string v5, "gps"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcab/snapp/passenger/c/e;->m:Landroid/location/Location;

    .line 108
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v4

    iput-object v4, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    const-wide/16 v4, 0x2710

    .line 112
    iput-wide v4, p0, Lcab/snapp/passenger/c/e;->o:J

    .line 116
    iget-wide v4, p0, Lcab/snapp/passenger/c/e;->o:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcab/snapp/passenger/c/e;->p:J

    const/4 v4, 0x0

    .line 120
    iput-boolean v4, p0, Lcab/snapp/passenger/c/e;->q:Z

    const/4 v4, 0x1

    .line 124
    iput-boolean v4, p0, Lcab/snapp/passenger/c/e;->r:Z

    .line 151
    iput-object p1, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    .line 152
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->m:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 153
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->m:Landroid/location/Location;

    invoke-virtual {p1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 154
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->f()V

    .line 155
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->k:Landroid/location/Location;

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->m:Landroid/location/Location;

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    .line 1237
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1242
    new-instance v0, Lcab/snapp/b/a;

    invoke-direct {v0, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/c/e;->e:Lcab/snapp/b/a;

    .line 1243
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/location/i;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    .line 1244
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/location/i;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/m;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->g:Lcom/google/android/gms/location/m;

    .line 1261
    new-instance p1, Lcab/snapp/passenger/c/e$1;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/c/e$1;-><init>(Lcab/snapp/passenger/c/e;)V

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->j:Lcom/google/android/gms/location/g;

    .line 1282
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    .line 1283
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    iget-wide v0, p0, Lcab/snapp/passenger/c/e;->o:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 1284
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    iget-wide v0, p0, Lcab/snapp/passenger/c/e;->p:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 1285
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 1295
    new-instance p1, Lcom/google/android/gms/location/LocationSettingsRequest$a;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationSettingsRequest$a;-><init>()V

    .line 1296
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest$a;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$a;

    .line 1297
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsRequest$a;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->i:Lcom/google/android/gms/location/LocationSettingsRequest;

    .line 1248
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->d()V

    .line 1249
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->f()V

    .line 1250
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->b()V

    return-void

    .line 1239
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcab/snapp/passenger/c/e;)Lio/reactivex/j/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcab/snapp/passenger/c/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .line 225
    iput-object p1, p0, Lcab/snapp/passenger/c/e;->k:Landroid/location/Location;

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 228
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->k:Landroid/location/Location;

    iput-object p1, p0, Lcab/snapp/passenger/c/e;->l:Landroid/location/Location;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/c/e;Landroid/location/Location;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/c/f;)V
    .locals 3

    .line 386
    invoke-virtual {p1}, Lcom/google/android/gms/c/f;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/c/f;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    invoke-virtual {p1}, Lcom/google/android/gms/c/f;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p1}, Lcom/google/android/gms/c/f;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    return-void

    .line 391
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    new-instance v1, Lcab/snapp/passenger/c/e$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/e$2;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 408
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 393
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/b;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/g;Landroid/os/Looper;)Lcom/google/android/gms/c/f;

    return-void

    .line 412
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 413
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/location/j;)V
    .locals 3

    .line 486
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->h:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcab/snapp/passenger/c/e;->j:Lcom/google/android/gms/location/g;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/b;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/g;Landroid/os/Looper;)Lcom/google/android/gms/c/f;

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lcab/snapp/passenger/c/e;->q:Z

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Exception;)V
    .locals 2

    const/4 p1, 0x0

    .line 493
    iput-boolean p1, p0, Lcab/snapp/passenger/c/e;->q:Z

    .line 494
    iput-boolean p1, p0, Lcab/snapp/passenger/c/e;->r:Z

    .line 495
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 496
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 592
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    .line 598
    invoke-static {}, Lcab/snapp/c/g;->getLocationPermissionStringArray()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/c/e$3;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/c/e$3;-><init>(Lcab/snapp/passenger/c/e;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 596
    invoke-static {v0, v1, v2, p1}, Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/c/e;)Landroid/app/Activity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 375
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->d()V

    .line 380
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->g:Lcom/google/android/gms/location/m;

    iget-object v1, p0, Lcab/snapp/passenger/c/e;->i:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/m;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/c/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$e$hxQpKLQ1wnSmghk6ejUFRysJdiw;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$e$hxQpKLQ1wnSmghk6ejUFRysJdiw;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 381
    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->addOnSuccessListener(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$e$WIfR5UdkHSBbV9_5yo1AkKebjF8;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$e$WIfR5UdkHSBbV9_5yo1AkKebjF8;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 418
    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->addOnFailureListener(Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method private synthetic b(Lcom/google/android/gms/location/j;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/google/android/gms/location/b;->getLastLocation()Lcom/google/android/gms/c/f;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$e$qbV0UGQfGKWPBcUmp-eUkq5wcyA;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/c/-$$Lambda$e$qbV0UGQfGKWPBcUmp-eUkq5wcyA;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 385
    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/f;->addOnCompleteListener(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcab/snapp/passenger/c/e;->r:Z

    .line 420
    instance-of v0, p1, Lcom/google/android/gms/common/api/k;

    const-string v1, "gps"

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    new-instance v2, Lcab/snapp/passenger/data/models/NullLocation;

    check-cast p1, Lcom/google/android/gms/common/api/k;

    invoke-direct {v2, v1, p1}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/k;)V

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    new-instance v0, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-direct {v0, v1}, Lcab/snapp/passenger/data/models/NullLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 428
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 479
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->d()V

    .line 484
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->g:Lcom/google/android/gms/location/m;

    iget-object v1, p0, Lcab/snapp/passenger/c/e;->i:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/m;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/c/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$e$Xge6GuEXGOUQLgcGUCfHQQrUIZg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$e$Xge6GuEXGOUQLgcGUCfHQQrUIZg;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->addOnSuccessListener(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$e$3vOomNmzrUS5NJuF_vYvPrsQTMk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$e$3vOomNmzrUS5NJuF_vYvPrsQTMk;-><init>(Lcab/snapp/passenger/c/e;)V

    .line 492
    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->addOnFailureListener(Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->c()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 519
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "location_mode"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    :try_start_1
    iput v1, p0, Lcab/snapp/passenger/c/e;->s:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v1, 0x0

    .line 536
    :goto_0
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 537
    invoke-static {v3}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 538
    iput-boolean v0, p0, Lcab/snapp/passenger/c/e;->r:Z

    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 541
    :cond_1
    iput-boolean v0, p0, Lcab/snapp/passenger/c/e;->r:Z

    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcab/snapp/passenger/c/e;->r:Z

    return-void
.end method

.method static synthetic d(Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->b()V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 562
    :cond_0
    invoke-static {v0}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcab/snapp/passenger/c/e;)Z
    .locals 3

    .line 1572
    iget-object p0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    sget-object v0, Lcab/snapp/passenger/c/e;->t:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "HAS_PERMANENTLY_DENIED_LOCATION_REQUEST"

    .line 1574
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method static synthetic f(Lcab/snapp/passenger/c/e;)Lcom/google/android/gms/location/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->e:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    const-string v1, "Location_Data_Manager_Key_Saved_Location"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->e:Lcab/snapp/b/a;

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lcab/snapp/passenger/c/e;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$3vOomNmzrUS5NJuF_vYvPrsQTMk(Lcab/snapp/passenger/c/e;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$WIfR5UdkHSBbV9_5yo1AkKebjF8(Lcab/snapp/passenger/c/e;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$Xge6GuEXGOUQLgcGUCfHQQrUIZg(Lcab/snapp/passenger/c/e;Lcom/google/android/gms/location/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Lcom/google/android/gms/location/j;)V

    return-void
.end method

.method public static synthetic lambda$hxQpKLQ1wnSmghk6ejUFRysJdiw(Lcab/snapp/passenger/c/e;Lcom/google/android/gms/location/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->b(Lcom/google/android/gms/location/j;)V

    return-void
.end method

.method public static synthetic lambda$qbV0UGQfGKWPBcUmp-eUkq5wcyA(Lcab/snapp/passenger/c/e;Lcom/google/android/gms/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Lcom/google/android/gms/c/f;)V

    return-void
.end method


# virtual methods
.method public final cancelLocationUpdates()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->f:Lcom/google/android/gms/location/b;

    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcab/snapp/passenger/c/e;->j:Lcom/google/android/gms/location/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/b;->removeLocationUpdates(Lcom/google/android/gms/location/g;)Lcom/google/android/gms/c/f;

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcab/snapp/passenger/c/e;->q:Z

    :cond_0
    return-void
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 324
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->k:Landroid/location/Location;

    return-object v0
.end method

.method public final getLocationObservable(Z)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/z<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/c/e;->refreshLocation(Z)V

    .line 346
    iget-object p1, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    return-object p1
.end method

.method public final getLocationUpdates()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Lcab/snapp/passenger/c/e;->q:Z

    if-nez v0, :cond_1

    .line 1456
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1461
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1467
    invoke-direct {p0, v0}, Lcab/snapp/passenger/c/e;->a(Z)V

    .line 313
    :cond_1
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->n:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getSavedLocation()Landroid/location/Location;
    .locals 1

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->l:Landroid/location/Location;

    return-object v0
.end method

.method public final isLocationEnabled()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcab/snapp/passenger/c/e;->r:Z

    return v0
.end method

.method public final isLocationModeBatterySavingOrPhoneOnly()Z
    .locals 3

    .line 690
    iget v0, p0, Lcab/snapp/passenger/c/e;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final refreshLocation(Z)V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcab/snapp/passenger/c/e;->b()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 362
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/e;->a(Z)V

    :cond_1
    return-void
.end method

.method public final requestEditLocationSetting(Lcom/google/android/gms/common/api/k;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 434
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/k;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final saveLocation(DD)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    .line 681
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 683
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 684
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/e;->saveLocation(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public final saveLocation(Landroid/location/Location;)V
    .locals 2

    .line 664
    iget-object v0, p0, Lcab/snapp/passenger/c/e;->e:Lcab/snapp/b/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Location_Data_Manager_Key_Saved_Location"

    .line 668
    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcab/snapp/passenger/c/e;->d:Landroid/app/Activity;

    return-void
.end method

.method public final setFastestUpdateInterval(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcab/snapp/passenger/c/e;->p:J

    return-void
.end method

.method public final setUpdateInterval(J)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcab/snapp/passenger/c/e;->o:J

    return-void
.end method
