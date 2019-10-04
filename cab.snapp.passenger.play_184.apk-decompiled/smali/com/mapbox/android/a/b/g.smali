.class final Lcom/mapbox/android/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/a/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mapbox/android/a/b/c;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/android/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/a/b/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/android/a/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    return-void
.end method


# virtual methods
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

    const-string v0, "callback == null"

    .line 24
    invoke-static {p1, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/e;->getLastLocation(Lcom/mapbox/android/a/b/d;)V

    return-void
.end method

.method public final removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/e;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final removeLocationUpdates(Lcom/mapbox/android/a/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 47
    invoke-static {p1, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    .line 1077
    iget-object v1, p0, Lcom/mapbox/android/a/b/g;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/e;->removeLocationUpdates(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "request == null"

    .line 41
    invoke-static {p1, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/android/a/b/e;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final requestLocationUpdates(Lcom/mapbox/android/a/b/h;Lcom/mapbox/android/a/b/d;Landroid/os/Looper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/h;",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "request == null"

    .line 32
    invoke-static {p1, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback == null"

    .line 33
    invoke-static {p2, v0}, Lcom/mapbox/android/a/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    .line 1063
    iget-object v1, p0, Lcom/mapbox/android/a/b/g;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1064
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mapbox/android/a/b/g;->b:Ljava/util/Map;

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/mapbox/android/a/b/g;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/mapbox/android/a/b/g;->a:Lcom/mapbox/android/a/b/e;

    invoke-interface {v1, p2}, Lcom/mapbox/android/a/b/e;->createListener(Lcom/mapbox/android/a/b/d;)Ljava/lang/Object;

    move-result-object v1

    .line 1071
    :cond_1
    iget-object v2, p0, Lcom/mapbox/android/a/b/g;->b:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 34
    :cond_2
    invoke-interface {v0, p1, v1, p3}, Lcom/mapbox/android/a/b/e;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method
