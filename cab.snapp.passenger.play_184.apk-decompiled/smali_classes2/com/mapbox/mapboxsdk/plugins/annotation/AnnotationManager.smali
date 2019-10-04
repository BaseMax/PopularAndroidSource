.class public abstract Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Lcom/mapbox/mapboxsdk/style/layers/Layer;",
        "T:",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;",
        "S:",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Options<",
        "TT;>;D::",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener<",
        "TT;>;U::",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationClickListener<",
        "TT;>;V::",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationLongClickListener<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnnotationManager"


# instance fields
.field protected final annotations:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private belowLayerId:Ljava/lang/String;

.field private final clickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field final constantPropertyUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private coreElementProvider:Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private currentId:J

.field final dataDrivenPropertyUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dragListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final draggableAnnotationController:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController<",
            "TT;TD;>;"
        }
    .end annotation
.end field

.field private geoJsonSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

.field protected layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

.field private final longClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mapClickResolver:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "T",
            "L;",
            "TT;TS;TD;TU;TV;>.MapClickResolver;"
        }
    .end annotation
.end field

.field protected final mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private style:Lcom/mapbox/mapboxsdk/maps/Style;


# direct methods
.method protected constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapView;",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap;",
            "Lcom/mapbox/mapboxsdk/maps/Style;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider<",
            "T",
            "L;",
            ">;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController<",
            "TT;TD;>;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->constantPropertyUsageMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dragListeners:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 75
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 76
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->belowLayerId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->coreElementProvider:Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;

    .line 79
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/Style;->isFullyLoaded()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 83
    new-instance p3, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;-><init>(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapClickResolver:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;

    invoke-virtual {p2, p3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    .line 84
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapClickResolver:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;

    invoke-virtual {p2, p3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V

    .line 85
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->draggableAnnotationController:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    .line 86
    invoke-virtual {p5, p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->injectAnnotationManager(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)V

    .line 88
    invoke-direct {p0, p7}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->initializeSourcesAndLayers(Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    .line 90
    new-instance p3, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;

    invoke-direct {p3, p0, p2, p7}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$1;-><init>(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    invoke-virtual {p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$OnDidFinishLoadingStyleListener;)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The style has to be non-null and fully loaded."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$102(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->initializeSourcesAndLayers(Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->queryMapForFeatures(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    return-object p0
.end method

.method private initializeSourcesAndLayers(Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->coreElementProvider:Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;->getSource(Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->geoJsonSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    .line 339
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->coreElementProvider:Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;->getLayer()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 341
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->geoJsonSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 342
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->belowLayerId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayerBelow(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->initializeDataDrivenPropertyMap()V

    .line 349
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->constantPropertyUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    .line 350
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void
.end method

.method private queryMapForFeatures(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ")TT;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->toScreenLocation(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->queryMapForFeatures(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addClickListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDragListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLongClickListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public create(Lcom/mapbox/mapboxsdk/plugins/annotation/Options;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    invoke-virtual {p1, v0, v1, p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 124
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    .line 125
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-object p1
.end method

.method public create(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;

    .line 139
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    invoke-virtual {v1, v2, v3, p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 142
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->currentId:J

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-object v0
.end method

.method public delete(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 156
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    .line 167
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 178
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void
.end method

.method enableDataDrivenProperty(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->setDataDrivenPropertyIsUsed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method abstract getAnnotationIdKey()Ljava/lang/String;
.end method

.method public getAnnotations()Landroidx/collection/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    return-object v0
.end method

.method getClickListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    return-object v0
.end method

.method getDragListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dragListeners:Ljava/util/List;

    return-object v0
.end method

.method getLongClickListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    return-object v0
.end method

.method abstract initializeDataDrivenPropertyMap()V
.end method

.method internalUpdateSource()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    .line 229
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getGeometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getFeature()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;Lcom/google/gson/JsonObject;)Lcom/mapbox/geojson/Feature;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->setUsedDataDrivenProperties()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->geoJsonSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/FeatureCollection;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapClickResolver:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapClickResolver:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager$MapClickResolver;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dragListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method queryMapForFeatures(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->coreElementProvider:Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;

    invoke-interface {v2}, Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;->getLayerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/geojson/Feature;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->getAnnotationIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 403
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeClickListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->clickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDragListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationDragListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->dragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLongClickListener(Lcom/mapbox/mapboxsdk/plugins/annotation/OnAnnotationLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->longClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract setDataDrivenPropertyIsUsed(Ljava/lang/String;)V
.end method

.method abstract setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
.end method

.method public update(Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t update annotation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", the annotation isn\'t active annotation."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnnotationManager"

    .line 192
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    .line 206
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->annotations:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->updateSource()V

    return-void
.end method

.method public updateSource()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->draggableAnnotationController:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->onSourceUpdated()V

    .line 216
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->internalUpdateSource()V

    return-void
.end method
