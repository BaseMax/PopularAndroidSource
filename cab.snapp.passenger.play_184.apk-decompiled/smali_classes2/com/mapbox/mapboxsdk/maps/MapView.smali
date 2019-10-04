.class public Lcom/mapbox/mapboxsdk/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;,
        Lcom/mapbox/mapboxsdk/maps/MapView$GesturesManagerInteractionListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;,
        Lcom/mapbox/mapboxsdk/maps/MapView$FocalPointInvalidator;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;,
        Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;
    }
.end annotation


# instance fields
.field private attrView:Landroid/widget/ImageView;

.field private attributionClickListener:Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;

.field private compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

.field private destroyed:Z

.field private focalPoint:Landroid/graphics/PointF;

.field private final initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

.field private isStarted:Z

.field private logoView:Landroid/widget/ImageView;

.field private final mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

.field private final mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

.field private mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

.field private mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

.field private mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

.field private mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

.field private nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

.field private savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    .line 66
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    .line 67
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    .line 94
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->createFromAttributes(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    .line 66
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    .line 67
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    .line 100
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-direct {p3}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;-><init>()V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    .line 66
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-direct {p3, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    .line 67
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    invoke-direct {p3, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    .line 106
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    .line 66
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    .line 67
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    if-nez p2, :cond_0

    .line 112
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->createFromAttributes(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/maps/MapView;)Landroid/graphics/PointF;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onSurfaceCreated()V

    return-void
.end method

.method static synthetic access$700(Lcom/mapbox/mapboxsdk/maps/MapView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->destroyed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseMap()V

    return-void
.end method

.method private createCompassAnimationListener(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;
    .locals 1

    .line 225
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$2;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$2;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V

    return-object v0
.end method

.method private createCompassClickListener(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 240
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$3;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$3;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V

    return-object v0
.end method

.method private createFocalPointChangeListener()Lcom/mapbox/mapboxsdk/maps/FocalPointChangeListener;
    .locals 1

    .line 215
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$1;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    return-object v0
.end method

.method private getPixelRatio()F
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getPixelRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    :cond_0
    return v0
.end method

.method private initialiseDrawingSurface(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 8

    .line 285
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getLocalIdeographFontFamily()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getTextureMode()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 287
    new-instance v7, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getTranslucentTextureSurface()Z

    move-result v5

    .line 289
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/MapView$4;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/maps/MapView$4;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    .line 298
    invoke-virtual {p0, v7, v6}, Lcom/mapbox/mapboxsdk/maps/MapView;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 300
    :cond_0
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getRenderSurfaceOnTop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 302
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$5;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, v4}, Lcom/mapbox/mapboxsdk/maps/MapView$5;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    .line 310
    invoke-virtual {p0, p1, v6}, Lcom/mapbox/mapboxsdk/maps/MapView;->addView(Landroid/view/View;I)V

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getCrossSourceCollisions()Z

    move-result v3

    .line 314
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/NativeMapView;

    .line 315
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getPixelRatio()F

    move-result v2

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/NativeMapView;-><init>(Landroid/content/Context;FZLcom/mapbox/mapboxsdk/maps/NativeMapView$ViewCallback;Lcom/mapbox/mapboxsdk/maps/NativeMapView$StateCallback;Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    return-void
.end method

.method private initialiseMap()V
    .locals 20

    move-object/from16 v9, p0

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 150
    new-instance v2, Lcom/mapbox/mapboxsdk/maps/MapView$FocalPointInvalidator;

    const/4 v11, 0x0

    invoke-direct {v2, v9, v11}, Lcom/mapbox/mapboxsdk/maps/MapView$FocalPointInvalidator;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$1;)V

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->createFocalPointChangeListener()Lcom/mapbox/mapboxsdk/maps/FocalPointChangeListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/MapView$FocalPointInvalidator;->addListener(Lcom/mapbox/mapboxsdk/maps/FocalPointChangeListener;)V

    .line 154
    new-instance v15, Lcom/mapbox/mapboxsdk/maps/MapView$GesturesManagerInteractionListener;

    invoke-direct {v15, v9, v11}, Lcom/mapbox/mapboxsdk/maps/MapView$GesturesManagerInteractionListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$1;)V

    .line 157
    new-instance v14, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-direct {v14}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;-><init>()V

    .line 160
    new-instance v13, Lcom/mapbox/mapboxsdk/maps/Projection;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v13, v0, v9}, Lcom/mapbox/mapboxsdk/maps/Projection;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/MapView;)V

    .line 161
    new-instance v12, Lcom/mapbox/mapboxsdk/maps/UiSettings;

    iget-object v3, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    iget-object v4, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->attrView:Landroid/widget/ImageView;

    iget-object v5, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->logoView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getPixelRatio()F

    move-result v6

    move-object v0, v12

    move-object v1, v13

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/UiSettings;-><init>(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/maps/FocalPointChangeListener;Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;Landroid/widget/ImageView;Landroid/view/View;F)V

    .line 162
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 163
    new-instance v3, Lcom/mapbox/mapboxsdk/maps/IconManager;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v3, v0}, Lcom/mapbox/mapboxsdk/maps/IconManager;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;)V

    .line 164
    new-instance v4, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v4, v0, v2}, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;)V

    .line 165
    new-instance v5, Lcom/mapbox/mapboxsdk/maps/MarkerContainer;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v5, v0, v2, v3}, Lcom/mapbox/mapboxsdk/maps/MarkerContainer;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;Lcom/mapbox/mapboxsdk/maps/IconManager;)V

    .line 166
    new-instance v6, Lcom/mapbox/mapboxsdk/maps/PolygonContainer;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v6, v0, v2}, Lcom/mapbox/mapboxsdk/maps/PolygonContainer;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;)V

    .line 167
    new-instance v7, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v7, v0, v2}, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;)V

    .line 168
    new-instance v8, Lcom/mapbox/mapboxsdk/maps/ShapeAnnotationContainer;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v8, v0, v2}, Lcom/mapbox/mapboxsdk/maps/ShapeAnnotationContainer;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;)V

    .line 169
    new-instance v1, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/maps/AnnotationManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Landroidx/collection/LongSparseArray;Lcom/mapbox/mapboxsdk/maps/IconManager;Lcom/mapbox/mapboxsdk/maps/Annotations;Lcom/mapbox/mapboxsdk/maps/Markers;Lcom/mapbox/mapboxsdk/maps/Polygons;Lcom/mapbox/mapboxsdk/maps/Polylines;Lcom/mapbox/mapboxsdk/maps/ShapeAnnotations;)V

    .line 171
    new-instance v7, Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-direct {v7, v9, v0, v14}, Lcom/mapbox/mapboxsdk/maps/Transform;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V

    .line 174
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    move-object v6, v12

    move-object v12, v0

    move-object v3, v13

    move-object v13, v1

    move-object v5, v14

    move-object v14, v7

    move-object v1, v15

    move-object v15, v6

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-direct/range {v12 .. v19}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;-><init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/UiSettings;Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnGesturesManagerInteractionListener;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;Ljava/util/List;)V

    iput-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 177
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, v11}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->injectAnnotationManager(Lcom/mapbox/mapboxsdk/maps/AnnotationManager;)V

    .line 180
    new-instance v12, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    move-object v0, v12

    move-object v1, v10

    move-object v2, v7

    move-object v4, v6

    move-object v13, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/maps/UiSettings;Lcom/mapbox/mapboxsdk/maps/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V

    iput-object v12, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    .line 182
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    invoke-direct {v0, v7, v11, v1}, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;-><init>(Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/UiSettings;Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V

    iput-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    .line 185
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-direct {v9, v13}, Lcom/mapbox/mapboxsdk/maps/MapView;->createCompassAnimationListener(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->injectCompassAnimationListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;)V

    .line 186
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    invoke-direct {v9, v13}, Lcom/mapbox/mapboxsdk/maps/MapView;->createCompassClickListener(Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcom/mapbox/mapboxsdk/location/LocationComponent;

    invoke-direct {v1, v0, v7, v8}, Lcom/mapbox/mapboxsdk/location/LocationComponent;-><init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->injectLocationComponent(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    .line 192
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->attrView:Landroid/widget/ImageView;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;

    iget-object v2, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const/4 v3, 0x0

    invoke-direct {v1, v10, v2, v3}, Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/MapView$1;)V

    iput-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->attributionClickListener:Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 195
    invoke-virtual {v9, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->setClickable(Z)V

    .line 196
    invoke-virtual {v9, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->setLongClickable(Z)V

    .line 197
    invoke-virtual {v9, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->setFocusable(Z)V

    .line 198
    invoke-virtual {v9, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->setFocusableInTouchMode(Z)V

    .line 199
    invoke-virtual {v9, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->requestDisallowInterceptTouchEvent(Z)V

    .line 202
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->isConnected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setReachability(Z)V

    .line 205
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v0, v10, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->initialise(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v1, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 211
    :goto_0
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->initialised()V

    return-void
.end method

.method private isGestureDetectorInitialized()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSurfaceCreated()V
    .locals 1

    .line 320
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapView$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView$6;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setMapStrictModeEnabled(Z)V
    .locals 0

    .line 1348
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/MapStrictMode;->setStrictModeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    return-void
.end method

.method public addOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V

    return-void
.end method

.method public addOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V

    return-void
.end method

.method public addOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V

    return-void
.end method

.method public addOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V

    return-void
.end method

.method public addOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public addOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V

    return-void
.end method

.method public addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V

    return-void
.end method

.method public addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V

    return-void
.end method

.method public addOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V

    return-void
.end method

.method public addOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V

    return-void
.end method

.method public addOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V

    return-void
.end method

.method public addOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V

    return-void
.end method

.method public addOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V

    return-void
.end method

.method public addOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->addOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V

    return-void
.end method

.method public getMapAsync(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->addOnMapReadyCallback(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V

    return-void

    .line 1061
    :cond_0
    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;->onMapReady(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method

.method getMapboxMap()Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object v0
.end method

.method public getViewContent()Landroid/graphics/Bitmap;
    .locals 1

    .line 544
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/BitmapUtils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->getForegroundLoadColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMapOptions:Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$layout;->mapbox_mapview_internal:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    sget v1, Lcom/mapbox/mapboxsdk/R$id;->compassView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    .line 135
    sget v1, Lcom/mapbox/mapboxsdk/R$id;->attributionView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->attrView:Landroid/widget/ImageView;

    .line 136
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->attrView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mapbox/mapboxsdk/R$drawable;->mapbox_info_bg_selector:I

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    sget v1, Lcom/mapbox/mapboxsdk/R$id;->logoView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->logoView:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mapbox/mapboxsdk/R$drawable;->mapbox_logo_icon:I

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    sget v0, Lcom/mapbox/mapboxsdk/R$string;->mapbox_mapActionDescription:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->setWillNotDraw(Z)V

    .line 143
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->initialiseDrawingSurface(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    return-void

    .line 124
    :cond_1
    new-instance p1, Lcom/mapbox/mapboxsdk/exceptions/MapboxConfigurationException;

    invoke-direct {p1}, Lcom/mapbox/mapboxsdk/exceptions/MapboxConfigurationException;-><init>()V

    throw p1
.end method

.method public isDestroyed()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->destroyed:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_1

    .line 275
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getTelemetry()Lcom/mapbox/mapboxsdk/maps/TelemetryDefinition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/maps/TelemetryDefinition;->onAppUserTurnstileEvent()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "mapbox_savedState"

    .line 279
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->destroyed:Z

    .line 417
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->clear()V

    .line 418
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapCallback:Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$MapCallback;->onDestroy()V

    .line 419
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->initialRenderCallback:Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;->access$900(Lcom/mapbox/mapboxsdk/maps/MapView$InitialRenderCallback;)V

    .line 421
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->compassView:Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onDestroy()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->destroy()V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onDestroy()V

    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 499
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->isGestureDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLowMemory()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->destroyed:Z

    if-nez v1, :cond_0

    .line 511
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "mapbox_savedState"

    .line 341
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 521
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz p3, :cond_0

    .line 523
    invoke-interface {p3, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->resizeView(II)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->isStarted:Z

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->activate()V

    .line 353
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->getInstance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->activate()V

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->isStarted:Z

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onStart()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onStart()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->attributionClickListener:Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView$AttributionClickListener;->onStop()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimators()V

    .line 397
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->onStop()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->onStop()V

    .line 404
    :cond_2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->isStarted:Z

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/net/ConnectivityReceiver;->deactivate()V

    .line 406
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->getInstance(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->deactivate()V

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->isStarted:Z

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->isGestureDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapGestureDetector:Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapKeyListener:Lcom/mapbox/mapboxsdk/maps/MapKeyListener;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapKeyListener;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnCameraDidChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraDidChangeListener;)V

    return-void
.end method

.method public removeOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnCameraIsChangingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraIsChangingListener;)V

    return-void
.end method

.method public removeOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnCameraWillChangeListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCameraWillChangeListener;)V

    return-void
.end method

.method public removeOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnCanRemoveUnusedStyleImageListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V

    return-void
.end method

.method public removeOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidBecomeIdleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidBecomeIdleListener;)V

    return-void
.end method

.method public removeOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidFailLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public removeOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidFinishLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingMapListener;)V

    return-void
.end method

.method public removeOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V

    return-void
.end method

.method public removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidFinishRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingFrameListener;)V

    return-void
.end method

.method public removeOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnDidFinishRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishRenderingMapListener;)V

    return-void
.end method

.method public removeOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnSourceChangedListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnSourceChangedListener;)V

    return-void
.end method

.method public removeOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnStyleImageMissingListener;)V

    return-void
.end method

.method public removeOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnWillStartLoadingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartLoadingMapListener;)V

    return-void
.end method

.method public removeOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnWillStartRenderingFrameListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingFrameListener;)V

    return-void
.end method

.method public removeOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapChangeReceiver:Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapChangeReceiver;->removeOnWillStartRenderingMapListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnWillStartRenderingMapListener;)V

    return-void
.end method

.method setMapboxMap(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-void
.end method

.method public setMaximumFps(I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView;->mapRenderer:Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/renderer/MapRenderer;->setMaximumFps(I)V

    return-void

    .line 451
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling MapView#setMaximumFps before mapRenderer is created."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method