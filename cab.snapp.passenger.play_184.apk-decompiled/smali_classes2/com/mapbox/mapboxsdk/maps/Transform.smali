.class public final Lcom/mapbox/mapboxsdk/maps/Transform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Transform"


# instance fields
.field private cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

.field private cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

.field private cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

.field private final handler:Landroid/os/Handler;

.field private final mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private final moveByChangeListener:Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;

.field private final nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Transform$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/Transform$1;-><init>(Lcom/mapbox/mapboxsdk/maps/Transform;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->moveByChangeListener:Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;

    .line 52
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 53
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 54
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/mapbox/mapboxsdk/maps/Transform;)Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/maps/Transform;)Lcom/mapbox/mapboxsdk/maps/MapView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object p0
.end method

.method private isValidCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final animateCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 10

    .line 148
    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdate;->getCameraPosition(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/Transform;->isValidCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    .line 151
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    if-eqz p4, :cond_0

    .line 154
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    .line 156
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p2, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    iget-object v1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-wide v4, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-wide v6, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    int-to-long v8, p3

    invoke-interface/range {v0 .. v9}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->flyTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDDJ)V

    :cond_1
    return-void
.end method

.method final cancelTransitions()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveCanceled()V

    .line 185
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle()V

    const/4 v1, 0x0

    .line 190
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    .line 192
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/mapbox/mapboxsdk/maps/Transform$4;

    invoke-direct {v2, p0, v0}, Lcom/mapbox/mapboxsdk/maps/Transform$4;-><init>(Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->cancelTransitions()V

    .line 203
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle()V

    return-void
.end method

.method final easeCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 128
    invoke-interface {v2, p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdate;->getCameraPosition(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    .line 129
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/Transform;->isValidCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    .line 131
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    if-eqz v3, :cond_0

    .line 134
    iput-object v3, v0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    .line 136
    :cond_0
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v2, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    .line 137
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    iget-object v4, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v5, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-wide v7, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-wide v9, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    move/from16 v1, p3

    int-to-long v11, v1

    move/from16 v13, p4

    invoke-interface/range {v3 .. v13}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->easeTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDDJZ)V

    :cond_1
    return-void
.end method

.method final getBearing()D
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getBearing()D

    move-result-wide v0

    neg-double v0, v0

    :goto_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    add-double/2addr v0, v2

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public final getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object v0
.end method

.method final getCenterCoordinate()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    return-object v0
.end method

.method final getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    return-object v0
.end method

.method final getMaxZoom()D
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method final getMinZoom()D
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method final getRawBearing()D
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getBearing()D

    move-result-wide v0

    return-wide v0
.end method

.method final getRawZoom()D
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method final getTilt()D
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method final initialise(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 2

    .line 58
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getCamera()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->DEFAULT:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    .line 62
    :cond_0
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getMinZoomPreference()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/Transform;->setMinZoom(D)V

    .line 63
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getMaxZoomPreference()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Transform;->setMaxZoom(D)V

    return-void
.end method

.method final invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMove()V

    .line 175
    :cond_0
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object v0
.end method

.method final moveBy(DDJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->moveByChangeListener:Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->moveBy(DDJ)V

    return-void
.end method

.method public final moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 9

    .line 107
    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdate;->getCameraPosition(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/Transform;->isValidCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    .line 110
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 111
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-wide v7, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    invoke-interface/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->jumpTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD)V

    .line 112
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 113
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 114
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/mapbox/mapboxsdk/maps/Transform$3;

    invoke-direct {p2, p0, p3}, Lcom/mapbox/mapboxsdk/maps/Transform$3;-><init>(Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onCameraDidChange(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 83
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraCancelableCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;

    .line 89
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/Transform$2;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/maps/Transform$2;-><init>(Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 97
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    :cond_1
    return-void
.end method

.method final resetNorth()V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    .line 209
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->resetNorth()V

    return-void
.end method

.method final setBearing(D)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setBearing(DJ)V

    return-void
.end method

.method final setBearing(DFF)V
    .locals 9

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    float-to-double v3, p3

    float-to-double v5, p4

    const-wide/16 v7, 0x0

    move-wide v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setBearing(DDDJ)V

    return-void
.end method

.method final setBearing(DFFJ)V
    .locals 9

    .line 257
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    float-to-double v3, p3

    float-to-double v5, p4

    move-wide v1, p1

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setBearing(DDDJ)V

    return-void
.end method

.method final setCenterCoordinate(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;J)V

    return-void
.end method

.method final setGestureInProgress(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setGestureInProgress(Z)V

    if-nez p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    :cond_0
    return-void
.end method

.method final setMaxZoom(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setMaxZoom(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 325
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting maxZoomPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final setMinZoom(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setMinZoom(D)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 313
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Not setting minZoomPreference, value is in unsupported range: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-Transform"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final setTilt(Ljava/lang/Double;)V
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setPitch(DJ)V

    return-void
.end method

.method final setZoom(DLandroid/graphics/PointF;)V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const-wide/16 v4, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setZoom(DLandroid/graphics/PointF;J)V

    return-void
.end method

.method final zoomBy(DLandroid/graphics/PointF;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Transform;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getZoom()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lcom/mapbox/mapboxsdk/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    return-void
.end method
