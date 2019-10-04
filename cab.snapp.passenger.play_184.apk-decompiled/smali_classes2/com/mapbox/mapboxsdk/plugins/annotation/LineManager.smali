.class public Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
        "Lcom/mapbox/mapboxsdk/style/layers/LineLayer;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnLineDragListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnLineClickListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnLineLongClickListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTY_LINE_CAP:Ljava/lang/String; = "line-cap"

.field private static final PROPERTY_LINE_DASHARRAY:Ljava/lang/String; = "line-dasharray"

.field private static final PROPERTY_LINE_MITER_LIMIT:Ljava/lang/String; = "line-miter-limit"

.field private static final PROPERTY_LINE_ROUND_LIMIT:Ljava/lang/String; = "line-round-limit"

.field private static final PROPERTY_LINE_TRANSLATE:Ljava/lang/String; = "line-translate"

.field private static final PROPERTY_LINE_TRANSLATE_ANCHOR:Ljava/lang/String; = "line-translate-anchor"


# direct methods
.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

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
            "Lcom/mapbox/mapboxsdk/style/layers/LineLayer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController<",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/OnLineDragListener;",
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

    .line 78
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

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 8

    .line 73
    new-instance v4, Lcom/mapbox/mapboxsdk/plugins/annotation/LineElementProvider;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineElementProvider;-><init>()V

    new-instance v7, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    invoke-direct {v7, p1, p2}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)V

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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/mapbox/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 177
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

    .line 178
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->create(Ljava/util/List;)Ljava/util/List;

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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->create(Lcom/mapbox/geojson/FeatureCollection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getAnnotationIdKey()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getLineCap()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineCap()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLineDasharray()[Ljava/lang/Float;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineDasharray()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getLineMiterLimit()Ljava/lang/Float;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineMiterLimit()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getLineRoundLimit()Ljava/lang/Float;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineRoundLimit()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getLineTranslate()[Ljava/lang/Float;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getLineTranslateAnchor()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->getLineTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method initializeDataDrivenPropertyMap()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-join"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-gap-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-blur"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "line-pattern"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setDataDrivenPropertyIsUsed(Ljava/lang/String;)V
    .locals 11

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "line-pattern"

    const-string v2, "line-offset"

    const-string v3, "line-opacity"

    const-string v4, "line-width"

    const-string v5, "line-color"

    const-string v6, "line-gap-width"

    const-string v7, "line-join"

    const-string v8, "line-blur"

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 118
    :pswitch_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->linePattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto/16 :goto_2

    .line 115
    :pswitch_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v8}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 112
    :pswitch_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 109
    :pswitch_3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v6}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineGapWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 106
    :pswitch_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 103
    :pswitch_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 100
    :pswitch_6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 97
    :pswitch_7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineJoin(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd68560 -> :sswitch_7
        -0x6dd2d89d -> :sswitch_6
        -0x691bf68a -> :sswitch_5
        -0x4cead3b6 -> :sswitch_4
        -0x4bd3d553 -> :sswitch_3
        -0x41a5a8ce -> :sswitch_2
        -0x3c76fb74 -> :sswitch_1
        -0x2544b549 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 1

    .line 361
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    .line 362
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-void
.end method

.method public setLineCap(Ljava/lang/String;)V
    .locals 3

    .line 219
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-cap"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setLineDasharray([Ljava/lang/Float;)V
    .locals 3

    .line 349
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineDasharray([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-dasharray"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setLineMiterLimit(Ljava/lang/Float;)V
    .locals 3

    .line 245
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineMiterLimit(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-miter-limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setLineRoundLimit(Ljava/lang/Float;)V
    .locals 3

    .line 271
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineRoundLimit(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-round-limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setLineTranslate([Ljava/lang/Float;)V
    .locals 3

    .line 297
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-translate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setLineTranslateAnchor(Ljava/lang/String;)V
    .locals 3

    .line 323
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->lineTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "line-translate-anchor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/LineLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method
