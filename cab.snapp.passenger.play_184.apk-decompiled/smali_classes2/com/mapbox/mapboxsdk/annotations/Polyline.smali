.class public final Lcom/mapbox/mapboxsdk/annotations/Polyline;
.super Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private color:I

.field private width:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;-><init>()V

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 19
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    return v0
.end method

.method public final setColor(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    .line 51
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->update()V

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    .line 61
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->update()V

    return-void
.end method

.method final update()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getMapboxMap()Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->updatePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    :cond_0
    return-void
.end method
