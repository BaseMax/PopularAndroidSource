.class public Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;
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
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetFillExtrusionBase()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionBaseTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionColor()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionHeight()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionHeightTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionPattern()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetFillExtrusionTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillExtrusionVerticalGradient()Ljava/lang/Object;
.end method

.method private native nativeSetFillExtrusionBaseTransition(JJ)V
.end method

.method private native nativeSetFillExtrusionColorTransition(JJ)V
.end method

.method private native nativeSetFillExtrusionHeightTransition(JJ)V
.end method

.method private native nativeSetFillExtrusionOpacityTransition(JJ)V
.end method

.method private native nativeSetFillExtrusionPatternTransition(JJ)V
.end method

.method private native nativeSetFillExtrusionTranslateTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getFillExtrusionBase()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 349
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionBase()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-base"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionBaseTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 360
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionBaseTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 188
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionColorAsInt()I
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 200
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->getFillExtrusionColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fill-extrusion-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFillExtrusionColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 216
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionHeight()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 316
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionHeight()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-height"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionHeightTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 327
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionHeightTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 166
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionPattern()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 283
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionPattern()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-pattern"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 294
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 238
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-translate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 271
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslateAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-translate-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 249
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillExtrusionVerticalGradient()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 382
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionVerticalGradient()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-extrusion-vertical-gradient"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 124
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetFilter()Lcom/google/gson/JsonElement;

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

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setFillExtrusionBaseTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 370
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionBaseTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 226
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionColorTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionHeightTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 337
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionHeightTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 176
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionOpacityTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionPatternTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 304
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionPatternTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionTranslateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 259
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionTranslateTransition(JJ)V

    return-void
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 101
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillExtrusionLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
