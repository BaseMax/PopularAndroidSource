.class Lcom/mapbox/android/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/a/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/a/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/android/a/b/e<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/location/LocationManager;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "passive"

    .line 24
    iput-object v0, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    const-string v0, "location"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    invoke-static {p1}, Lcom/mapbox/android/a/b/a;->b(I)Landroid/location/Criteria;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "passive"

    return-object p1
.end method

.method private static b(I)Landroid/location/Criteria;
    .locals 2

    .line 109
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 110
    invoke-static {p0}, Lcom/mapbox/android/a/b/a;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 112
    invoke-static {p0}, Lcom/mapbox/android/a/b/a;->d(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method private static d(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createListener(Lcom/mapbox/android/a/b/d;)Landroid/location/LocationListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)",
            "Landroid/location/LocationListener;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/mapbox/android/a/b/a$a;

    invoke-direct {v0, p1}, Lcom/mapbox/android/a/b/a$a;-><init>(Lcom/mapbox/android/a/b/d;)V

    return-object v0
.end method

.method public bridge synthetic createListener(Lcom/mapbox/android/a/b/d;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/a;->createListener(Lcom/mapbox/android/a/b/d;)Landroid/location/LocationListener;

    move-result-object p1

    return-object p1
.end method

.method public getLastLocation(Lcom/mapbox/android/a/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mapbox/android/a/b/a;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v1}, Lcom/mapbox/android/a/b/a;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {v1}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Last location unavailable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public removeLocationUpdates(Landroid/location/LocationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeLocationUpdates(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/a;->removeLocationUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapbox/android/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getInterval()J

    move-result-wide v3

    .line 81
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getDisplacemnt()F

    move-result v5

    move-object v6, p2

    .line 80
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapbox/android/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/mapbox/android/a/b/a;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mapbox/android/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getInterval()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getDisplacemnt()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public bridge synthetic requestLocationUpdates(Lcom/mapbox/android/a/b/h;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 20
    check-cast p2, Landroid/location/LocationListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/android/a/b/a;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
