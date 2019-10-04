.class public Lcom/mapbox/mapboxsdk/style/layers/FillLayer;
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
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetFillAntialias()Ljava/lang/Object;
.end method

.method private native nativeGetFillColor()Ljava/lang/Object;
.end method

.method private native nativeGetFillColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetFillOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillOutlineColor()Ljava/lang/Object;
.end method

.method private native nativeGetFillOutlineColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillPattern()Ljava/lang/Object;
.end method

.method private native nativeGetFillPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetFillTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetFillTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetFillTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeSetFillColorTransition(JJ)V
.end method

.method private native nativeSetFillOpacityTransition(JJ)V
.end method

.method private native nativeSetFillOutlineColorTransition(JJ)V
.end method

.method private native nativeSetFillPatternTransition(JJ)V
.end method

.method private native nativeSetFillTranslateTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getFillAntialias()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillAntialias()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-antialias"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 200
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillColorAsInt()I
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 212
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFillColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fill-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFillColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 228
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 167
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 178
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillOutlineColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 250
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillOutlineColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-outline-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillOutlineColorAsInt()I
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 262
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->getFillOutlineColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fill-outline-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFillOutlineColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 278
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillOutlineColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillPattern()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 345
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillPattern()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-pattern"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 356
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillPatternTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFillTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 299
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 300
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillTranslate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-translate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 333
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillTranslateAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fill-translate-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 311
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFillTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 124
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetFilter()Lcom/google/gson/JsonElement;

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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setFillColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 238
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFillColorTransition(JJ)V

    return-void
.end method

.method public setFillOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 188
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFillOpacityTransition(JJ)V

    return-void
.end method

.method public setFillOutlineColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 288
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFillOutlineColorTransition(JJ)V

    return-void
.end method

.method public setFillPatternTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 365
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 366
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFillPatternTransition(JJ)V

    return-void
.end method

.method public setFillTranslateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 320
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 321
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFillTranslateTransition(JJ)V

    return-void
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 101
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/FillLayer;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/FillLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/FillLayer;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/FillLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
