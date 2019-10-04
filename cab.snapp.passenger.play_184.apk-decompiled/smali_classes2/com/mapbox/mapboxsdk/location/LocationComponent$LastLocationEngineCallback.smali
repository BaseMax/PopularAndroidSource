.class final Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/a/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastLocationEngineCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/android/a/b/d<",
        "Lcom/mapbox/android/a/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mapbox/mapboxsdk/location/LocationComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V
    .locals 1

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;->componentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Mbgl-LocationComponent"

    const-string v1, "Failed to obtain last location update"

    .line 1518
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Lcom/mapbox/android/a/b/i;)V
    .locals 2

    .line 1510
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;->componentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p1}, Lcom/mapbox/android/a/b/i;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->access$1000(Lcom/mapbox/mapboxsdk/location/LocationComponent;Landroid/location/Location;Z)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1500
    check-cast p1, Lcom/mapbox/android/a/b/i;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;->onSuccess(Lcom/mapbox/android/a/b/i;)V

    return-void
.end method
