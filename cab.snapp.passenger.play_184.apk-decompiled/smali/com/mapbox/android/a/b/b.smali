.class final Lcom/mapbox/android/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/a/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/a/b/b$a;,
        Lcom/mapbox/android/a/b/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/android/a/b/e<",
        "Lcom/google/android/gms/location/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/location/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/location/i;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    return-void
.end method

.method private static a(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x69

    return p0

    :cond_0
    const/16 p0, 0x68

    return p0

    :cond_1
    const/16 p0, 0x66

    return p0

    :cond_2
    const/16 p0, 0x64

    return p0
.end method

.method private static a(Lcom/mapbox/android/a/b/h;)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 79
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/android/a/b/h;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 81
    invoke-virtual {p0}, Lcom/mapbox/android/a/b/h;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 82
    invoke-virtual {p0}, Lcom/mapbox/android/a/b/h;->getDisplacemnt()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 83
    invoke-virtual {p0}, Lcom/mapbox/android/a/b/h;->getMaxWaitTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 84
    invoke-virtual {p0}, Lcom/mapbox/android/a/b/h;->getPriority()I

    move-result p0

    invoke-static {p0}, Lcom/mapbox/android/a/b/b;->a(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method


# virtual methods
.method public final createListener(Lcom/mapbox/android/a/b/d;)Lcom/google/android/gms/location/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)",
            "Lcom/google/android/gms/location/g;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/mapbox/android/a/b/b$b;

    invoke-direct {v0, p1}, Lcom/mapbox/android/a/b/b$b;-><init>(Lcom/mapbox/android/a/b/d;)V

    return-object v0
.end method

.method public final bridge synthetic createListener(Lcom/mapbox/android/a/b/d;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/b;->createListener(Lcom/mapbox/android/a/b/d;)Lcom/google/android/gms/location/g;

    move-result-object p1

    return-object p1
.end method

.method public final getLastLocation(Lcom/mapbox/android/a/b/d;)V
    .locals 1
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

    .line 46
    new-instance v0, Lcom/mapbox/android/a/b/b$a;

    invoke-direct {v0, p1}, Lcom/mapbox/android/a/b/b$a;-><init>(Lcom/mapbox/android/a/b/d;)V

    .line 48
    iget-object p1, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    invoke-virtual {p1}, Lcom/google/android/gms/location/b;->getLastLocation()Lcom/google/android/gms/c/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/f;->addOnSuccessListener(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/f;->addOnFailureListener(Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method public final removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/b;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;

    :cond_0
    return-void
.end method

.method public final removeLocationUpdates(Lcom/google/android/gms/location/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/b;->removeLocationUpdates(Lcom/google/android/gms/location/g;)Lcom/google/android/gms/c/f;

    :cond_0
    return-void
.end method

.method public final bridge synthetic removeLocationUpdates(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/google/android/gms/location/g;

    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/b;->removeLocationUpdates(Lcom/google/android/gms/location/g;)V

    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    invoke-static {p1}, Lcom/mapbox/android/a/b/b;->a(Lcom/mapbox/android/a/b/h;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/b;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Lcom/google/android/gms/location/g;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mapbox/android/a/b/b;->a:Lcom/google/android/gms/location/b;

    invoke-static {p1}, Lcom/mapbox/android/a/b/b;->a(Lcom/mapbox/android/a/b/h;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/location/b;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/g;Landroid/os/Looper;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method public final bridge synthetic requestLocationUpdates(Lcom/mapbox/android/a/b/h;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 25
    check-cast p2, Lcom/google/android/gms/location/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/android/a/b/b;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Lcom/google/android/gms/location/g;Landroid/os/Looper;)V

    return-void
.end method
