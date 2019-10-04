.class public final Lcom/google/android/gms/maps/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/i$d;,
        Lcom/google/android/gms/maps/i$c;,
        Lcom/google/android/gms/maps/i$a;,
        Lcom/google/android/gms/maps/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/a/g;

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    return-void
.end method


# virtual methods
.method public final animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/a/g;->animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final getLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isPanningGesturesEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->isPanningGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isStreetNamesEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->isStreetNamesEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isUserNavigationEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->isUserNavigationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/g;->isZoomGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Landroid/graphics/Point;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/a/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzx(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final pointToOrientation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->pointToOrientation(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/i$a;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/a/av;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    new-instance v1, Lcom/google/android/gms/maps/o;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/o;-><init>(Lcom/google/android/gms/maps/i$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/a/av;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/i$b;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/a/ax;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    new-instance v1, Lcom/google/android/gms/maps/n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/n;-><init>(Lcom/google/android/gms/maps/i$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/a/ax;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/i$c;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/a/az;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    new-instance v1, Lcom/google/android/gms/maps/p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/p;-><init>(Lcom/google/android/gms/maps/i$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/a/az;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/i$d;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/a/bb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    new-instance v1, Lcom/google/android/gms/maps/q;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/q;-><init>(Lcom/google/android/gms/maps/i$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/g;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/a/bb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPanningGesturesEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->enablePanning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPosition(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/a/g;->setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->setPositionWithID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setStreetNamesEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->enableStreetNames(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setUserNavigationEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->enableUserNavigation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/g;->enableZoom(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
