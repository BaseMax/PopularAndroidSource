.class public Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;
.super Lcom/mapbox/mapboxsdk/style/layers/Layer;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetHeatmapColor()Ljava/lang/Object;
.end method

.method private native nativeGetHeatmapIntensity()Ljava/lang/Object;
.end method

.method private native nativeGetHeatmapIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHeatmapOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetHeatmapOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHeatmapRadius()Ljava/lang/Object;
.end method

.method private native nativeGetHeatmapRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHeatmapWeight()Ljava/lang/Object;
.end method

.method private native nativeSetHeatmapIntensityTransition(JJ)V
.end method

.method private native nativeSetHeatmapOpacityTransition(JJ)V
.end method

.method private native nativeSetHeatmapRadiusTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 124
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetFilter()Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeatmapColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 233
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "heatmap-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHeatmapColorAsInt()I
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 245
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->getHeatmapColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "heatmap-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeatmapIntensity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 200
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapIntensity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "heatmap-intensity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHeatmapIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 211
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHeatmapOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 262
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "heatmap-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHeatmapOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 273
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHeatmapRadius()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapRadius()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "heatmap-radius"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHeatmapRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 166
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHeatmapWeight()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 188
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetHeatmapWeight()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "heatmap-weight"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 101
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setHeatmapIntensityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 221
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeSetHeatmapIntensityTransition(JJ)V

    return-void
.end method

.method public setHeatmapOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 283
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeSetHeatmapOpacityTransition(JJ)V

    return-void
.end method

.method public setHeatmapRadiusTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 176
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeSetHeatmapRadiusTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HeatmapLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
