.class Lcom/webengage/sdk/android/q;
.super Lcom/webengage/sdk/android/o;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/q$a;
    }
.end annotation


# static fields
.field static b:Lcom/google/android/gms/common/api/f;


# instance fields
.field public a:Landroid/content/Context;

.field c:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/o;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/common/api/f$a;

    iget-object v0, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->addConnectionCallbacks(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/f$a;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/location/i;->API:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f$a;->addApi(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f$a;->build()Lcom/google/android/gms/common/api/f;

    move-result-object p1

    sput-object p1, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->connect()V

    return-void
.end method

.method private a(Lcom/google/android/gms/location/LocationRequest;Landroid/content/Context;Lcom/google/android/gms/common/api/f;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebEngage"

    const-string v1, "Registering for location updates"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/webengage/sdk/android/PendingIntentFactory;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    invoke-interface {v0, p3, p1, p2}, Lcom/google/android/gms/location/a;->requestLocationUpdates(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/location/Location;
    .locals 2

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.location.LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a()V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/PendingIntentFactory;->g(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WebEngage"

    if-eqz v0, :cond_0

    const-string v0, "UnRegistering from location updates "

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/PendingIntentFactory;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    sget-object v2, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/location/a;->removeLocationUpdates(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    return-void

    :cond_0
    const-string v0, "Location pending intent does not exists, no need to unregister"

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(DDFLjava/lang/String;Lcom/webengage/sdk/android/WebEngageConfig;)V
    .locals 7

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/location/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/location/c$a;-><init>()V

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/c$a;->setCircularRegion(DDF)Lcom/google/android/gms/location/c$a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/google/android/gms/location/c$a;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/c$a;

    move-result-object p1

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/location/c$a;->setExpirationDuration(J)Lcom/google/android/gms/location/c$a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/location/c$a;->setTransitionTypes(I)Lcom/google/android/gms/location/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/c$a;->build()Lcom/google/android/gms/location/c;

    move-result-object p1

    sget-object p2, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/f;->isConnecting()Z

    move-result p2

    if-eqz p2, :cond_0

    monitor-enter p0

    const-wide/16 p2, 0x1388

    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    sget-object p2, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/location/GeofencingRequest$a;

    invoke-direct {p2}, Lcom/google/android/gms/location/GeofencingRequest$a;-><init>()V

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/google/android/gms/location/GeofencingRequest$a;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/location/GeofencingRequest$a;->addGeofence(Lcom/google/android/gms/location/c;)Lcom/google/android/gms/location/GeofencingRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingRequest$a;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    sget-object p3, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    iget-object p4, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    invoke-static {p4}, Lcom/webengage/sdk/android/PendingIntentFactory;->h(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-interface {p2, p3, p1, p4}, Lcom/google/android/gms/location/d;->addGeofences(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object p1

    sget-object p2, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_BEST:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    if-eq p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Current location tracking strategy is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", for better geofencing results use WebEngage.get().setLocationTrackingStrategy(LocationTrackingStrategy.ACCURACY_BEST)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebEngage"

    invoke-static {p2, p1}, Lcom/webengage/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected a(JJFI)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, p5}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, p6}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    iget-object p2, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    sget-object p3, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0, p1, p2, p3}, Lcom/webengage/sdk/android/q;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/content/Context;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/i;->GeofencingApi:Lcom/google/android/gms/location/d;

    sget-object v1, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/d;->removeGeofences(Lcom/google/android/gms/common/api/f;Ljava/util/List;)Lcom/google/android/gms/common/api/h;

    :cond_0
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_2
    sget-object v0, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/location/i;->FusedLocationApi:Lcom/google/android/gms/location/a;

    sget-object v1, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/a;->getLastLocation(Lcom/google/android/gms/common/api/f;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/q$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/location/f;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/f;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/f;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/c;

    new-instance v3, Lcom/webengage/sdk/android/q$a;

    invoke-interface {v2}, Lcom/google/android/gms/location/c;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/f;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/location/f;->getGeofenceTransition()I

    move-result v5

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/webengage/sdk/android/q$a;-><init>(Lcom/webengage/sdk/android/q;Ljava/lang/String;Landroid/location/Location;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/webengage/sdk/android/q;->c:Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/webengage/sdk/android/q;->a:Landroid/content/Context;

    sget-object v1, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0, p1, v0, v1}, Lcom/webengage/sdk/android/q;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/content/Context;Lcom/google/android/gms/common/api/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConnectionSuspended(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/webengage/sdk/android/q;->b:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/f;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
