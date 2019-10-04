.class Lcom/mapbox/mapboxsdk/maps/PolylineContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Polylines;


# instance fields
.field private final annotations:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Landroidx/collection/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/NativeMap;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 24
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public addBy(Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/annotations/Polyline;
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPolyline()Lcom/mapbox/mapboxsdk/annotations/Polyline;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->addPolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setMapboxMap(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setId(J)V

    .line 34
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public addBy(Ljava/util/List;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;",
            ">;",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;

    .line 47
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/PolylineOptions;->getPolyline()Lcom/mapbox/mapboxsdk/annotations/Polyline;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {p1, v1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->addPolylines(Ljava/util/List;)[J

    move-result-object p1

    const/4 v0, 0x0

    .line 54
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    .line 56
    invoke-virtual {v2, p2}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setMapboxMap(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    .line 57
    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->setId(J)V

    .line 58
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public obtainAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/Annotation;

    .line 77
    instance-of v3, v2, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    if-eqz v3, :cond_0

    .line 78
    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/Polyline;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public update(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->updatePolyline(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    .line 67
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/PolylineContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    return-void
.end method
