.class public Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;
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
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetRasterBrightnessMax()Ljava/lang/Object;
.end method

.method private native nativeGetRasterBrightnessMaxTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetRasterBrightnessMin()Ljava/lang/Object;
.end method

.method private native nativeGetRasterBrightnessMinTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetRasterContrast()Ljava/lang/Object;
.end method

.method private native nativeGetRasterContrastTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetRasterFadeDuration()Ljava/lang/Object;
.end method

.method private native nativeGetRasterHueRotate()Ljava/lang/Object;
.end method

.method private native nativeGetRasterHueRotateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetRasterOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetRasterOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetRasterResampling()Ljava/lang/Object;
.end method

.method private native nativeGetRasterSaturation()Ljava/lang/Object;
.end method

.method private native nativeGetRasterSaturationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeSetRasterBrightnessMaxTransition(JJ)V
.end method

.method private native nativeSetRasterBrightnessMinTransition(JJ)V
.end method

.method private native nativeSetRasterContrastTransition(JJ)V
.end method

.method private native nativeSetRasterHueRotateTransition(JJ)V
.end method

.method private native nativeSetRasterOpacityTransition(JJ)V
.end method

.method private native nativeSetRasterSaturationTransition(JJ)V
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getRasterBrightnessMax()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 205
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterBrightnessMax()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-brightness-max"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterBrightnessMaxTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 216
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterBrightnessMaxTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRasterBrightnessMin()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 172
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterBrightnessMin()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-brightness-min"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterBrightnessMinTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 183
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterBrightnessMinTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRasterContrast()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 271
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterContrast()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-contrast"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterContrastTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 282
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterContrastTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRasterFadeDuration()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 316
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterFadeDuration()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-fade-duration"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterHueRotate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 139
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterHueRotate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-hue-rotate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterHueRotateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 150
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterHueRotateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRasterOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 106
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 117
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRasterResampling()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 304
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterResampling()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-resampling"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterSaturation()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 238
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterSaturation()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "raster-saturation"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterSaturationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 249
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetRasterSaturationTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setRasterBrightnessMaxTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 226
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterBrightnessMaxTransition(JJ)V

    return-void
.end method

.method public setRasterBrightnessMinTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 192
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 193
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterBrightnessMinTransition(JJ)V

    return-void
.end method

.method public setRasterContrastTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 292
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterContrastTransition(JJ)V

    return-void
.end method

.method public setRasterHueRotateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 160
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterHueRotateTransition(JJ)V

    return-void
.end method

.method public setRasterOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 127
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterOpacityTransition(JJ)V

    return-void
.end method

.method public setRasterSaturationTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 259
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetRasterSaturationTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->checkThread()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
