.class final Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;",
        "D::",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*TT;*TD;**>;"
        }
    .end annotation
.end field

.field private draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private final touchAreaMaxX:I

.field private final touchAreaMaxY:I

.field private final touchAreaShiftX:I

.field private final touchAreaShiftY:I


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 8

    .line 31
    new-instance v3, Lcom/mapbox/android/b/a;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lcom/mapbox/android/b/a;-><init>(Landroid/content/Context;Z)V

    .line 32
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/android/b/a;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/android/b/a;IIII)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 41
    iput p4, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftX:I

    .line 42
    iput p5, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftY:I

    .line 43
    iput p6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaMaxX:I

    .line 44
    iput p7, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaMaxY:I

    .line 46
    new-instance p2, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;-><init>(Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;)V

    invoke-virtual {p3, p2}, Lcom/mapbox/android/b/a;->setMoveGestureListener(Lcom/mapbox/android/b/d$a;)V

    .line 48
    new-instance p2, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;

    invoke-direct {p2, p0, p3}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;-><init>(Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Lcom/mapbox/android/b/a;)V

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    return-object p0
.end method


# virtual methods
.method final injectAnnotationManager(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*TT;*TD;**>;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    return-void
.end method

.method final onMove(Lcom/mapbox/android/b/d;)Z
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mapbox/android/b/d;->getPointersCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->stopDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    return v1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {p1, v2}, Lcom/mapbox/android/b/d;->getMoveObject(I)Lcom/mapbox/android/b/c;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/mapbox/android/b/c;->getCurrentX()F

    move-result v0

    iget v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 88
    invoke-virtual {p1}, Lcom/mapbox/android/b/c;->getCurrentY()F

    move-result v3

    iget v4, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 90
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 92
    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaMaxX:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    iget v0, v4, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaMaxY:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 98
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v3

    iget v4, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->touchAreaShiftY:I

    int-to-float v5, v5

    .line 97
    invoke-virtual {v0, v3, p1, v4, v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getOffsetGeometry(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/android/b/c;FF)Lcom/mapbox/geojson/Geometry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 102
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->setGeometry(Lcom/mapbox/geojson/Geometry;)V

    .line 105
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->internalUpdateSource()V

    .line 106
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;

    .line 108
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-interface {v0, v2}, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;->onAnnotationDrag(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    goto :goto_0

    :cond_3
    return v1

    .line 93
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->stopDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    return v1

    :cond_5
    return v2
.end method

.method final onMoveBegin(Lcom/mapbox/android/b/d;)Z
    .locals 2

    .line 67
    invoke-virtual {p1}, Lcom/mapbox/android/b/d;->getPointersCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {p1}, Lcom/mapbox/android/b/d;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->queryMapForFeatures(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->startDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final onMoveEnd()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->stopDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    return-void
.end method

.method final onSourceUpdated()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->stopDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    return-void
.end method

.method final startDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;

    .line 127
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;->onAnnotationDragStarted(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    goto :goto_0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final stopDragging(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getDragListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;

    .line 140
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;->onAnnotationDragFinished(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->draggedAnnotation:Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    return-void
.end method
