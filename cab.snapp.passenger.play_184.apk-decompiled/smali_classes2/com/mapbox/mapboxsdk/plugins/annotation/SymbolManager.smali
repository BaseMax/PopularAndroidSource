.class public Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
        "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnSymbolDragListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnSymbolClickListener;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/OnSymbolLongClickListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTY_ICON_ALLOW_OVERLAP:Ljava/lang/String; = "icon-allow-overlap"

.field private static final PROPERTY_ICON_IGNORE_PLACEMENT:Ljava/lang/String; = "icon-ignore-placement"

.field private static final PROPERTY_ICON_KEEP_UPRIGHT:Ljava/lang/String; = "icon-keep-upright"

.field private static final PROPERTY_ICON_OPTIONAL:Ljava/lang/String; = "icon-optional"

.field private static final PROPERTY_ICON_PADDING:Ljava/lang/String; = "icon-padding"

.field private static final PROPERTY_ICON_PITCH_ALIGNMENT:Ljava/lang/String; = "icon-pitch-alignment"

.field private static final PROPERTY_ICON_ROTATION_ALIGNMENT:Ljava/lang/String; = "icon-rotation-alignment"

.field private static final PROPERTY_ICON_TEXT_FIT:Ljava/lang/String; = "icon-text-fit"

.field private static final PROPERTY_ICON_TEXT_FIT_PADDING:Ljava/lang/String; = "icon-text-fit-padding"

.field private static final PROPERTY_ICON_TRANSLATE:Ljava/lang/String; = "icon-translate"

.field private static final PROPERTY_ICON_TRANSLATE_ANCHOR:Ljava/lang/String; = "icon-translate-anchor"

.field private static final PROPERTY_SYMBOL_AVOID_EDGES:Ljava/lang/String; = "symbol-avoid-edges"

.field private static final PROPERTY_SYMBOL_PLACEMENT:Ljava/lang/String; = "symbol-placement"

.field private static final PROPERTY_SYMBOL_SPACING:Ljava/lang/String; = "symbol-spacing"

.field private static final PROPERTY_TEXT_ALLOW_OVERLAP:Ljava/lang/String; = "text-allow-overlap"

.field private static final PROPERTY_TEXT_IGNORE_PLACEMENT:Ljava/lang/String; = "text-ignore-placement"

.field private static final PROPERTY_TEXT_KEEP_UPRIGHT:Ljava/lang/String; = "text-keep-upright"

.field private static final PROPERTY_TEXT_LINE_HEIGHT:Ljava/lang/String; = "text-line-height"

.field private static final PROPERTY_TEXT_MAX_ANGLE:Ljava/lang/String; = "text-max-angle"

.field private static final PROPERTY_TEXT_OPTIONAL:Ljava/lang/String; = "text-optional"

.field private static final PROPERTY_TEXT_PADDING:Ljava/lang/String; = "text-padding"

.field private static final PROPERTY_TEXT_PITCH_ALIGNMENT:Ljava/lang/String; = "text-pitch-alignment"

.field private static final PROPERTY_TEXT_ROTATION_ALIGNMENT:Ljava/lang/String; = "text-rotation-alignment"

.field private static final PROPERTY_TEXT_TRANSLATE:Ljava/lang/String; = "text-translate"

.field private static final PROPERTY_TEXT_TRANSLATE_ANCHOR:Ljava/lang/String; = "text-translate-anchor"

.field private static final PROPERTY_TEXT_VARIABLE_ANCHOR:Ljava/lang/String; = "text-variable-anchor"


# direct methods
.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

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
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController<",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/OnSymbolDragListener;",
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

    .line 98
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

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V
    .locals 8

    .line 93
    new-instance v4, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolElementProvider;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolElementProvider;-><init>()V

    new-instance v7, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    invoke-direct {v7, p1, p2}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)V

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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/mapbox/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p1

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 311
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

    .line 312
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->create(Ljava/util/List;)Ljava/util/List;

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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->create(Lcom/mapbox/geojson/FeatureCollection;)Ljava/util/List;

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

    .line 1026
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getIconAllowOverlap()Ljava/lang/Boolean;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconAllowOverlap()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIconIgnorePlacement()Ljava/lang/Boolean;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconIgnorePlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIconKeepUpright()Ljava/lang/Boolean;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconKeepUpright()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIconOptional()Ljava/lang/Boolean;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconOptional()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIconPadding()Ljava/lang/Float;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getIconPitchAlignment()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconPitchAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconRotationAlignment()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconRotationAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconTextFit()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconTextFit()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconTextFitPadding()[Ljava/lang/Float;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconTextFitPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getIconTranslate()[Ljava/lang/Float;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getIconTranslateAnchor()Ljava/lang/String;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolAvoidEdges()Ljava/lang/Boolean;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getSymbolAvoidEdges()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSymbolPlacement()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getSymbolPlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolSpacing()Ljava/lang/Float;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getSymbolSpacing()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextAllowOverlap()Ljava/lang/Boolean;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextAllowOverlap()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTextIgnorePlacement()Ljava/lang/Boolean;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextIgnorePlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTextKeepUpright()Ljava/lang/Boolean;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextKeepUpright()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTextLineHeight()Ljava/lang/Float;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextLineHeight()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextMaxAngle()Ljava/lang/Float;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextMaxAngle()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextOptional()Ljava/lang/Boolean;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextOptional()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTextPadding()Ljava/lang/Float;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextPitchAlignment()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextPitchAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextRotationAlignment()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextRotationAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextTranslate()[Ljava/lang/Float;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getTextTranslateAnchor()Ljava/lang/String;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextVariableAnchor()[Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextVariableAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method initializeDataDrivenPropertyMap()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "symbol-sort-key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-rotate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-field"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-font"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-max-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-letter-spacing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-justify"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-radial-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-rotate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-transform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-halo-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-halo-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "icon-halo-blur"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-halo-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-halo-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "text-halo-blur"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setDataDrivenPropertyIsUsed(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "text-size"

    const-string v4, "text-font"

    const-string v5, "text-transform"

    const-string v6, "symbol-sort-key"

    const-string v7, "icon-size"

    const-string v8, "icon-image"

    const-string v9, "icon-color"

    const-string v10, "icon-halo-width"

    const-string v11, "icon-halo-color"

    const-string v12, "text-radial-offset"

    const-string v13, "icon-rotate"

    const-string v14, "icon-offset"

    const-string v15, "text-rotate"

    const/16 v16, 0x0

    const/4 v0, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "text-offset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "icon-anchor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "text-anchor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "icon-opacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "text-field"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "text-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "text-halo-blur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "text-letter-spacing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "text-max-width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "text-justify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "text-opacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "text-halo-width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "icon-halo-blur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "text-halo-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_11
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_12
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_14
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_15
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_16
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_17
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_19
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 214
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-halo-blur"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textHaloBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto/16 :goto_2

    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 211
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-halo-width"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textHaloWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 208
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-halo-color"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textHaloColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 205
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-color"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 202
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-opacity"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 199
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "icon-halo-blur"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconHaloBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 196
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v10}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconHaloWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 193
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v11}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconHaloColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 190
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v9}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 187
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "icon-opacity"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 184
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-offset"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 181
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textTransform(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 178
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v15}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textRotate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 175
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-anchor"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 172
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v12}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textRadialOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_f
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 169
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-justify"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textJustify(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_10
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 166
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-letter-spacing"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textLetterSpacing(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 163
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-max-width"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textMaxWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_12
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 160
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textSize(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_13
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 157
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textFont(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_14
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 154
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "text-field"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textField(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 151
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v3, "icon-anchor"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_16
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 148
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v14}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_17
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 145
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v13}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_18
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 142
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v8}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_19
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 139
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    :pswitch_1a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 136
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-static {v6}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->get(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->symbolSortKey(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ff5ba05 -> :sswitch_1a
        -0x79aeb799 -> :sswitch_19
        -0x740b3ed1 -> :sswitch_18
        -0x665dc89f -> :sswitch_17
        -0x65dc3f9a -> :sswitch_16
        -0x64c54137 -> :sswitch_15
        -0x5f687ef1 -> :sswitch_14
        -0x5f1504f9 -> :sswitch_13
        -0x55a1572b -> :sswitch_12
        -0x4fa71dbb -> :sswitch_11
        -0x4b414134 -> :sswitch_10
        -0x409ee311 -> :sswitch_f
        -0x40990f5f -> :sswitch_e
        -0x34ee00ce -> :sswitch_d
        -0x34d60cfc -> :sswitch_c
        -0x33d7026b -> :sswitch_b
        -0x1cca5c95 -> :sswitch_a
        -0x1bbbea10 -> :sswitch_9
        0x12e99f7d -> :sswitch_8
        0x19882e3c -> :sswitch_7
        0x1f52aab8 -> :sswitch_6
        0x2c9832c3 -> :sswitch_5
        0x2cbfa45a -> :sswitch_4
        0x549a8eb7 -> :sswitch_3
        0x62f22b55 -> :sswitch_2
        0x6edca689 -> :sswitch_1
        0x7a66cd33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 1015
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    .line 1016
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layerFilter:Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-void
.end method

.method public setIconAllowOverlap(Ljava/lang/Boolean;)V
    .locals 3

    .line 431
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 432
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-allow-overlap"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconIgnorePlacement(Ljava/lang/Boolean;)V
    .locals 3

    .line 457
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-ignore-placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconKeepUpright(Ljava/lang/Boolean;)V
    .locals 3

    .line 613
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconKeepUpright(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 614
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-keep-upright"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconOptional(Ljava/lang/Boolean;)V
    .locals 3

    .line 483
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOptional(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-optional"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconPadding(Ljava/lang/Float;)V
    .locals 3

    .line 587
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconPadding(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 588
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-padding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconPitchAlignment(Ljava/lang/String;)V
    .locals 3

    .line 639
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconPitchAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 640
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-pitch-alignment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconRotationAlignment(Ljava/lang/String;)V
    .locals 3

    .line 509
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotationAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 510
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-rotation-alignment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconTextFit(Ljava/lang/String;)V
    .locals 3

    .line 535
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconTextFit(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-text-fit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconTextFitPadding([Ljava/lang/Float;)V
    .locals 3

    .line 561
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconTextFitPadding([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-text-fit-padding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconTranslate([Ljava/lang/Float;)V
    .locals 3

    .line 925
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 926
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-translate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setIconTranslateAnchor(Ljava/lang/String;)V
    .locals 3

    .line 951
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 952
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "icon-translate-anchor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setSymbolAvoidEdges(Ljava/lang/Boolean;)V
    .locals 3

    .line 405
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->symbolAvoidEdges(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "symbol-avoid-edges"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setSymbolPlacement(Ljava/lang/String;)V
    .locals 3

    .line 353
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->symbolPlacement(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "symbol-placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setSymbolSpacing(Ljava/lang/Float;)V
    .locals 3

    .line 379
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->symbolSpacing(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 380
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "symbol-spacing"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextAllowOverlap(Ljava/lang/Boolean;)V
    .locals 3

    .line 847
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 848
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-allow-overlap"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextIgnorePlacement(Ljava/lang/Boolean;)V
    .locals 3

    .line 873
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 874
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-ignore-placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextKeepUpright(Ljava/lang/Boolean;)V
    .locals 3

    .line 821
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textKeepUpright(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 822
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-keep-upright"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextLineHeight(Ljava/lang/Float;)V
    .locals 3

    .line 717
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textLineHeight(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 718
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-line-height"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextMaxAngle(Ljava/lang/Float;)V
    .locals 3

    .line 769
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textMaxAngle(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 770
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-max-angle"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextOptional(Ljava/lang/Boolean;)V
    .locals 3

    .line 899
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textOptional(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 900
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-optional"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextPadding(Ljava/lang/Float;)V
    .locals 3

    .line 795
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textPadding(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 796
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-padding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextPitchAlignment(Ljava/lang/String;)V
    .locals 3

    .line 665
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textPitchAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 666
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-pitch-alignment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextRotationAlignment(Ljava/lang/String;)V
    .locals 3

    .line 691
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textRotationAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 692
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-rotation-alignment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextTranslate([Ljava/lang/Float;)V
    .locals 3

    .line 977
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 978
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-translate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextTranslateAnchor(Ljava/lang/String;)V
    .locals 3

    .line 1003
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 1004
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-translate-anchor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method public setTextVariableAnchor([Ljava/lang/String;)V
    .locals 3

    .line 743
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->textVariableAnchor([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    .line 744
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/Map;

    const-string v1, "text-variable-anchor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolManager;->layer:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method
