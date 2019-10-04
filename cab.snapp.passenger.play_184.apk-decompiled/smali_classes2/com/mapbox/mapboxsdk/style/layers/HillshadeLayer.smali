.class public Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;
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
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetHillshadeAccentColor()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeAccentColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHillshadeExaggeration()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeExaggerationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHillshadeHighlightColor()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeHighlightColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetHillshadeIlluminationAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeIlluminationDirection()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeShadowColor()Ljava/lang/Object;
.end method

.method private native nativeGetHillshadeShadowColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeSetHillshadeAccentColorTransition(JJ)V
.end method

.method private native nativeSetHillshadeExaggerationTransition(JJ)V
.end method

.method private native nativeSetHillshadeHighlightColorTransition(JJ)V
.end method

.method private native nativeSetHillshadeShadowColorTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getHillshadeAccentColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 263
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeAccentColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-accent-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeAccentColorAsInt()I
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 275
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->getHillshadeAccentColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hillshade-accent-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHillshadeAccentColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 291
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeAccentColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHillshadeExaggeration()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 130
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeExaggeration()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-exaggeration"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeExaggerationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 141
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeExaggerationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHillshadeHighlightColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 213
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeHighlightColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-highlight-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeHighlightColorAsInt()I
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 225
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->getHillshadeHighlightColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hillshade-highlight-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHillshadeHighlightColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 241
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeHighlightColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHillshadeIlluminationAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 118
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeIlluminationAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-illumination-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeIlluminationDirection()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 106
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeIlluminationDirection()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-illumination-direction"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeShadowColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 163
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeShadowColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hillshade-shadow-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHillshadeShadowColorAsInt()I
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 175
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->getHillshadeShadowColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hillshade-shadow-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHillshadeShadowColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 191
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetHillshadeShadowColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setHillshadeAccentColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 301
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeSetHillshadeAccentColorTransition(JJ)V

    return-void
.end method

.method public setHillshadeExaggerationTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 151
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeSetHillshadeExaggerationTransition(JJ)V

    return-void
.end method

.method public setHillshadeHighlightColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 250
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 251
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeSetHillshadeHighlightColorTransition(JJ)V

    return-void
.end method

.method public setHillshadeShadowColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 200
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 201
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeSetHillshadeShadowColorTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/HillshadeLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
