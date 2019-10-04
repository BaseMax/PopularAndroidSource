.class public final Lcom/mapbox/mapboxsdk/annotations/Polygon;
.super Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fillColor:I

.field private holes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private strokeColor:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;-><init>()V

    const/high16 v0, -0x1000000

    .line 22
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->fillColor:I

    .line 24
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->strokeColor:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->holes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final addHole(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->holes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->update()V

    return-void
.end method

.method public final getFillColor()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->fillColor:I

    return v0
.end method

.method public final getHoles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->holes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->strokeColor:I

    return v0
.end method

.method public final setFillColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->fillColor:I

    .line 68
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->update()V

    return-void
.end method

.method public final setHoles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->holes:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->update()V

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polygon;->strokeColor:I

    .line 78
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->update()V

    return-void
.end method

.method final update()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polygon;->getMapboxMap()Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->updatePolygon(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    :cond_0
    return-void
.end method
