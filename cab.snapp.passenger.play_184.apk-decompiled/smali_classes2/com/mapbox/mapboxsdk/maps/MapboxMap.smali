.class public final Lcom/mapbox/mapboxsdk/maps/MapboxMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$InfoWindowAdapter;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowCloseListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowLongClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolylineClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolygonClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMarkerClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;,
        Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-MapboxMap"


# instance fields
.field private annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

.field private final awaitingStyleGetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

.field private debugActive:Z

.field private final developerAnimationStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

.field private final nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

.field private onFpsChangedListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;

.field private final onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

.field private final projection:Lcom/mapbox/mapboxsdk/maps/Projection;

.field private style:Lcom/mapbox/mapboxsdk/maps/Style;

.field private styleLoadedCallback:Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

.field private final transform:Lcom/mapbox/mapboxsdk/maps/Transform;

.field private final uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/UiSettings;Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/NativeMap;",
            "Lcom/mapbox/mapboxsdk/maps/Transform;",
            "Lcom/mapbox/mapboxsdk/maps/UiSettings;",
            "Lcom/mapbox/mapboxsdk/maps/Projection;",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;",
            "Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->awaitingStyleGetters:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 87
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    .line 88
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    .line 89
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 90
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    .line 91
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    .line 92
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->developerAnimationStartedListeners:Ljava/util/List;

    return-void
.end method

.method private notifyDeveloperAnimationListeners()V
    .locals 2

    .line 2373
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->developerAnimationStartedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    .line 2374
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;->onDeveloperAnimationStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setApiBaseUrl(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1

    .line 755
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getApiBaseUrl()Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setApiBaseUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPrefetchesTiles(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 0

    .line 254
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getPrefetchesTiles()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setPrefetchesTiles(Z)V

    return-void
.end method


# virtual methods
.method public final addMarker(Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;)Lcom/mapbox/mapboxsdk/annotations/Marker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addMarker(Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/annotations/Marker;

    move-result-object p1

    return-object p1
.end method

.method public final addMarker(Lcom/mapbox/mapboxsdk/annotations/MarkerOptions;)Lcom/mapbox/mapboxsdk/annotations/Marker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addMarker(Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/annotations/Marker;

    move-result-object p1

    return-object p1
.end method

.method public final addMarkers(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mapbox/mapboxsdk/annotations/BaseMarkerOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addMarkers(Ljava/util/List;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    return-void
.end method

.method public final addOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->addOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V

    return-void
.end method

.method public final addOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->addOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V

    return-void
.end method

.method public final addOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->addOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V

    return-void
.end method

.method public final addOnFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V

    return-void
.end method

.method public final addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    return-void
.end method

.method public final addOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V

    return-void
.end method

.method public final addOnMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V

    return-void
.end method

.method public final addOnRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V
    .locals 1

    .line 1699
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V

    return-void
.end method

.method public final addOnScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V

    return-void
.end method

.method public final addOnShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onAddShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V

    return-void
.end method

.method public final addPolygon(Lcom/mapbox/mapboxsdk/annotations/PolygonOptions;)Lcom/mapbox/mapboxsdk/annotations/Polygon;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addPolygon(Lcom/mapbox/mapboxsdk/annotations/PolygonOptions;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/annotations/Polygon;

    move-result-object p1

    return-object p1
.end method

.method public final addPolygons(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/PolygonOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polygon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addPolygons(Ljava/util/List;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final addPolyline(Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;)Lcom/mapbox/mapboxsdk/annotations/Polyline;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addPolyline(Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/annotations/Polyline;

    move-result-object p1

    return-object p1
.end method

.method public final addPolylines(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->addPolylines(Ljava/util/List;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V
    .locals 2

    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 547
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    if-lez p2, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 605
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/Transform;->animateCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 602
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null duration passed into animateCamera"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0x12c

    .line 563
    invoke-virtual {p0, p1, v0, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final cancelAllVelocityAnimations()V
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->cancelAllVelocityAnimations()V

    return-void
.end method

.method public final cancelTransitions()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    return-void
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotations()V

    return-void
.end method

.method public final cycleDebugOptions()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->cycleDebugOptions()V

    .line 747
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->debugActive:Z

    return-void
.end method

.method public final deselectMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1304
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->deselectMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    return-void
.end method

.method public final deselectMarkers()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->deselectMarkers()V

    return-void
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V
    .locals 1

    const/16 v0, 0x12c

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    .locals 1

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 6

    if-lez p2, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 534
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/Transform;->easeCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;IZLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 531
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null duration passed into easeCamera"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0x12c

    .line 451
    invoke-virtual {p0, p1, v0, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final getAnnotation(J)Lcom/mapbox/mapboxsdk/annotations/Annotation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1155
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getAnnotation(J)Lcom/mapbox/mapboxsdk/annotations/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraForGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1474
    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[I)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getCameraForGeometry(Lcom/mapbox/geojson/Geometry;DD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8

    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 1505
    fill-array-data v3, :array_0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[I)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8

    .line 1488
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getBearing()D

    move-result-wide v4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getTilt()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public final getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 7

    .line 1524
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public final getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1409
    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[I)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;DD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8

    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 1442
    fill-array-data v3, :array_0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[I)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8

    .line 1424
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getRawBearing()D

    move-result-wide v4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getTilt()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public final getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 7

    .line 1462
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public final getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getGesturesManager()Lcom/mapbox/android/b/a;
    .locals 1

    .line 1772
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->getGesturesManager()Lcom/mapbox/android/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->getHeight()F

    move-result v0

    return v0
.end method

.method public final getInfoWindowAdapter()Lcom/mapbox/mapboxsdk/maps/MapboxMap$InfoWindowAdapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->getInfoWindowAdapter()Lcom/mapbox/mapboxsdk/maps/MapboxMap$InfoWindowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    return-object v0
.end method

.method public final getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getMarkers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxZoomLevel()D
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMinZoomLevel()D
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method final getNativeMapPtr()J
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method final getOnFpsChangedListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onFpsChangedListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;

    return-object v0
.end method

.method public final getOnInfoWindowClickListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowClickListener;
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->getOnInfoWindowClickListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final getOnInfoWindowCloseListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowCloseListener;
    .locals 1

    .line 1875
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->getOnInfoWindowCloseListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowCloseListener;

    move-result-object v0

    return-object v0
.end method

.method public final getOnInfoWindowLongClickListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowLongClickListener;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->getOnInfoWindowLongClickListener()Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowLongClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final getPadding()[I
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->getContentPadding()[I

    move-result-object v0

    return-object v0
.end method

.method public final getPolygons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polygon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getPolygons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPolylines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getPolylines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPrefetchesTiles()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getPrefetchTiles()Z

    move-result v0

    return v0
.end method

.method public final getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    return-object v0
.end method

.method public final getSelectedMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getSelectedMarkers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStyle()Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStyle(Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;->onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final getTransform()Lcom/mapbox/mapboxsdk/maps/Transform;
    .locals 1

    .line 2369
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    return-object v0
.end method

.method public final getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->getWidth()F

    move-result v0

    return v0
.end method

.method final initialise(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0, p0, p2}, Lcom/mapbox/mapboxsdk/maps/Transform;->initialise(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 97
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->initialise(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 100
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getDebugActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setDebugActive(Z)V

    .line 101
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setApiBaseUrl(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    .line 102
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setPrefetchesTiles(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method final injectAnnotationManager(Lcom/mapbox/mapboxsdk/maps/AnnotationManager;)V
    .locals 0

    .line 1966
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->bind(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    return-void
.end method

.method final injectLocationComponent(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    return-void
.end method

.method public final isAllowConcurrentMultipleOpenInfoWindows()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->isAllowConcurrentMultipleOpenInfoWindows()Z

    move-result v0

    return v0
.end method

.method public final isDebugActive()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->debugActive:Z

    return v0
.end method

.method public final moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 422
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method final notifyStyleLoaded()V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->onDidFinishLoadingStyle()V

    .line 851
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onFinishLoadingStyle()V

    .line 854
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->styleLoadedCallback:Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

    if-eqz v0, :cond_1

    .line 855
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;->onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

    .line 860
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;->onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V

    goto :goto_0

    :cond_2
    const-string v0, "No style to provide."

    .line 863
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/MapStrictMode;->strictModeViolation(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 865
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->styleLoadedCallback:Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

    .line 866
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final onDestroy()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->clear()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onDestroy()V

    return-void
.end method

.method final onFailLoadingStyle()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->styleLoadedCallback:Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

    return-void
.end method

.method final onFinishLoadingStyle()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyStyleLoaded()V

    return-void
.end method

.method final onPostMapReady()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-void
.end method

.method final onPreMapReady()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 193
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->reloadMarkers()V

    .line 194
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->adjustTopOffsetPixels(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mapbox_cameraPosition"

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 166
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    invoke-direct {v1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;-><init>(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    .line 170
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const-string v1, "mapbox_debugActive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setDebug(Z)V

    return-void
.end method

.method final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    const-string v1, "mapbox_cameraPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->isDebugActive()Z

    move-result v0

    const-string v1, "mapbox_debugActive"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method final onStart()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onStart()V

    return-void
.end method

.method final onStop()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onStop()V

    return-void
.end method

.method final onUpdateFullyRendered()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->update(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    :cond_0
    return-void
.end method

.method final onUpdateRegionChange()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->update()V

    return-void
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/PointF;Lcom/mapbox/mapboxsdk/style/expressions/Expression;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1921
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1, p3, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/style/expressions/Expression;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1954
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1, p3, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeAnnotation(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotation(J)V

    return-void
.end method

.method public final removeAnnotation(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotation(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V

    return-void
.end method

.method public final removeAnnotations()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotations()V

    return-void
.end method

.method public final removeAnnotations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotations(Ljava/util/List;)V

    return-void
.end method

.method public final removeMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotation(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V

    return-void
.end method

.method public final removeOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->removeOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    return-void
.end method

.method public final removeOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->removeOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V

    return-void
.end method

.method public final removeOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->removeOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V

    return-void
.end method

.method public final removeOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->removeOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V

    return-void
.end method

.method public final removeOnFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V

    return-void
.end method

.method public final removeOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    return-void
.end method

.method public final removeOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V

    return-void
.end method

.method public final removeOnMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V

    return-void
.end method

.method public final removeOnRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V

    return-void
.end method

.method public final removeOnScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V

    return-void
.end method

.method public final removeOnShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->onRemoveShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V

    return-void
.end method

.method public final removePolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotation(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V

    return-void
.end method

.method public final removePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->removeAnnotation(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V

    return-void
.end method

.method public final resetNorth()V
    .locals 1

    .line 640
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 641
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->resetNorth()V

    return-void
.end method

.method public final scrollBy(FF)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->scrollBy(FFJ)V

    return-void
.end method

.method public final scrollBy(FFJ)V
    .locals 7

    .line 628
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 629
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    float-to-double v1, p1

    float-to-double v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->moveBy(DDJ)V

    return-void
.end method

.method public final selectMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Mbgl-MapboxMap"

    const-string v0, "marker was null, so just returning"

    .line 1276
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->selectMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    return-void
.end method

.method public final setAllowConcurrentMultipleOpenInfoWindows(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->setAllowConcurrentMultipleOpenInfoWindows(Z)V

    return-void
.end method

.method public final setCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 1

    .line 397
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final setDebugActive(Z)V
    .locals 1

    .line 732
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->debugActive:Z

    .line 733
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setDebug(Z)V

    return-void
.end method

.method public final setFocalBearing(DFFJ)V
    .locals 7

    .line 653
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->notifyDeveloperAnimationListeners()V

    .line 654
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/Transform;->setBearing(DFFJ)V

    return-void
.end method

.method public final setGesturesManager(Lcom/mapbox/android/b/a;ZZ)V
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onGesturesManagerInteractionListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;->setGesturesManager(Lcom/mapbox/android/b/a;ZZ)V

    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/mapbox/mapboxsdk/maps/MapboxMap$InfoWindowAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->setInfoWindowAdapter(Lcom/mapbox/mapboxsdk/maps/MapboxMap$InfoWindowAdapter;)V

    return-void
.end method

.method public final setLatLngBoundsForCameraTarget(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-void
.end method

.method public final setMaxZoomPreference(D)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Transform;->setMaxZoom(D)V

    return-void
.end method

.method public final setMinZoomPreference(D)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Transform;->setMinZoom(D)V

    return-void
.end method

.method public final setOfflineRegionDefinition(Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;)V
    .locals 1

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setOfflineRegionDefinition(Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final setOfflineRegionDefinition(Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V
    .locals 6

    .line 698
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMinZoom()D

    move-result-wide v0

    .line 699
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMaxZoom()D

    move-result-wide v2

    .line 700
    new-instance v4, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;-><init>()V

    .line 701
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getBounds()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->getCenter()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v4

    .line 702
    invoke-virtual {v4, v0, v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v4

    .line 703
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v4

    .line 704
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V

    .line 705
    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMinZoomPreference(D)V

    .line 706
    invoke-virtual {p0, v2, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMaxZoomPreference(D)V

    .line 707
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;-><init>()V

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final setOnFpsChangedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;)V
    .locals 1

    .line 1647
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onFpsChangedListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;

    .line 1648
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setOnFpsChangedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;)V

    return-void
.end method

.method public final setOnInfoWindowClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowClickListener;)V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->setOnInfoWindowClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowClickListener;)V

    return-void
.end method

.method public final setOnInfoWindowCloseListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowCloseListener;)V
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->setOnInfoWindowCloseListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowCloseListener;)V

    return-void
.end method

.method public final setOnInfoWindowLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowLongClickListener;)V
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->getInfoWindowManager()Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/InfoWindowManager;->setOnInfoWindowLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnInfoWindowLongClickListener;)V

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMarkerClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->setOnMarkerClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMarkerClickListener;)V

    return-void
.end method

.method public final setOnPolygonClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolygonClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->setOnPolygonClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolygonClickListener;)V

    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolylineClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->setOnPolylineClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnPolylineClickListener;)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 3

    .line 1550
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Projection;->setContentPadding([I)V

    .line 1551
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->invalidate()V

    return-void
.end method

.method public final setPrefetchesTiles(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setPrefetchTiles(Z)V

    return-void
.end method

.method public final setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V
    .locals 0

    .line 827
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->styleLoadedCallback:Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;

    .line 828
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->locationComponent:Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onStartLoadingMap()V

    .line 829
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    if-eqz p2, :cond_0

    .line 830
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/Style;->clear()V

    .line 833
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->build(Lcom/mapbox/mapboxsdk/maps/NativeMap;)Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p2

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 834
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 835
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setStyleUri(Ljava/lang/String;)V

    return-void

    .line 836
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->getJson()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 837
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->getJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setStyleJson(Ljava/lang/String;)V

    return-void

    .line 840
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    const-string p2, "{\"version\": 8,\"sources\": {},\"layers\": []}"

    invoke-interface {p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setStyleJson(Ljava/lang/String;)V

    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Ljava/lang/String;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final setStyle(Ljava/lang/String;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V
    .locals 1

    .line 796
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final snapshot(Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;)V
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->addSnapshotCallback(Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;)V

    return-void
.end method

.method public final updateMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->updateMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method public final updatePolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->updatePolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    return-void
.end method

.method public final updatePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;->updatePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    return-void
.end method
