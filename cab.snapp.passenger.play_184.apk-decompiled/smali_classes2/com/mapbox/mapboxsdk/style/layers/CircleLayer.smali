.class public Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;
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
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetCircleBlur()Ljava/lang/Object;
.end method

.method private native nativeGetCircleBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleColor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetCircleOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCirclePitchAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetCirclePitchScale()Ljava/lang/Object;
.end method

.method private native nativeGetCircleRadius()Ljava/lang/Object;
.end method

.method private native nativeGetCircleRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleStrokeColor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleStrokeOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleStrokeWidth()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetCircleTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeSetCircleBlurTransition(JJ)V
.end method

.method private native nativeSetCircleColorTransition(JJ)V
.end method

.method private native nativeSetCircleOpacityTransition(JJ)V
.end method

.method private native nativeSetCircleRadiusTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeColorTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeOpacityTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeWidthTransition(JJ)V
.end method

.method private native nativeSetCircleTranslateTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getCircleBlur()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 238
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleBlur()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-blur"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 249
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 188
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleColorAsInt()I
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 200
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->getCircleColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

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

    const-string v1, "circle-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCircleColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 216
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 271
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 282
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCirclePitchAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 361
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCirclePitchAlignment()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-pitch-alignment"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCirclePitchScale()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 349
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCirclePitchScale()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-pitch-scale"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleRadius()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleRadius()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-radius"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 166
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleRadiusTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 406
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-stroke-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeColorAsInt()I
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 418
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->getCircleStrokeColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "circle-stroke-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCircleStrokeColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 434
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 456
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-stroke-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 467
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeWidth()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 373
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeWidth()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-stroke-width"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 384
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleStrokeWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCircleTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 303
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 304
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleTranslate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-translate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 337
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleTranslateAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "circle-translate-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 315
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetCircleTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 124
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetFilter()Lcom/google/gson/JsonElement;

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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setCircleBlurTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 259
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleBlurTransition(JJ)V

    return-void
.end method

.method public setCircleColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 226
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleColorTransition(JJ)V

    return-void
.end method

.method public setCircleOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 292
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleOpacityTransition(JJ)V

    return-void
.end method

.method public setCircleRadiusTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 176
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleRadiusTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 443
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 444
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleStrokeColorTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 477
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleStrokeOpacityTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeWidthTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 393
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 394
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleStrokeWidthTransition(JJ)V

    return-void
.end method

.method public setCircleTranslateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 325
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetCircleTranslateTransition(JJ)V

    return-void
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 101
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
