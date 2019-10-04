.class public final Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/camera/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bearing:D

.field private target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

.field private tilt:D

.field private zoom:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 172
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 175
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 176
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 172
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 175
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 176
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    if-eqz p1, :cond_0

    .line 208
    sget v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_MapView_mapbox_cameraBearing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    .line 209
    sget v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_MapView_mapbox_cameraTargetLat:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    .line 210
    sget v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_MapView_mapbox_cameraTargetLng:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v4, v0

    .line 211
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 212
    sget v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_MapView_mapbox_cameraTilt:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 213
    sget v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_MapView_mapbox_cameraZoom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 172
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 175
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 176
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    if-eqz p1, :cond_0

    .line 193
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    .line 194
    iget-object v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 195
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 196
    iget-wide v0, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraPositionUpdate;)V
    .locals 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 172
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 175
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 176
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraPositionUpdate;->getBearing()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    .line 226
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraPositionUpdate;->getTarget()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 227
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraPositionUpdate;->getTilt()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 228
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraPositionUpdate;->getZoom()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$ZoomUpdate;)V
    .locals 3

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 172
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    const/4 v2, 0x0

    .line 173
    iput-object v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 175
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    .line 176
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$ZoomUpdate;->getZoom()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    :cond_0
    return-void
.end method


# virtual methods
.method public final bearing(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;
    .locals 5

    :goto_0
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    sub-double/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    add-double/2addr p1, v0

    goto :goto_1

    .line 261
    :cond_1
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    return-object p0
.end method

.method public final build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 9

    .line 315
    new-instance v8, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    iget-wide v6, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing:D

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;DDD)V

    return-object v8
.end method

.method public final target(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-object p0
.end method

.method public final tilt(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    move-wide v0, p1

    .line 289
    invoke-static/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/utils/MathUtils;->clamp(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt:D

    return-object p0
.end method

.method public final zoom(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;
    .locals 0

    .line 305
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom:D

    return-object p0
.end method
