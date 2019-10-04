.class public final Lcom/mapbox/mapboxsdk/location/LocationComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;,
        Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;,
        Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;,
        Lcom/mapbox/mapboxsdk/location/LocationComponent$CameraTransitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-LocationComponent"


# instance fields
.field cameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

.field private compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

.field private compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

.field private currentLocationEngineListener:Lcom/mapbox/android/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

.field private fastestInterval:J

.field private internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

.field private isComponentInitialized:Z

.field private isComponentStarted:Z

.field private isEnabled:Z

.field private isLayerReady:Z

.field private isListeningToCompass:Z

.field private lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

.field private lastLocation:Landroid/location/Location;

.field private lastLocationEngineListener:Lcom/mapbox/android/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTime:J

.field private locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

.field private locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

.field private locationEngine:Lcom/mapbox/android/a/b/c;

.field private locationEngineRequest:Lcom/mapbox/android/a/b/h;

.field private locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

.field private final mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

.field private onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

.field private onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

.field private final onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/OnLocationClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/OnLocationLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private onLocationStaleListener:Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;

.field private final onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;",
            ">;"
        }
    .end annotation
.end field

.field private onMapClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

.field private onMapLongClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

.field private final onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field renderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

.field private staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

.field private style:Lcom/mapbox/mapboxsdk/maps/Style;

.field private final transform:Lcom/mapbox/mapboxsdk/maps/Transform;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    .line 110
    new-instance v0, Lcom/mapbox/android/a/b/h$a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;-><init>(J)V

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;->setFastestInterval(J)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/mapbox/android/a/b/h$a;->setPriority(I)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/mapbox/android/a/b/h$a;->build()Lcom/mapbox/android/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    .line 116
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 118
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1401
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    .line 1409
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 1417
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 1431
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapLongClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

    .line 1445
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListener:Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;

    .line 1457
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    .line 1465
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

    .line 1522
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->cameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    .line 1543
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->renderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    .line 1555
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 199
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap;",
            "Lcom/mapbox/mapboxsdk/maps/Transform;",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    .line 110
    new-instance v0, Lcom/mapbox/android/a/b/h$a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;-><init>(J)V

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;->setFastestInterval(J)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/mapbox/android/a/b/h$a;->setPriority(I)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/mapbox/android/a/b/h$a;->build()Lcom/mapbox/android/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    .line 116
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 118
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1401
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    .line 1409
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 1417
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 1431
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapLongClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

    .line 1445
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListener:Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;

    .line 1457
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    .line 1465
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

    .line 1522
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->cameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    .line 1543
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->renderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    .line 1555
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    .line 190
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 191
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 192
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Ljava/util/List;Lcom/mapbox/android/a/b/d;Lcom/mapbox/android/a/b/d;Lcom/mapbox/mapboxsdk/location/LocationLayerController;Lcom/mapbox/mapboxsdk/location/LocationCameraController;Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;Lcom/mapbox/mapboxsdk/location/StaleStateManager;Lcom/mapbox/mapboxsdk/location/CompassEngine;Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap;",
            "Lcom/mapbox/mapboxsdk/maps/Transform;",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;",
            ">;",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;",
            "Lcom/mapbox/mapboxsdk/location/LocationLayerController;",
            "Lcom/mapbox/mapboxsdk/location/LocationCameraController;",
            "Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;",
            "Lcom/mapbox/mapboxsdk/location/StaleStateManager;",
            "Lcom/mapbox/mapboxsdk/location/CompassEngine;",
            "Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;",
            ")V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    .line 110
    new-instance v0, Lcom/mapbox/android/a/b/h$a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;-><init>(J)V

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/android/a/b/h$a;->setFastestInterval(J)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/mapbox/android/a/b/h$a;->setPriority(I)Lcom/mapbox/android/a/b/h$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/mapbox/android/a/b/h$a;->build()Lcom/mapbox/android/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    .line 116
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 118
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$LastLocationEngineCallback;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1401
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$1;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    .line 1409
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 1417
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 1431
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapLongClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

    .line 1445
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$5;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListener:Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;

    .line 1457
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$6;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    .line 1465
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$7;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

    .line 1522
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$8;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->cameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    .line 1543
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$9;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->renderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    .line 1555
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent$10;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    .line 214
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 215
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 216
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->developerAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnDeveloperAnimationListener;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 218
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 219
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    .line 220
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    .line 221
    iput-object p8, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    .line 222
    iput-object p9, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    .line 223
    iput-object p10, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    .line 224
    iput-object p11, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    return-void
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mapbox/mapboxsdk/location/LocationComponent;Landroid/location/Location;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mapbox/mapboxsdk/location/LocationComponent;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateAnimatorListenerHolders()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/location/LocationComponent;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateLayerOffsets(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Lcom/mapbox/mapboxsdk/location/LocationLayerController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mapbox/mapboxsdk/location/LocationComponent;)Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mapbox/mapboxsdk/location/LocationComponent;F)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassHeading(F)V

    return-void
.end method

.method private checkActivationState()V
    .locals 1

    .line 1573
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 1574
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentNotInitializedException;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentNotInitializedException;-><init>()V

    throw v0
.end method

.method private disableLocationComponent()V
    .locals 1

    const/4 v0, 0x0

    .line 1291
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    .line 1292
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStop()V

    return-void
.end method

.method private enableLocationComponent()V
    .locals 1

    const/4 v0, 0x1

    .line 1286
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    .line 1287
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStart()V

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    .line 1200
    iget-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1203
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    .line 1205
    invoke-virtual/range {p2 .. p2}, Lcom/mapbox/mapboxsdk/maps/Style;->isFullyLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p2

    .line 1209
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 1210
    iput-object v7, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 1212
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    .line 1213
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onMapLongClickListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V

    .line 1215
    new-instance v12, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    invoke-direct {v12}, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;-><init>()V

    .line 1216
    new-instance v13, Lcom/mapbox/mapboxsdk/location/LayerFeatureProvider;

    invoke-direct {v13}, Lcom/mapbox/mapboxsdk/location/LayerFeatureProvider;-><init>()V

    .line 1217
    new-instance v14, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    invoke-direct {v14, v8}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;-><init>(Landroid/content/Context;)V

    .line 1218
    new-instance v2, Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-object v10, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->renderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    move-object v9, v2

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;Lcom/mapbox/mapboxsdk/location/LayerFeatureProvider;Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;)V

    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    .line 1220
    new-instance v9, Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v5, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->cameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    iget-object v10, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move-object v11, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;)V

    iput-object v9, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    .line 1223
    new-instance v1, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 1224
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v2

    .line 1225
    invoke-static {}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;->getInstance()Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;

    move-result-object v3

    .line 1226
    invoke-static {}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;->getInstance()Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;-><init>(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;)V

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    .line 1228
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    .line 1229
    invoke-virtual/range {p3 .. p3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier()F

    move-result v2

    .line 1228
    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->setTrackingAnimationDurationMultiplier(F)V

    const-string v1, "window"

    .line 1231
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const-string v2, "sensor"

    .line 1232
    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1234
    new-instance v3, Lcom/mapbox/mapboxsdk/location/LocationComponentCompassEngine;

    invoke-direct {v3, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentCompassEngine;-><init>(Landroid/view/WindowManager;Landroid/hardware/SensorManager;)V

    iput-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    .line 1236
    :cond_1
    new-instance v1, Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    iget-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListener:Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;

    invoke-direct {v1, v2, v11}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;-><init>(Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    .line 1238
    invoke-direct {v0, v11}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateMapWithOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    const/16 v1, 0x12

    .line 1240
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setRenderMode(I)V

    const/16 v1, 0x8

    .line 1241
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setCameraMode(I)V

    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStart()V

    return-void

    .line 1206
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Style is invalid, provide the most recently loaded one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initializeLocationEngine(Landroid/content/Context;)V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    invoke-interface {v0, v1}, Lcom/mapbox/android/a/b/c;->removeLocationUpdates(Lcom/mapbox/android/a/b/d;)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->internalLocationEngineProvider:Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent$InternalLocationEngineProvider;->getBestLocationEngine(Landroid/content/Context;Z)Lcom/mapbox/android/a/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    return-void
.end method

.method private onLocationLayerStart()V
    .locals 5

    .line 1150
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1154
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1155
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    .line 1156
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V

    .line 1157
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    .line 1158
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;->onStart()V

    .line 1163
    :cond_1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    if-eqz v0, :cond_3

    .line 1164
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    if-eqz v0, :cond_2

    .line 1166
    :try_start_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 1167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 1166
    invoke-interface {v0, v2, v3, v4}, Lcom/mapbox/android/a/b/c;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Lcom/mapbox/android/a/b/d;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mbgl-LocationComponent"

    const-string v3, "Unable to request location updates"

    .line 1169
    invoke-static {v2, v3, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1172
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->getCameraMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setCameraMode(I)V

    .line 1173
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLastLocation()V

    .line 1174
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 1175
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLastCompassHeading()V

    :cond_3
    :goto_1
    return-void
.end method

.method private onLocationLayerStop()V
    .locals 2

    .line 1180
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    .line 1185
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->hide()V

    .line 1186
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;->onStop()V

    .line 1187
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    if-eqz v1, :cond_1

    .line 1188
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAllAnimations()V

    .line 1191
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    if-eqz v0, :cond_2

    .line 1192
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    invoke-interface {v0, v1}, Lcom/mapbox/android/a/b/c;->removeLocationUpdates(Lcom/mapbox/android/a/b/d;)V

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnCameraMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveListener;)V

    .line 1195
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraIdleListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private removeCompassListener(Lcom/mapbox/mapboxsdk/location/CompassEngine;)V
    .locals 1

    .line 1279
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isListeningToCompass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1280
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isListeningToCompass:Z

    .line 1281
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/location/CompassEngine;->removeCompassListener(Lcom/mapbox/mapboxsdk/location/CompassListener;)V

    :cond_0
    return-void
.end method

.method private setLastCompassHeading()V
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/CompassEngine;->getLastHeading()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassHeading(F)V

    return-void
.end method

.method private setLastLocation()V
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocationEngineListener:Lcom/mapbox/android/a/b/d;

    invoke-interface {v0, v1}, Lcom/mapbox/android/a/b/c;->getLastLocation(Lcom/mapbox/android/a/b/d;)V

    return-void

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method private showLocationLayerIfHidden()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden()Z

    move-result v0

    .line 1338
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->show()V

    :cond_0
    return-void
.end method

.method private updateAccuracyRadius(Landroid/location/Location;Z)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-static {v1, p1}, Lcom/mapbox/mapboxsdk/location/Utils;->calculateZoomLevelRadius(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Landroid/location/Location;)F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->feedNewAccuracyRadius(FZ)V

    return-void
.end method

.method private updateAnimatorListenerHolders()V
    .locals 4

    .line 1392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1393
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->getAnimationListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1394
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->getAnimationListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1395
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateAnimatorListenerHolders(Ljava/util/Set;)V

    .line 1396
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    .line 1397
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->getCameraMode()I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1396
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetAllCameraAnimations(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 1398
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetAllLayerAnimations()V

    return-void
.end method

.method private updateCompassHeading(F)V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->feedNewCompassBearing(FLcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    return-void
.end method

.method private updateCompassListenerState(Z)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 1257
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->removeCompassListener(Lcom/mapbox/mapboxsdk/location/CompassEngine;)V

    return-void

    .line 1261
    :cond_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 1265
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isConsumingCompass()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isConsumingCompass()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1273
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->removeCompassListener(Lcom/mapbox/mapboxsdk/location/CompassEngine;)V

    goto :goto_1

    .line 1267
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isListeningToCompass:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 1268
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isListeningToCompass:Z

    .line 1269
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassListener:Lcom/mapbox/mapboxsdk/location/CompassListener;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/location/CompassEngine;->addCompassListener(Lcom/mapbox/mapboxsdk/location/CompassListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateLayerOffsets(Z)V
    .locals 7

    .line 1366
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    .line 1367
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_1

    .line 1376
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float v1, v3

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->updateForegroundBearing(F)V

    .line 1378
    :cond_1
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_2

    .line 1379
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    invoke-virtual {p1, v3, v4}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->updateForegroundOffset(D)V

    .line 1381
    :cond_2
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-wide v5, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_3

    .line 1382
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 1384
    :cond_3
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-void

    .line 1368
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastCameraPosition:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 1369
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float v1, v3

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->updateForegroundBearing(F)V

    .line 1370
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-wide v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->updateForegroundOffset(D)V

    .line 1371
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    return-void
.end method

.method private updateLocation(Landroid/location/Location;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1312
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_1

    .line 1313
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-void

    .line 1316
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1317
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastUpdateTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->fastestInterval:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    return-void

    .line 1320
    :cond_2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastUpdateTime:J

    .line 1324
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->showLocationLayerIfHidden()V

    if-nez p2, :cond_3

    .line 1327
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;->updateLatestLocationTime()V

    .line 1329
    :cond_3
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p2

    .line 1330
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 1331
    :goto_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v1, p1, p2, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->feedNewLocation(Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 1332
    invoke-direct {p0, p1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 1333
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method private updateMapWithOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 5

    .line 1296
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    sget v0, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    .line 241
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    .line 240
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    sget v0, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;I)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    invoke-static {p1, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p4

    .line 361
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    sget v5, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;I)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-static {p1, p5}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    invoke-direct {p0, p1, p2, p5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 449
    invoke-virtual {p0, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngineRequest(Lcom/mapbox/android/a/b/h;)V

    .line 450
    invoke-virtual {p0, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    .line 451
    invoke-virtual {p0, p5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 428
    invoke-virtual {p0, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    .line 429
    invoke-virtual {p0, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initializeLocationEngine(Landroid/content/Context;)V

    .line 345
    invoke-virtual {p0, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 258
    sget p3, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;I)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 260
    sget v0, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;I)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;ZLcom/mapbox/android/a/b/h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-virtual {p0, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngineRequest(Lcom/mapbox/android/a/b/h;)V

    if-eqz p3, :cond_0

    .line 281
    sget p3, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;I)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 283
    sget p4, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;I)V

    return-void
.end method

.method public final activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;ZLcom/mapbox/android/a/b/h;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    invoke-virtual {p0, p4}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngineRequest(Lcom/mapbox/android/a/b/h;)V

    if-eqz p3, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2, p5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 308
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/android/a/b/c;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final activateLocationComponent(Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;)V
    .locals 3

    .line 461
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationComponentOptions()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    if-nez v0, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->styleRes()I

    move-result v0

    if-nez v0, :cond_0

    .line 465
    sget v0, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->style()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initialize(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 476
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 479
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngineRequest()Lcom/mapbox/android/a/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngineRequest(Lcom/mapbox/android/a/b/h;)V

    .line 485
    :cond_2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->locationEngine()Lcom/mapbox/android/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    return-void

    .line 489
    :cond_3
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->useDefaultLocationEngine()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->initializeLocationEngine(Landroid/content/Context;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 492
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    return-void
.end method

.method public final addOnCameraTrackingChangedListener(Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnLocationClickListener(Lcom/mapbox/mapboxsdk/location/OnLocationClickListener;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnLocationLongClickListener(Lcom/mapbox/mapboxsdk/location/OnLocationLongClickListener;)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnLocationStaleListener(Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnRenderModeChangedListener(Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyStyle(Landroid/content/Context;I)V
    .locals 0

    .line 699
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 700
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method public final applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3

    .line 709
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 710
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 711
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 713
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initializeOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 714
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;->setEnabled(Z)V

    .line 715
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->staleStateManager:Lcom/mapbox/mapboxsdk/location/StaleStateManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/StaleStateManager;->setDelayTime(J)V

    .line 716
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->setTrackingAnimationDurationMultiplier(F)V

    .line 717
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->setCompassAnimationEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->setAccuracyAnimationEnabled(Z)V

    .line 719
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateMapWithOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    :cond_0
    return-void
.end method

.method public final cancelTiltWhileTrackingAnimation()V
    .locals 1

    .line 843
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 844
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelTiltAnimation()V

    return-void
.end method

.method public final cancelZoomWhileTrackingAnimation()V
    .locals 1

    .line 781
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 782
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelZoomAnimation()V

    return-void
.end method

.method public final forceLocationUpdate(Landroid/location/Location;)V
    .locals 1

    .line 854
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    const/4 v0, 0x0

    .line 855
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method public final getCameraMode()I
    .locals 1

    .line 649
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 650
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->getCameraMode()I

    move-result v0

    return v0
.end method

.method public final getCompassEngine()Lcom/mapbox/mapboxsdk/location/CompassEngine;
    .locals 1

    .line 987
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 988
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    return-object v0
.end method

.method public final getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 998
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 999
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getLocationComponentOptions()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 1

    .line 689
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 690
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object v0
.end method

.method public final getLocationEngine()Lcom/mapbox/android/a/b/c;
    .locals 1

    .line 962
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 963
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    return-object v0
.end method

.method public final getLocationEngineRequest()Lcom/mapbox/android/a/b/h;
    .locals 1

    .line 951
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 952
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    return-object v0
.end method

.method public final getRenderMode()I
    .locals 1

    .line 679
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 680
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public final isLocationComponentActivated()Z
    .locals 1

    .line 1584
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    return v0
.end method

.method public final isLocationComponentEnabled()Z
    .locals 1

    .line 518
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 519
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onFinishLoadingStyle()V
    .locals 3

    .line 1140
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 1142
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->initializeComponents(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 1143
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initializeOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 1144
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStart()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1111
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    .line 1112
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStart()V

    return-void
.end method

.method public final onStartLoadingMap()V
    .locals 0

    .line 1133
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStop()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1119
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLayerStop()V

    const/4 v0, 0x0

    .line 1120
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isComponentStarted:Z

    return-void
.end method

.method public final removeOnCameraTrackingChangedListener(Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnLocationClickListener(Lcom/mapbox/mapboxsdk/location/OnLocationClickListener;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnLocationLongClickListener(Lcom/mapbox/mapboxsdk/location/OnLocationLongClickListener;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnLocationStaleListener(Lcom/mapbox/mapboxsdk/location/OnLocationStaleListener;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeRenderModeChangedListener(Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCameraMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setCameraMode(ILcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public final setCameraMode(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V
    .locals 10

    move-object v0, p0

    .line 602
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 603
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationCameraController:Lcom/mapbox/mapboxsdk/location/LocationCameraController;

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->lastLocation:Landroid/location/Location;

    new-instance v9, Lcom/mapbox/mapboxsdk/location/LocationComponent$CameraTransitionListener;

    const/4 v2, 0x0

    move-object/from16 v4, p7

    invoke-direct {v9, p0, v4, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponent$CameraTransitionListener;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponent;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;Lcom/mapbox/mapboxsdk/location/LocationComponent$1;)V

    move v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    const/4 v1, 0x1

    .line 606
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public final setCameraMode(ILcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V
    .locals 8

    const-wide/16 v2, 0x2ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 567
    invoke-virtual/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setCameraMode(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public final setCompassEngine(Lcom/mapbox/mapboxsdk/location/CompassEngine;)V
    .locals 1

    .line 972
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 973
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 974
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 976
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->compassEngine:Lcom/mapbox/mapboxsdk/location/CompassEngine;

    const/4 p1, 0x1

    .line 977
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public final setLocationComponentEnabled(Z)V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    if-eqz p1, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->enableLocationComponent()V

    return-void

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->disableLocationComponent()V

    return-void
.end method

.method public final setLocationEngine(Lcom/mapbox/android/a/b/c;)V
    .locals 3

    .line 913
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 914
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    if-eqz v0, :cond_0

    .line 916
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    invoke-interface {v0, v1}, Lcom/mapbox/android/a/b/c;->removeLocationUpdates(Lcom/mapbox/android/a/b/d;)V

    const/4 v0, 0x0

    .line 917
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    :cond_0
    if-eqz p1, :cond_1

    .line 921
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    invoke-virtual {v0}, Lcom/mapbox/android/a/b/h;->getFastestInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->fastestInterval:J

    .line 922
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    .line 923
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isEnabled:Z

    if-eqz v0, :cond_2

    .line 924
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLastLocation()V

    .line 925
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->currentLocationEngineListener:Lcom/mapbox/android/a/b/d;

    .line 926
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 925
    invoke-interface {p1, v0, v1, v2}, Lcom/mapbox/android/a/b/c;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Lcom/mapbox/android/a/b/d;Landroid/os/Looper;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    .line 929
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->fastestInterval:J

    :cond_2
    return-void
.end method

.method public final setLocationEngineRequest(Lcom/mapbox/android/a/b/h;)V
    .locals 0

    .line 939
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 940
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngineRequest:Lcom/mapbox/android/a/b/h;

    .line 943
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationEngine:Lcom/mapbox/android/a/b/c;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationEngine(Lcom/mapbox/android/a/b/c;)V

    return-void
.end method

.method public final setMaxAnimationFps(I)V
    .locals 1

    .line 899
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 900
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->setMaxAnimationFps(I)V

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 1

    .line 665
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 666
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationLayerController:Lcom/mapbox/mapboxsdk/location/LocationLayerController;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setRenderMode(I)V

    const/4 p1, 0x1

    .line 667
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateLayerOffsets(Z)V

    .line 668
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public final tiltWhileTracking(D)V
    .locals 6

    .line 835
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    const-wide/16 v3, 0x4e2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 836
    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->tiltWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final tiltWhileTracking(DJ)V
    .locals 6

    .line 821
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 822
    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->tiltWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final tiltWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 7

    .line 798
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 799
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "LocationComponent#tiltWhileTracking method can only be used"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, " when a camera mode other than CameraMode#NONE is engaged."

    aput-object p3, p1, p2

    const-string p2, "%s%s"

    .line 802
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-LocationComponent"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->feedNewTilt(DLcom/mapbox/mapboxsdk/camera/CameraPosition;JLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final zoomWhileTracking(D)V
    .locals 6

    .line 773
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    const-wide/16 v3, 0x2ee

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 774
    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->zoomWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final zoomWhileTracking(DJ)V
    .locals 6

    .line 759
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 760
    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->zoomWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method public final zoomWhileTracking(DJLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 7

    .line 736
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->checkActivationState()V

    .line 737
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "LocationComponent#zoomWhileTracking method can only be used"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, " when a camera mode other than CameraMode#NONE is engaged."

    aput-object p3, p1, p2

    const-string p2, "%s%s"

    .line 740
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-LocationComponent"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->locationAnimatorCoordinator:Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponent;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->feedNewZoomLevel(DLcom/mapbox/mapboxsdk/camera/CameraPosition;JLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method
