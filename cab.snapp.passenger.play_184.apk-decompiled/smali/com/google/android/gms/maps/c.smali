.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/c$v;,
        Lcom/google/android/gms/maps/c$z;,
        Lcom/google/android/gms/maps/c$i;,
        Lcom/google/android/gms/maps/c$o;,
        Lcom/google/android/gms/maps/c$u;,
        Lcom/google/android/gms/maps/c$s;,
        Lcom/google/android/gms/maps/c$t;,
        Lcom/google/android/gms/maps/c$b;,
        Lcom/google/android/gms/maps/c$y;,
        Lcom/google/android/gms/maps/c$a;,
        Lcom/google/android/gms/maps/c$l;,
        Lcom/google/android/gms/maps/c$m;,
        Lcom/google/android/gms/maps/c$k;,
        Lcom/google/android/gms/maps/c$r;,
        Lcom/google/android/gms/maps/c$q;,
        Lcom/google/android/gms/maps/c$x;,
        Lcom/google/android/gms/maps/c$w;,
        Lcom/google/android/gms/maps/c$h;,
        Lcom/google/android/gms/maps/c$c;,
        Lcom/google/android/gms/maps/c$d;,
        Lcom/google/android/gms/maps/c$e;,
        Lcom/google/android/gms/maps/c$f;,
        Lcom/google/android/gms/maps/c$g;,
        Lcom/google/android/gms/maps/c$p;,
        Lcom/google/android/gms/maps/c$n;,
        Lcom/google/android/gms/maps/c$j;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_HYBRID:I = 0x4

.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MAP_TYPE_TERRAIN:I = 0x3


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/b;

.field private b:Lcom/google/android/gms/maps/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/a/b;

    iput-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    return-void
.end method


# virtual methods
.method public final addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/c;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/c;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/b;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/a/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/google/android/gms/maps/model/a/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/d;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/a/j;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/d;-><init>(Lcom/google/android/gms/maps/model/a/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/h;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/h;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/b;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/a/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/h;-><init>(Lcom/google/android/gms/maps/model/a/v;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/i;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/i;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/b;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Lcom/google/android/gms/maps/model/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/k;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/z;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/k;-><init>(Lcom/google/android/gms/maps/model/a/z;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->zzavz()Lcom/google/android/gms/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->animateCamera(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->zzavz()Lcom/google/android/gms/a/a;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/c$z;

    invoke-direct {v1, p3}, Lcom/google/android/gms/maps/c$z;-><init>(Lcom/google/android/gms/maps/c$a;)V

    move-object p3, v1

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/a/b;->animateCameraWithDurationAndCallback(Lcom/google/android/gms/a/a;ILcom/google/android/gms/maps/a/bo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/a;Lcom/google/android/gms/maps/c$a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->zzavz()Lcom/google/android/gms/a/a;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/c$z;

    invoke-direct {v1, p2}, Lcom/google/android/gms/maps/c$z;-><init>(Lcom/google/android/gms/maps/c$a;)V

    move-object p2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/a/b;->animateCameraWithCallback(Lcom/google/android/gms/a/a;Lcom/google/android/gms/maps/a/bo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final clear()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

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

.method public final getFocusedBuilding()Lcom/google/android/gms/maps/model/e;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getFocusedBuilding()Lcom/google/android/gms/maps/model/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/e;-><init>(Lcom/google/android/gms/maps/model/a/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapType()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getMapType()I

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

.method public final getMaxZoomLevel()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getMaxZoomLevel()F

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

.method public final getMinZoomLevel()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getMinZoomLevel()F

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

.method public final getMyLocation()Landroid/location/Location;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->getMyLocation()Landroid/location/Location;

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

.method public final getProjection()Lcom/google/android/gms/maps/h;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/h;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/b;->getProjection()Lcom/google/android/gms/maps/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/h;-><init>(Lcom/google/android/gms/maps/a/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getUiSettings()Lcom/google/android/gms/maps/j;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/j;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/b;->getUiSettings()Lcom/google/android/gms/maps/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/j;-><init>(Lcom/google/android/gms/maps/a/j;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/j;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/j;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isBuildingsEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->isBuildingsEnabled()Z

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

.method public final isIndoorEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->isIndoorEnabled()Z

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

.method public final isMyLocationEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->isMyLocationEnabled()Z

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

.method public final isTrafficEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->isTrafficEnabled()Z

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

.method public final moveCamera(Lcom/google/android/gms/maps/a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->zzavz()Lcom/google/android/gms/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->moveCamera(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final resetMinMaxZoomPreference()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->resetMinMaxZoomPreference()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setBuildingsEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setBuildingsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setContentDescription(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setContentDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setIndoorEnabled(Z)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setIndoorEnabled(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setInfoWindowAdapter(Lcom/google/android/gms/maps/c$b;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setInfoWindowAdapter(Lcom/google/android/gms/maps/a/bt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/aa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/aa;-><init>(Lcom/google/android/gms/maps/c$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setInfoWindowAdapter(Lcom/google/android/gms/maps/a/bt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setLocationSource(Lcom/google/android/gms/maps/d;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setLocationSource(Lcom/google/android/gms/maps/a/c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/af;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/af;-><init>(Lcom/google/android/gms/maps/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setLocationSource(Lcom/google/android/gms/maps/a/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMapType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setMapType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMaxZoomPreference(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setMaxZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMinZoomPreference(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setMinZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraChangeListener(Lcom/google/android/gms/maps/c$c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCameraChangeListener(Lcom/google/android/gms/maps/a/bx;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/an;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/an;-><init>(Lcom/google/android/gms/maps/c$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCameraChangeListener(Lcom/google/android/gms/maps/a/bx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraIdleListener(Lcom/google/android/gms/maps/c$d;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCameraIdleListener(Lcom/google/android/gms/maps/a/bz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ar;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ar;-><init>(Lcom/google/android/gms/maps/c$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCameraIdleListener(Lcom/google/android/gms/maps/a/bz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/c$e;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/a/cb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/aq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/aq;-><init>(Lcom/google/android/gms/maps/c$e;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/a/cb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveListener(Lcom/google/android/gms/maps/c$f;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveListener(Lcom/google/android/gms/maps/a/cd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ap;-><init>(Lcom/google/android/gms/maps/c$f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveListener(Lcom/google/android/gms/maps/a/cd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/c$g;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/a/cf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ao;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ao;-><init>(Lcom/google/android/gms/maps/c$g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/a/cf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCircleClickListener(Lcom/google/android/gms/maps/c$h;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnCircleClickListener(Lcom/google/android/gms/maps/a/ch;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ai;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ai;-><init>(Lcom/google/android/gms/maps/c$h;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnCircleClickListener(Lcom/google/android/gms/maps/a/ch;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/c$i;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/a/cj;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ah;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ah;-><init>(Lcom/google/android/gms/maps/c$i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/a/cj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/c$j;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/a/cl;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/k;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/k;-><init>(Lcom/google/android/gms/maps/c$j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/a/cl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowClickListener(Lcom/google/android/gms/maps/c$k;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/a/o;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/x;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/x;-><init>(Lcom/google/android/gms/maps/c$k;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/a/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/c$l;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/a/q;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/z;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/z;-><init>(Lcom/google/android/gms/maps/c$l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/a/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/c$m;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/a/s;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/y;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/y;-><init>(Lcom/google/android/gms/maps/c$m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/a/s;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMapClickListener(Lcom/google/android/gms/maps/c$n;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMapClickListener(Lcom/google/android/gms/maps/a/w;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/as;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/as;-><init>(Lcom/google/android/gms/maps/c$n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMapClickListener(Lcom/google/android/gms/maps/a/w;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMapLoadedCallback(Lcom/google/android/gms/maps/c$o;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/a/y;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ae;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ae;-><init>(Lcom/google/android/gms/maps/c$o;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/a/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMapLongClickListener(Lcom/google/android/gms/maps/c$p;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMapLongClickListener(Lcom/google/android/gms/maps/a/aa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/at;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/at;-><init>(Lcom/google/android/gms/maps/c$p;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMapLongClickListener(Lcom/google/android/gms/maps/a/aa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMarkerClickListener(Lcom/google/android/gms/maps/c$q;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMarkerClickListener(Lcom/google/android/gms/maps/a/ae;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/v;-><init>(Lcom/google/android/gms/maps/c$q;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMarkerClickListener(Lcom/google/android/gms/maps/a/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMarkerDragListener(Lcom/google/android/gms/maps/c$r;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMarkerDragListener(Lcom/google/android/gms/maps/a/ag;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/w;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/w;-><init>(Lcom/google/android/gms/maps/c$r;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMarkerDragListener(Lcom/google/android/gms/maps/a/ag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/c$s;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/a/ai;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ac;-><init>(Lcom/google/android/gms/maps/c$s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/a/ai;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationChangeListener(Lcom/google/android/gms/maps/c$t;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/a/ak;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ab;-><init>(Lcom/google/android/gms/maps/c$t;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/a/ak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationClickListener(Lcom/google/android/gms/maps/c$u;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationClickListener(Lcom/google/android/gms/maps/a/am;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ad;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ad;-><init>(Lcom/google/android/gms/maps/c$u;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnMyLocationClickListener(Lcom/google/android/gms/maps/a/am;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPoiClickListener(Lcom/google/android/gms/maps/c$v;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnPoiClickListener(Lcom/google/android/gms/maps/a/ap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/am;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/am;-><init>(Lcom/google/android/gms/maps/c$v;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnPoiClickListener(Lcom/google/android/gms/maps/a/ap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPolygonClickListener(Lcom/google/android/gms/maps/c$w;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnPolygonClickListener(Lcom/google/android/gms/maps/a/ar;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/aj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/aj;-><init>(Lcom/google/android/gms/maps/c$w;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnPolygonClickListener(Lcom/google/android/gms/maps/a/ar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPolylineClickListener(Lcom/google/android/gms/maps/c$x;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/a/b;->setOnPolylineClickListener(Lcom/google/android/gms/maps/a/at;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/ak;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ak;-><init>(Lcom/google/android/gms/maps/c$x;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/b;->setOnPolylineClickListener(Lcom/google/android/gms/maps/a/at;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPadding(IIII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/a/b;->setPadding(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final setTrafficEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/b;->setTrafficEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final snapshot(Lcom/google/android/gms/maps/c$y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/maps/c;->snapshot(Lcom/google/android/gms/maps/c$y;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final snapshot(Lcom/google/android/gms/maps/c$y;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/google/android/gms/a/m;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v1, Lcom/google/android/gms/maps/al;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/al;-><init>(Lcom/google/android/gms/maps/c$y;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/maps/a/b;->snapshot(Lcom/google/android/gms/maps/a/bg;Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/j;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final stopAnimation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/b;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
