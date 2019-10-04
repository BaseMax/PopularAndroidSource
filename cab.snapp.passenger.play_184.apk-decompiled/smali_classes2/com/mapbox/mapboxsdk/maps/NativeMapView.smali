.class final Lcom/mapbox/mapboxsdk/maps/NativeMapView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/NativeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;,
        Lcom/mapbox/mapboxsdk/maps/NativeMapView$StyleCallback;,
        Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-NativeMapView"


# instance fields
.field private destroyed:Z

.field private final fileSource:Lcom/mapbox/mapboxsdk/storage/FileSource;

.field private final mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

.field private nativePtr:J

.field private final pixelRatio:F

.field private snapshotReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;

.field private stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

.field private final thread:Ljava/lang/Thread;

.field private viewCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 79
    invoke-static {}, Lcom/mapbox/mapboxsdk/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FZLcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->destroyed:Z

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativePtr:J

    .line 96
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    .line 97
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->viewCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;

    .line 98
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/storage/FileSource;->getInstance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->fileSource:Lcom/mapbox/mapboxsdk/storage/FileSource;

    .line 99
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->thread:Ljava/lang/Thread;

    .line 101
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    .line 102
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->fileSource:Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-object v0, p0

    move-object v1, p0

    move-object v3, p6

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeInitialize(Lcom/mapbox/mapboxsdk/maps/NativeMapView;Lcom/mapbox/mapboxsdk/storage/FileSource;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;FZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;)V
    .locals 8

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;-><init>(Landroid/content/Context;FZLcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mapbox/mapboxsdk/maps/NativeMapView;)Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    return-object p0
.end method

.method private checkState(Ljava/lang/String;)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->destroyed:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "You\'re calling `%s` after the `MapView` was destroyed, were you invoking it after `onDestroy()`?"

    .line 121
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mbgl-NativeMapView"

    .line 124
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/MapStrictMode;->strictModeViolation(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->destroyed:Z

    return p1

    .line 112
    :cond_1
    new-instance v0, Lcom/mapbox/mapboxsdk/exceptions/CalledFromWorkerThreadException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Map interactions should happen on the UI thread. Method invoked from wrong thread is %s."

    .line 113
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mapbox/mapboxsdk/exceptions/CalledFromWorkerThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeAddAnnotationIcon(Ljava/lang/String;IIF[B)V
.end method

.method private native nativeAddImage(Ljava/lang/String;Landroid/graphics/Bitmap;FZ)V
.end method

.method private native nativeAddImages([Lcom/mapbox/mapboxsdk/maps/Image;)V
.end method

.method private native nativeAddLayer(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapbox/mapboxsdk/style/layers/CannotAddLayerException;
        }
    .end annotation
.end method

.method private native nativeAddLayerAbove(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapbox/mapboxsdk/style/layers/CannotAddLayerException;
        }
    .end annotation
.end method

.method private native nativeAddLayerAt(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapbox/mapboxsdk/style/layers/CannotAddLayerException;
        }
    .end annotation
.end method

.method private native nativeAddMarkers([Lcom/mapbox/mapboxsdk/annotations/Marker;)[J
.end method

.method private native nativeAddPolygons([Lcom/mapbox/mapboxsdk/annotations/Polygon;)[J
.end method

.method private native nativeAddPolylines([Lcom/mapbox/mapboxsdk/annotations/Polyline;)[J
.end method

.method private native nativeAddSource(Lcom/mapbox/mapboxsdk/style/sources/Source;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapbox/mapboxsdk/style/sources/CannotAddSourceException;
        }
    .end annotation
.end method

.method private native nativeCancelTransitions()V
.end method

.method private native nativeCycleDebugOptions()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeEaseTo(DDDJDDZ)V
.end method

.method private native nativeFlyTo(DDDJDD)V
.end method

.method private native nativeGetBearing()D
.end method

.method private native nativeGetCameraForGeometry(Lcom/mapbox/geojson/Geometry;DDDDDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
.end method

.method private native nativeGetCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;DDDDDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
.end method

.method private native nativeGetCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
.end method

.method private native nativeGetContentPadding()[F
.end method

.method private native nativeGetDebug()Z
.end method

.method private native nativeGetImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
.end method

.method private native nativeGetLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
.end method

.method private native nativeGetLayers()[Lcom/mapbox/mapboxsdk/style/layers/Layer;
.end method

.method private native nativeGetLight()Lcom/mapbox/mapboxsdk/style/light/Light;
.end method

.method private native nativeGetMaxZoom()D
.end method

.method private native nativeGetMetersPerPixelAtLatitude(DD)D
.end method

.method private native nativeGetMinZoom()D
.end method

.method private native nativeGetPitch()D
.end method

.method private native nativeGetPrefetchTiles()Z
.end method

.method private native nativeGetSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;
.end method

.method private native nativeGetSources()[Lcom/mapbox/mapboxsdk/style/sources/Source;
.end method

.method private native nativeGetStyleJson()Ljava/lang/String;
.end method

.method private native nativeGetStyleUrl()Ljava/lang/String;
.end method

.method private native nativeGetTopOffsetPixelsForAnnotationSymbol(Ljava/lang/String;)D
.end method

.method private native nativeGetTransitionDelay()J
.end method

.method private native nativeGetTransitionDuration()J
.end method

.method private native nativeGetTransitionOptions()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetZoom()D
.end method

.method private native nativeInitialize(Lcom/mapbox/mapboxsdk/maps/NativeMapView;Lcom/mapbox/mapboxsdk/storage/FileSource;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;FZ)V
.end method

.method private native nativeIsFullyLoaded()Z
.end method

.method private native nativeJumpTo(DDDDD)V
.end method

.method private native nativeLatLngForPixel(FF)Lcom/mapbox/mapboxsdk/geometry/LatLng;
.end method

.method private native nativeLatLngForProjectedMeters(DD)Lcom/mapbox/mapboxsdk/geometry/LatLng;
.end method

.method private native nativeMoveBy(DDJ)V
.end method

.method private native nativeOnLowMemory()V
.end method

.method private native nativePixelForLatLng(DD)Landroid/graphics/PointF;
.end method

.method private native nativeProjectedMetersForLatLng(DD)Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;
.end method

.method private native nativeQueryPointAnnotations(Landroid/graphics/RectF;)[J
.end method

.method private native nativeQueryRenderedFeaturesForBox(FFFF[Ljava/lang/String;[Ljava/lang/Object;)[Lcom/mapbox/geojson/Feature;
.end method

.method private native nativeQueryRenderedFeaturesForPoint(FF[Ljava/lang/String;[Ljava/lang/Object;)[Lcom/mapbox/geojson/Feature;
.end method

.method private native nativeQueryShapeAnnotations(Landroid/graphics/RectF;)[J
.end method

.method private native nativeRemoveAnnotationIcon(Ljava/lang/String;)V
.end method

.method private native nativeRemoveAnnotations([J)V
.end method

.method private native nativeRemoveImage(Ljava/lang/String;)V
.end method

.method private native nativeRemoveLayer(J)Z
.end method

.method private native nativeRemoveLayerAt(I)Z
.end method

.method private native nativeRemoveSource(Lcom/mapbox/mapboxsdk/style/sources/Source;J)Z
.end method

.method private native nativeResetNorth()V
.end method

.method private native nativeResetPosition()V
.end method

.method private native nativeResetZoom()V
.end method

.method private native nativeResizeView(II)V
.end method

.method private native nativeRotateBy(DDDDJ)V
.end method

.method private native nativeSetBearing(DJ)V
.end method

.method private native nativeSetBearingXY(DDDJ)V
.end method

.method private native nativeSetContentPadding(FFFF)V
.end method

.method private native nativeSetDebug(Z)V
.end method

.method private native nativeSetGestureInProgress(Z)V
.end method

.method private native nativeSetLatLng(DDJ)V
.end method

.method private native nativeSetLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
.end method

.method private native nativeSetMaxZoom(D)V
.end method

.method private native nativeSetMinZoom(D)V
.end method

.method private native nativeSetPitch(DJ)V
.end method

.method private native nativeSetPrefetchTiles(Z)V
.end method

.method private native nativeSetReachability(Z)V
.end method

.method private native nativeSetStyleJson(Ljava/lang/String;)V
.end method

.method private native nativeSetStyleUrl(Ljava/lang/String;)V
.end method

.method private native nativeSetTransitionDelay(J)V
.end method

.method private native nativeSetTransitionDuration(J)V
.end method

.method private native nativeSetTransitionOptions(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
.end method

.method private native nativeSetVisibleCoordinateBounds([Lcom/mapbox/mapboxsdk/geometry/LatLng;Landroid/graphics/RectF;DJ)V
.end method

.method private native nativeSetZoom(DDDJ)V
.end method

.method private native nativeTakeSnapshot()V
.end method

.method private native nativeUpdateMarker(JDDLjava/lang/String;)V
.end method

.method private native nativeUpdatePolygon(JLcom/mapbox/mapboxsdk/annotations/Polygon;)V
.end method

.method private native nativeUpdatePolyline(JLcom/mapbox/mapboxsdk/annotations/Polyline;)V
.end method

.method private onCameraDidChange(Z)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 972
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onCameraDidChange(Z)V

    :cond_0
    return-void
.end method

.method private onCameraIsChanging()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onCameraIsChanging()V

    :cond_0
    return-void
.end method

.method private onCameraWillChange(Z)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 958
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onCameraWillChange(Z)V

    :cond_0
    return-void
.end method

.method private onCanRemoveUnusedStyleImage(Ljava/lang/String;)Z
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1056
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onCanRemoveUnusedStyleImage(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private onDidBecomeIdle()V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1028
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidBecomeIdle()V

    :cond_0
    return-void
.end method

.method private onDidFailLoadingMap(Ljava/lang/String;)V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 993
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidFailLoadingMap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onDidFinishLoadingMap()V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 986
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidFinishLoadingMap()V

    :cond_0
    return-void
.end method

.method private onDidFinishLoadingStyle()V
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1035
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidFinishLoadingStyle()V

    :cond_0
    return-void
.end method

.method private onDidFinishRenderingFrame(Z)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1007
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidFinishRenderingFrame(Z)V

    :cond_0
    return-void
.end method

.method private onDidFinishRenderingMap(Z)V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onDidFinishRenderingMap(Z)V

    :cond_0
    return-void
.end method

.method private onSourceChanged(Ljava/lang/String;)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1042
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onSourceChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onStyleImageMissing(Ljava/lang/String;)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onStyleImageMissing(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onWillStartLoadingMap()V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 979
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onWillStartLoadingMap()V

    :cond_0
    return-void
.end method

.method private onWillStartRenderingFrame()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1000
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onWillStartRenderingFrame()V

    :cond_0
    return-void
.end method

.method private onWillStartRenderingMap()V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->stateCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;->onWillStartRenderingMap()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAnnotationIcon(Ljava/lang/String;IIF[B)V
    .locals 1

    const-string v0, "addAnnotationIcon"

    .line 552
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 555
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddAnnotationIcon(Ljava/lang/String;IIF[B)V

    return-void
.end method

.method public final addImages([Lcom/mapbox/mapboxsdk/maps/Image;)V
    .locals 1

    const-string v0, "addImages"

    .line 864
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddImages([Lcom/mapbox/mapboxsdk/maps/Image;)V

    return-void
.end method

.method public final addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V
    .locals 2

    const-string v0, "addLayer"

    .line 757
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddLayer(JLjava/lang/String;)V

    return-void
.end method

.method public final addLayerAbove(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 2

    const-string v0, "addLayerAbove"

    .line 773
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 776
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddLayerAbove(JLjava/lang/String;)V

    return-void
.end method

.method public final addLayerAt(Lcom/mapbox/mapboxsdk/style/layers/Layer;I)V
    .locals 2

    const-string v0, "addLayerAt"

    .line 781
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddLayerAt(JI)V

    return-void
.end method

.method public final addLayerBelow(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 2

    const-string v0, "addLayerBelow"

    .line 765
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 768
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddLayer(JLjava/lang/String;)V

    return-void
.end method

.method public final addMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)J
    .locals 2

    const-string v0, "addMarker"

    .line 437
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Marker;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 441
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddMarkers([Lcom/mapbox/mapboxsdk/annotations/Marker;)[J

    move-result-object p1

    aget-wide v0, p1, v1

    return-wide v0
.end method

.method public final addMarkers(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "addMarkers"

    .line 447
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1

    .line 450
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Marker;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mapbox/mapboxsdk/annotations/Marker;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddMarkers([Lcom/mapbox/mapboxsdk/annotations/Marker;)[J

    move-result-object p1

    return-object p1
.end method

.method public final addPolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)J
    .locals 2

    const-string v0, "addPolygon"

    .line 473
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Polygon;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 477
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddPolygons([Lcom/mapbox/mapboxsdk/annotations/Polygon;)[J

    move-result-object p1

    aget-wide v0, p1, v1

    return-wide v0
.end method

.method public final addPolygons(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polygon;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "addPolygons"

    .line 483
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1

    .line 486
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Polygon;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mapbox/mapboxsdk/annotations/Polygon;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddPolygons([Lcom/mapbox/mapboxsdk/annotations/Polygon;)[J

    move-result-object p1

    return-object p1
.end method

.method public final addPolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)J
    .locals 2

    const-string v0, "addPolyline"

    .line 455
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Polyline;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 459
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddPolylines([Lcom/mapbox/mapboxsdk/annotations/Polyline;)[J

    move-result-object p1

    aget-wide v0, p1, v1

    return-wide v0
.end method

.method public final addPolylines(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polyline;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "addPolylines"

    .line 465
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1

    .line 468
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddPolylines([Lcom/mapbox/mapboxsdk/annotations/Polyline;)[J

    move-result-object p1

    return-object p1
.end method

.method public final addSnapshotCallback(Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;)V
    .locals 1

    const-string v0, "addSnapshotCallback"

    .line 1400
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1403
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->snapshotReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;

    .line 1404
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeTakeSnapshot()V

    return-void
.end method

.method public final addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V
    .locals 2

    const-string v0, "addSource"

    .line 836
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/Source;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeAddSource(Lcom/mapbox/mapboxsdk/style/sources/Source;J)V

    return-void
.end method

.method public final cancelTransitions()V
    .locals 1

    const-string v0, "cancelTransitions"

    .line 217
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeCancelTransitions()V

    return-void
.end method

.method public final cycleDebugOptions()V
    .locals 1

    const-string v0, "cycleDebugOptions"

    .line 592
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeCycleDebugOptions()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->destroyed:Z

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->viewCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;

    .line 135
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeDestroy()V

    return-void
.end method

.method public final easeTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDDJZ)V
    .locals 16

    const-string v0, "easeTo"

    move-object/from16 v15, p0

    .line 685
    invoke-direct {v15, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v6

    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v8, p8

    move-wide/from16 v10, p6

    move-wide/from16 v12, p2

    move/from16 v14, p10

    invoke-direct/range {v1 .. v14}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeEaseTo(DDDJDDZ)V

    return-void
.end method

.method public final flyTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDDJ)V
    .locals 15

    const-string v0, "flyTo"

    move-object v14, p0

    .line 694
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v6

    move-object v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v8, p8

    move-wide/from16 v10, p6

    move-wide/from16 v12, p2

    invoke-direct/range {v1 .. v13}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeFlyTo(DDDJDD)V

    return-void
.end method

.method public final getBearing()D
    .locals 2

    const-string v0, "getBearing"

    .line 421
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetBearing()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getCameraForGeometry(Lcom/mapbox/geojson/Geometry;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 15

    move-object v14, p0

    const-string v0, "getCameraForGeometry"

    .line 273
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 276
    aget v0, p2, v0

    int-to-float v0, v0

    iget v1, v14, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    float-to-double v2, v0

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v4, v0

    const/4 v0, 0x3

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v6, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v8, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetCameraForGeometry(Lcom/mapbox/geojson/Geometry;DDDDDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;[IDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 15

    move-object v14, p0

    const-string v0, "getCameraForLatLngBounds"

    .line 257
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 260
    aget v0, p2, v0

    int-to-float v0, v0

    iget v1, v14, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    float-to-double v2, v0

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v4, v0

    const/4 v0, 0x3

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v6, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v8, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetCameraForLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;DDDDDD)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    const-string v0, "getCameraValues"

    .line 703
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getContentPadding()[F
    .locals 6

    const-string v0, "getContentPadding"

    .line 391
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    new-array v0, v1, [F

    .line 392
    fill-array-data v0, :array_0

    return-object v0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetContentPadding()[F

    move-result-object v0

    new-array v1, v1, [F

    const/4 v2, 0x1

    .line 395
    aget v3, v0, v2

    iget v4, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    mul-float v3, v3, v4

    const/4 v5, 0x0

    aput v3, v1, v5

    aget v3, v0, v5

    mul-float v3, v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    mul-float v3, v3, v4

    const/4 v5, 0x2

    aput v3, v1, v5

    aget v0, v0, v5

    mul-float v0, v0, v4

    aput v0, v1, v2

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getDebug()Z
    .locals 1

    const-string v0, "getDebug"

    .line 600
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetDebug()Z

    move-result v0

    return v0
.end method

.method public final getDensityDependantRectangle(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 943
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "getImage"

    .line 880
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 883
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    const-string v0, ""

    .line 249
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>()V

    return-object v0

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 1

    const-string v0, "getLayer"

    .line 749
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 752
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    return-object p1
.end method

.method public final getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            ">;"
        }
    .end annotation

    const-string v0, "getLayers"

    .line 741
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 744
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetLayers()[Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLight()Lcom/mapbox/mapboxsdk/style/light/Light;
    .locals 1

    const-string v0, "getLight"

    .line 929
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetLight()Lcom/mapbox/mapboxsdk/style/light/Light;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxZoom()D
    .locals 2

    const-string v0, "getMaxZoom"

    .line 361
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMetersPerPixelAtLatitude(D)D
    .locals 2

    const-string v0, "getMetersPerPixelAtLatitude"

    .line 624
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->getZoom()D

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetMetersPerPixelAtLatitude(DD)D

    move-result-wide p1

    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public final getMinZoom()D
    .locals 2

    const-string v0, "getMinZoom"

    .line 345
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    .line 1391
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativePtr:J

    return-wide v0
.end method

.method public final getPitch()D
    .locals 2

    const-string v0, "getPitch"

    .line 297
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getPixelRatio()F
    .locals 1

    .line 937
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    return v0
.end method

.method public final getPrefetchTiles()Z
    .locals 1

    const-string v0, "getPrefetchTiles"

    .line 719
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetPrefetchTiles()Z

    move-result v0

    return v0
.end method

.method public final getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;
    .locals 1

    const-string v0, "getSource"

    .line 828
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    return-object p1
.end method

.method public final getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/style/sources/Source;",
            ">;"
        }
    .end annotation

    const-string v0, "getSources"

    .line 820
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetSources()[Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStyleJson()Ljava/lang/String;
    .locals 1

    const-string v0, "getStyleJson"

    .line 201
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetStyleJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStyleUri()Ljava/lang/String;
    .locals 1

    const-string v0, "getStyleUri"

    .line 184
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetStyleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTopOffsetPixelsForAnnotationSymbol(Ljava/lang/String;)D
    .locals 2

    const-string v0, "getTopOffsetPixelsForAnnotationSymbol"

    .line 668
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 671
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetTopOffsetPixelsForAnnotationSymbol(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTransitionOptions()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 735
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetTransitionOptions()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getZoom()D
    .locals 2

    const-string v0, "getZoom"

    .line 321
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeGetZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1437
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->destroyed:Z

    return v0
.end method

.method public final isFullyLoaded()Z
    .locals 1

    const-string v0, "isFullyLoaded"

    .line 608
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeIsFullyLoaded()Z

    move-result v0

    return v0
.end method

.method public final jumpTo(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD)V
    .locals 13

    const-string v0, "jumpTo"

    move-object v12, p0

    .line 676
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 679
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v6

    move-object v1, p0

    move-wide/from16 v2, p6

    move-wide/from16 v8, p4

    move-wide v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeJumpTo(DDDDD)V

    return-void
.end method

.method public final latLngForPixel(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 2

    const-string v0, "latLngForPixel"

    .line 660
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>()V

    return-object p1

    .line 663
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeLatLngForPixel(FF)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public final latLngForProjectedMeters(Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 4

    const-string v0, "latLngForProjectedMeters"

    .line 640
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>()V

    return-object p1

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;->getNorthing()D

    move-result-wide v0

    .line 644
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;->getEasting()D

    move-result-wide v2

    .line 643
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeLatLngForProjectedMeters(DD)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public final moveBy(DDJ)V
    .locals 7

    const-string v0, "moveBy"

    .line 233
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, p1, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, p3, v3

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeMoveBy(DDJ)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const-string v0, "onLowMemory"

    .line 576
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeOnLowMemory()V

    return-void
.end method

.method protected final onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "OnSnapshotReady"

    .line 1064
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1069
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->snapshotReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->viewCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;

    if-nez v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->snapshotReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->viewCallback:Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;->getViewContent()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1075
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->snapshotReadyCallback:Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;

    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/utils/BitmapUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Mbgl-NativeMapView"

    const-string v1, "Exception in onSnapshotReady"

    .line 1080
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    throw p1
.end method

.method public final pixelForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
    .locals 4

    const-string v0, "pixelForLatLng"

    .line 650
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativePixelForLatLng(DD)Landroid/graphics/PointF;

    move-result-object p1

    .line 654
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-object p1
.end method

.method public final projectedMetersForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;
    .locals 4

    const-string v0, "projectedMetersForLatLng"

    .line 632
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeProjectedMetersForLatLng(DD)Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;

    move-result-object p1

    return-object p1
.end method

.method public final queryPointAnnotations(Landroid/graphics/RectF;)[J
    .locals 1

    const-string v0, "queryPointAnnotations"

    .line 535
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeQueryPointAnnotations(Landroid/graphics/RectF;)[J

    move-result-object p1

    return-object p1
.end method

.method public final queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "[",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    const-string v0, "queryRenderedFeatures"

    .line 893
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 896
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p1, v1

    if-eqz p3, :cond_1

    .line 897
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 896
    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeQueryRenderedFeaturesForPoint(FF[Ljava/lang/String;[Ljava/lang/Object;)[Lcom/mapbox/geojson/Feature;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 898
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "[",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;"
        }
    .end annotation

    const-string v0, "queryRenderedFeatures"

    .line 906
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 909
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float v3, v0, v1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float v4, v0, v1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float v5, v0, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float v6, p1, v0

    if-eqz p3, :cond_1

    .line 915
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    move-object v2, p0

    move-object v7, p2

    .line 909
    invoke-direct/range {v2 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeQueryRenderedFeaturesForBox(FFFF[Ljava/lang/String;[Ljava/lang/Object;)[Lcom/mapbox/geojson/Feature;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 916
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final queryShapeAnnotations(Landroid/graphics/RectF;)[J
    .locals 1

    const-string v0, "queryShapeAnnotations"

    .line 544
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [J

    return-object p1

    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeQueryShapeAnnotations(Landroid/graphics/RectF;)[J

    move-result-object p1

    return-object p1
.end method

.method public final removeAnnotation(J)V
    .locals 2

    const-string v0, "removeAnnotation"

    .line 517
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 521
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->removeAnnotations([J)V

    return-void
.end method

.method public final removeAnnotationIcon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "removeAnnotationIcon"

    .line 560
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveAnnotationIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final removeAnnotations([J)V
    .locals 1

    const-string v0, "removeAnnotations"

    .line 526
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveAnnotations([J)V

    return-void
.end method

.method public final removeImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "removeImage"

    .line 872
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveImage(Ljava/lang/String;)V

    return-void
.end method

.method public final removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z
    .locals 2

    const-string v0, "removeLayer"

    .line 803
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 806
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveLayer(J)Z

    move-result p1

    return p1
.end method

.method public final removeLayer(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "removeLayer"

    .line 789
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 793
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 795
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final removeLayerAt(I)Z
    .locals 1

    const-string v0, "removeLayerAt"

    .line 811
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 814
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveLayerAt(I)Z

    move-result p1

    return p1
.end method

.method public final removeSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z
    .locals 2

    const-string v0, "removeSource"

    .line 856
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 859
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/Source;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRemoveSource(Lcom/mapbox/mapboxsdk/style/sources/Source;J)Z

    move-result p1

    return p1
.end method

.method public final removeSource(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "removeSource"

    .line 844
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 847
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 849
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->removeSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final resetNorth()V
    .locals 1

    const-string v0, "resetNorth"

    .line 429
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeResetNorth()V

    return-void
.end method

.method public final resetPosition()V
    .locals 1

    const-string v0, "resetPosition"

    .line 289
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeResetPosition()V

    return-void
.end method

.method public final resetZoom()V
    .locals 1

    const-string v0, "resetZoom"

    .line 329
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeResetZoom()V

    return-void
.end method

.method public final resizeView(II)V
    .locals 5

    const-string v0, "resizeView"

    .line 140
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    .line 143
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    .line 144
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Mbgl-NativeMapView"

    const v3, 0xffff

    if-le p1, v3, :cond_1

    new-array v4, v1, [Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "Device returned an out of range width size, capping value at 65535 instead of %s"

    .line 156
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0xffff

    :cond_1
    if-le p2, v3, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Device returned an out of range height size, capping value at 65535 instead of %s"

    .line 164
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0xffff

    .line 170
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeResizeView(II)V

    return-void

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final rotateBy(DDDDJ)V
    .locals 12

    move-object v11, p0

    const-string v0, "rotateBy"

    .line 370
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget v0, v11, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, p1, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, p3, v3

    move-object v0, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeRotateBy(DDDDJ)V

    return-void
.end method

.method public final setApiBaseUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setApiBaseUrl"

    .line 921
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->fileSource:Lcom/mapbox/mapboxsdk/storage/FileSource;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/storage/FileSource;->setApiBaseUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setBearing(DDDJ)V
    .locals 10

    move-object v9, p0

    const-string v0, "setBearing"

    .line 413
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget v0, v9, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, p3, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, p5, v0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetBearingXY(DDDJ)V

    return-void
.end method

.method public final setBearing(DJ)V
    .locals 1

    const-string v0, "setBearing"

    .line 405
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetBearing(DJ)V

    return-void
.end method

.method public final setContentPadding([F)V
    .locals 5

    const-string v0, "setContentPadding"

    .line 378
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 382
    aget v0, p1, v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    div-float/2addr v2, v1

    const/4 v3, 0x3

    aget v3, p1, v3

    div-float/2addr v3, v1

    const/4 v4, 0x2

    aget p1, p1, v4

    div-float/2addr p1, v1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetContentPadding(FFFF)V

    return-void
.end method

.method public final setDebug(Z)V
    .locals 1

    const-string v0, "setDebug"

    .line 584
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetDebug(Z)V

    return-void
.end method

.method public final setGestureInProgress(Z)V
    .locals 1

    const-string v0, "setGestureInProgress"

    .line 225
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetGestureInProgress(Z)V

    return-void
.end method

.method public final setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;J)V
    .locals 8

    const-string v0, "setLatLng"

    .line 241
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetLatLng(DDJ)V

    return-void
.end method

.method public final setLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 1

    const-string v0, "setLatLngBounds"

    .line 209
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-void
.end method

.method public final setMaxZoom(D)V
    .locals 1

    const-string v0, "setMaxZoom"

    .line 353
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetMaxZoom(D)V

    return-void
.end method

.method public final setMinZoom(D)V
    .locals 1

    const-string v0, "setMinZoom"

    .line 337
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetMinZoom(D)V

    return-void
.end method

.method public final setOnFpsChangedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;)V
    .locals 3

    .line 1409
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1410
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    new-instance v2, Lcom/mapbox/mapboxsdk/maps/NativeMapView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView$1;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFpsChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setPitch(DJ)V
    .locals 1

    const-string v0, "setPitch"

    .line 305
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetPitch(DJ)V

    return-void
.end method

.method public final setPrefetchTiles(Z)V
    .locals 1

    const-string v0, "setPrefetchTiles"

    .line 711
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetPrefetchTiles(Z)V

    return-void
.end method

.method public final setReachability(Z)V
    .locals 1

    const-string v0, "setReachability"

    .line 616
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetReachability(Z)V

    return-void
.end method

.method public final setStyleJson(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setStyleJson"

    .line 192
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetStyleJson(Ljava/lang/String;)V

    return-void
.end method

.method public final setStyleUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setStyleUri"

    .line 175
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetStyleUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setTransitionOptions(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 0

    .line 729
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetTransitionOptions(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V

    return-void
.end method

.method public final setVisibleCoordinateBounds([Lcom/mapbox/mapboxsdk/geometry/LatLng;Landroid/graphics/RectF;DJ)V
    .locals 1

    const-string v0, "setVisibleCoordinateBounds"

    .line 568
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 571
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetVisibleCoordinateBounds([Lcom/mapbox/mapboxsdk/geometry/LatLng;Landroid/graphics/RectF;DJ)V

    return-void
.end method

.method public final setZoom(DLandroid/graphics/PointF;J)V
    .locals 10

    const-string v0, "setZoom"

    .line 313
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr v0, v1

    float-to-double v4, v0

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->pixelRatio:F

    div-float/2addr p3, v0

    float-to-double v6, p3

    move-object v1, p0

    move-wide v2, p1

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeSetZoom(DDDJ)V

    return-void
.end method

.method public final updateMarker(Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 10

    const-string v0, "updateMarker"

    .line 491
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->getPosition()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->getIcon()Lcom/mapbox/mapboxsdk/annotations/Icon;

    move-result-object v1

    .line 496
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeUpdateMarker(JDDLjava/lang/String;)V

    return-void
.end method

.method public final updatePolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 2

    const-string v0, "updatePolygon"

    .line 501
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeUpdatePolygon(JLcom/mapbox/mapboxsdk/annotations/Polygon;)V

    return-void
.end method

.method public final updatePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 2

    const-string v0, "updatePolyline"

    .line 509
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;->nativeUpdatePolyline(JLcom/mapbox/mapboxsdk/annotations/Polyline;)V

    return-void
.end method
