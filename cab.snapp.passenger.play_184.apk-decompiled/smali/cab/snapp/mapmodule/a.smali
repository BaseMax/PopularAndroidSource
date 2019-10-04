.class public final Lcab/snapp/mapmodule/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD_MARKER:Ljava/lang/String; = "ADD_MARKER"

.field public static final ADD_MARKER_ON_CENTER:Ljava/lang/String; = "ADD_MARKER_ON_CENTER"

.field public static final DESTINATION_MARKER_TAG:Ljava/lang/String; = "DESTINATION_MARKER_TAG"

.field public static final ORIGIN_MARKER_TAG:Ljava/lang/String; = "ORIGIN_MARKER_TAG"

.field public static final SECOND_DESTINATION_MARKER_TAG:Ljava/lang/String; = "SECOND_DESTINATION_MARKER_TAG"

.field private static c:Lcab/snapp/mapmodule/a;


# instance fields
.field a:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/mapmodule/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field private d:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/mapmodule/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcab/snapp/mapmodule/a;->e:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcab/snapp/mapmodule/a;->b:I

    .line 67
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/mapmodule/a;->d:Lio/reactivex/j/b;

    .line 68
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    return-void
.end method

.method private a(Lcab/snapp/mapmodule/a/a/m;)V
    .locals 4

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcab/snapp/mapmodule/a$2;

    invoke-direct {v1, p0, p1}, Lcab/snapp/mapmodule/a$2;-><init>(Lcab/snapp/mapmodule/a;Lcab/snapp/mapmodule/a/a/m;)V

    iget p1, p0, Lcab/snapp/mapmodule/a;->b:I

    mul-int/lit16 p1, p1, 0x12c

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    iget p1, p0, Lcab/snapp/mapmodule/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcab/snapp/mapmodule/a;->b:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcab/snapp/mapmodule/a;
    .locals 2

    const-class v0, Lcab/snapp/mapmodule/a;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcab/snapp/mapmodule/a;->c:Lcab/snapp/mapmodule/a;

    if-nez v1, :cond_0

    new-instance v1, Lcab/snapp/mapmodule/a;

    invoke-direct {v1}, Lcab/snapp/mapmodule/a;-><init>()V

    sput-object v1, Lcab/snapp/mapmodule/a;->c:Lcab/snapp/mapmodule/a;

    .line 76
    :cond_0
    sget-object v1, Lcab/snapp/mapmodule/a;->c:Lcab/snapp/mapmodule/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final addDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V
    .locals 2

    .line 286
    new-instance v0, Lcab/snapp/mapmodule/a/a/c;

    const/16 v1, 0x405

    invoke-direct {v0, v1, p1}, Lcab/snapp/mapmodule/a/a/c;-><init>(ILcab/snapp/mapmodule/a/a/a;)V

    .line 287
    iget-object p1, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMarker(Lcab/snapp/mapmodule/a/a/a;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMarkerOnCenter(Lcab/snapp/mapmodule/a/a/b;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final addOriginMarker(Lcab/snapp/mapmodule/a/a/a;)V
    .locals 2

    .line 280
    new-instance v0, Lcab/snapp/mapmodule/a/a/c;

    const/16 v1, 0x404

    invoke-direct {v0, v1, p1}, Lcab/snapp/mapmodule/a/a/c;-><init>(ILcab/snapp/mapmodule/a/a/a;)V

    .line 281
    iget-object p1, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final addSecondDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V
    .locals 2

    .line 292
    new-instance v0, Lcab/snapp/mapmodule/a/a/c;

    const/16 v1, 0x406

    invoke-direct {v0, v1, p1}, Lcab/snapp/mapmodule/a/a/c;-><init>(ILcab/snapp/mapmodule/a/a/a;)V

    .line 293
    iget-object p1, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final addVehicleMarker(Lcab/snapp/mapmodule/a/a/d;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeCenter(Lcab/snapp/mapmodule/a/a/e;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final changeLogoPadding(Lcab/snapp/mapmodule/a/a/g;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeMarkerAlpha(Lcab/snapp/mapmodule/a/a/h;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeMarkerRotation(Lcab/snapp/mapmodule/a/a/i;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeZoomAnimated(Lcab/snapp/mapmodule/a/a/j;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final clearMap(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final fadeInMarker(Lcab/snapp/mapmodule/a/a/k;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final fadeOutMarker(Lcab/snapp/mapmodule/a/a/l;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCommandsPublishSubject()Lio/reactivex/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j/b<",
            "Lcab/snapp/mapmodule/a/a/m;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getEventsObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/mapmodule/a/b/c;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->d:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getEventsPublishSubject()Lio/reactivex/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j/b<",
            "Lcab/snapp/mapmodule/a/b/c;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->d:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getGoogleMapStyle()I
    .locals 1

    .line 132
    iget v0, p0, Lcab/snapp/mapmodule/a;->g:I

    return v0
.end method

.method public final getMapStyleUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getMapType()I
    .locals 2

    .line 117
    iget v0, p0, Lcab/snapp/mapmodule/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call initMapBox or initGoogleMap before using MapModule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hideTraffic(I)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3fb

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final hideUserLocationIndicator(I)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3fd

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final hideVehicleMarkers(I)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3f6

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final initGoogleMap(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcab/snapp/mapmodule/a;->g:I

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcab/snapp/mapmodule/a;->e:I

    return-void
.end method

.method public final initMapBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Lcab/snapp/mapmodule/a$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/mapmodule/a$1;-><init>(Lcab/snapp/mapmodule/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/LibraryLoader;->setLibraryLoader(Lcom/mapbox/mapboxsdk/LibraryLoader;)V

    .line 88
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/Mapbox;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mapbox/mapboxsdk/Mapbox;

    .line 89
    sget-object p1, Lcom/mapbox/android/telemetry/TelemetryEnabler$State;->DISABLED:Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->updateTelemetryState(Lcom/mapbox/android/telemetry/TelemetryEnabler$State;)Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    .line 90
    iput-object p3, p0, Lcab/snapp/mapmodule/a;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 91
    iput p1, p0, Lcab/snapp/mapmodule/a;->e:I

    return-void
.end method

.method public final lockMap(I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3f3

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final moveAnimatedWithZoom(Lcab/snapp/mapmodule/a/a/o;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final removeAllVehicles(I)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x400

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMarker(Lcab/snapp/mapmodule/a/a/p;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final scrollMap(Lcab/snapp/mapmodule/a/a/q;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final setZoom(Lcab/snapp/mapmodule/a/a/r;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final showTraffic(I)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3fa

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final showUserLocationIndicator(I)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3fc

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final showVehicleMarkers(I)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3f7

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final unlockMap(I)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    new-instance v1, Lcab/snapp/mapmodule/a/a/m;

    const/16 v2, 0x3f4

    invoke-direct {v1, v2, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final zoomToBoundingBox(Lcab/snapp/mapmodule/a/a/s;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public final zoomToBoundingBoxWithDifferentPaddings(Lcab/snapp/mapmodule/a/a/t;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
