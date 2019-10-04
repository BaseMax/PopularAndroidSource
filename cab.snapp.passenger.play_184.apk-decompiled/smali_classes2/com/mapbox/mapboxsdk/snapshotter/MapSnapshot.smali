.class public Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributions:[Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private nativePtr:J

.field private showLogo:Z


# direct methods
.method private constructor <init>(JLandroid/graphics/Bitmap;[Ljava/lang/String;Z)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->nativePtr:J

    .line 28
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->nativePtr:J

    .line 29
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    .line 31
    iput-boolean p5, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->showLogo:Z

    return-void
.end method

.method private native initialize()V
.end method


# virtual methods
.method protected native finalize()V
.end method

.method protected getAttributions()[Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method isShowLogo()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->showLogo:Z

    return v0
.end method

.method public native latLngForPixel(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
.end method

.method public native pixelForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
.end method
