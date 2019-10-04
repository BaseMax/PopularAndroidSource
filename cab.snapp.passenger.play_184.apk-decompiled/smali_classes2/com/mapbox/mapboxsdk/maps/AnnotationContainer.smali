.class Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Annotations;


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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 22
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private removeNativeAnnotations([J)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->removeAnnotations([J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public obtainAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public obtainBy(J)Lcom/mapbox/mapboxsdk/annotations/Annotation;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/annotations/Annotation;

    return-object p1
.end method

.method public removeAll()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 72
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 74
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->removeNativeAnnotations([J)V

    .line 79
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method public removeBy(J)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->nativeMap:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->removeAnnotation(J)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void
.end method

.method public removeBy(Lcom/mapbox/mapboxsdk/annotations/Annotation;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Annotation;->getId()J

    move-result-wide v0

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->removeBy(J)V

    return-void
.end method

.method public removeBy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mapbox/mapboxsdk/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    new-array v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 59
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/annotations/Annotation;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/annotations/Annotation;->getId()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->removeNativeAnnotations([J)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 64
    aget-wide v3, v1, v2

    .line 65
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/AnnotationContainer;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
