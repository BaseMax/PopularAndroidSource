.class final Lcom/mapbox/android/a/b/j;
.super Lcom/mapbox/android/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/a/b/j$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/mapbox/android/a/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/mapbox/android/a/b/j;->b:Ljava/lang/String;

    const-string v1, "gps"

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final createListener(Lcom/mapbox/android/a/b/d;)Landroid/location/LocationListener;
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

    .line 31
    new-instance v0, Lcom/mapbox/android/a/b/j$a;

    invoke-direct {v0, p1}, Lcom/mapbox/android/a/b/j$a;-><init>(Lcom/mapbox/android/a/b/d;)V

    return-object v0
.end method

.method public final bridge synthetic createListener(Lcom/mapbox/android/a/b/d;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/j;->createListener(Lcom/mapbox/android/a/b/d;)Landroid/location/LocationListener;

    move-result-object p1

    return-object p1
.end method

.method public final getLastLocation(Lcom/mapbox/android/a/b/d;)V
    .locals 4
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

    .line 1080
    iget-object v0, p0, Lcom/mapbox/android/a/b/j;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1081
    invoke-virtual {p0, v2}, Lcom/mapbox/android/a/b/j;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1086
    invoke-static {v2, v1}, Lcom/mapbox/android/a/b/k;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 38
    invoke-static {v1}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Last location unavailable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/mapbox/android/a/b/d;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2}, Lcom/mapbox/android/a/b/a;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V

    .line 68
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapbox/android/a/b/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/mapbox/android/a/b/j;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getInterval()J

    move-result-wide v3

    .line 71
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getDisplacemnt()F

    move-result v5

    move-object v6, p2

    .line 70
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/mapbox/android/a/b/a;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 51
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mapbox/android/a/b/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/mapbox/android/a/b/j;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 54
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getInterval()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/mapbox/android/a/b/h;->getDisplacemnt()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    .line 53
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic requestLocationUpdates(Lcom/mapbox/android/a/b/h;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 21
    check-cast p2, Landroid/location/LocationListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/android/a/b/j;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
