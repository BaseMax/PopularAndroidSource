.class public Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
        "Lcom/mapbox/mapboxsdk/style/layers/FillLayer;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnFillDragListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnFillClickListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnFillLongClickListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTY_FILL_ANTIALIAS:Ljava/lang/String; = "fill-antialias"

.field private static final PROPERTY_FILL_TRANSLATE:Ljava/lang/String; = "fill-translate"

.field private static final PROPERTY_FILL_TRANSLATE_ANCHOR:Ljava/lang/String; = "fill-translate-anchor"


# direct methods
.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapView;",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap;",
            "Lcom/mapbox/mapboxsdk/maps/Style;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider<",
            "Lcom/mapbox/mapboxsdk/style/layers/FillLayer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController<",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/OnFillDragListener;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object v6, p5

    move-object v7, p6

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 8

    .line 70
    new-instance v4, Lcom/mapbox/mapboxsdk/plugins/annotation/FillElementProvider;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillElementProvider;-><init>()V

    new-instance v7, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    invoke-direct {v7, p1, p2}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/mapbox/geojson/FeatureCollection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/geojson/FeatureCollection;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/mapbox/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Feature;

    .line 151
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->create(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->create(Lcom/mapbox/geojson/FeatureCollection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getAnnotationIdKey()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public getFillAntialias()Ljava/lang/Boolean;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFillAntialias()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFillTranslate()[Ljava/lang/Float;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFillTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getFillTranslateAnchor()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFillTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v0

    return-object v0
.end method

.method initializeDataDrivenPropertyMap()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fill-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fill-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fill-outline-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fill-pattern"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setDataDrivenPropertyIsUsed(Ljava/lang/String;)V
    .locals 9

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "fill-outline-color"

    const-string v2, "fill-pattern"

    const-string v3, "fill-opacity"

    const-string v4, "fill-color"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v8, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    goto :goto_2

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillPattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    :goto_2
    return-void

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillOutlineColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x641a3567 -> :sswitch_3
        -0x4a83623f -> :sswitch_2
        -0x2e226eba -> :sswitch_1
        0x4799974e -> :sswitch_0
    .end sparse-switch
.end method

.method public setFillAntialias(Ljava/lang/Boolean;)V
    .locals 3

    .line 192
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillAntialias(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "fill-antialias"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setFillTranslate([Ljava/lang/Float;)V
    .locals 3

    .line 218
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "fill-translate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setFillTranslateAnchor(Ljava/lang/String;)V
    .locals 3

    .line 244
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->fillTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "fill-translate-anchor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    .line 257
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-void
.end method
