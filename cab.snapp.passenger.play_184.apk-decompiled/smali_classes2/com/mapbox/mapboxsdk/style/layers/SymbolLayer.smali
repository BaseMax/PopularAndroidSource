.class public Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;
.super Lcom/mapbox/mapboxsdk/style/layers/Layer;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetIconAllowOverlap()Ljava/lang/Object;
.end method

.method private native nativeGetIconAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetIconColor()Ljava/lang/Object;
.end method

.method private native nativeGetIconColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIconHaloBlur()Ljava/lang/Object;
.end method

.method private native nativeGetIconHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIconHaloColor()Ljava/lang/Object;
.end method

.method private native nativeGetIconHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIconHaloWidth()Ljava/lang/Object;
.end method

.method private native nativeGetIconHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIconIgnorePlacement()Ljava/lang/Object;
.end method

.method private native nativeGetIconImage()Ljava/lang/Object;
.end method

.method private native nativeGetIconKeepUpright()Ljava/lang/Object;
.end method

.method private native nativeGetIconOffset()Ljava/lang/Object;
.end method

.method private native nativeGetIconOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetIconOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIconOptional()Ljava/lang/Object;
.end method

.method private native nativeGetIconPadding()Ljava/lang/Object;
.end method

.method private native nativeGetIconPitchAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetIconRotate()Ljava/lang/Object;
.end method

.method private native nativeGetIconRotationAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetIconSize()Ljava/lang/Object;
.end method

.method private native nativeGetIconTextFit()Ljava/lang/Object;
.end method

.method private native nativeGetIconTextFitPadding()Ljava/lang/Object;
.end method

.method private native nativeGetIconTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetIconTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetIconTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetSymbolAvoidEdges()Ljava/lang/Object;
.end method

.method private native nativeGetSymbolPlacement()Ljava/lang/Object;
.end method

.method private native nativeGetSymbolSortKey()Ljava/lang/Object;
.end method

.method private native nativeGetSymbolSpacing()Ljava/lang/Object;
.end method

.method private native nativeGetSymbolZOrder()Ljava/lang/Object;
.end method

.method private native nativeGetTextAllowOverlap()Ljava/lang/Object;
.end method

.method private native nativeGetTextAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetTextColor()Ljava/lang/Object;
.end method

.method private native nativeGetTextColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextField()Ljava/lang/Object;
.end method

.method private native nativeGetTextFont()Ljava/lang/Object;
.end method

.method private native nativeGetTextHaloBlur()Ljava/lang/Object;
.end method

.method private native nativeGetTextHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextHaloColor()Ljava/lang/Object;
.end method

.method private native nativeGetTextHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextHaloWidth()Ljava/lang/Object;
.end method

.method private native nativeGetTextHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextIgnorePlacement()Ljava/lang/Object;
.end method

.method private native nativeGetTextJustify()Ljava/lang/Object;
.end method

.method private native nativeGetTextKeepUpright()Ljava/lang/Object;
.end method

.method private native nativeGetTextLetterSpacing()Ljava/lang/Object;
.end method

.method private native nativeGetTextLineHeight()Ljava/lang/Object;
.end method

.method private native nativeGetTextMaxAngle()Ljava/lang/Object;
.end method

.method private native nativeGetTextMaxWidth()Ljava/lang/Object;
.end method

.method private native nativeGetTextOffset()Ljava/lang/Object;
.end method

.method private native nativeGetTextOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetTextOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextOptional()Ljava/lang/Object;
.end method

.method private native nativeGetTextPadding()Ljava/lang/Object;
.end method

.method private native nativeGetTextPitchAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetTextRadialOffset()Ljava/lang/Object;
.end method

.method private native nativeGetTextRotate()Ljava/lang/Object;
.end method

.method private native nativeGetTextRotationAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetTextSize()Ljava/lang/Object;
.end method

.method private native nativeGetTextTransform()Ljava/lang/Object;
.end method

.method private native nativeGetTextTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetTextTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetTextTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetTextVariableAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetTextWritingMode()Ljava/lang/Object;
.end method

.method private native nativeSetIconColorTransition(JJ)V
.end method

.method private native nativeSetIconHaloBlurTransition(JJ)V
.end method

.method private native nativeSetIconHaloColorTransition(JJ)V
.end method

.method private native nativeSetIconHaloWidthTransition(JJ)V
.end method

.method private native nativeSetIconOpacityTransition(JJ)V
.end method

.method private native nativeSetIconTranslateTransition(JJ)V
.end method

.method private native nativeSetTextColorTransition(JJ)V
.end method

.method private native nativeSetTextHaloBlurTransition(JJ)V
.end method

.method private native nativeSetTextHaloColorTransition(JJ)V
.end method

.method private native nativeSetTextHaloWidthTransition(JJ)V
.end method

.method private native nativeSetTextOpacityTransition(JJ)V
.end method

.method private native nativeSetTextTranslateTransition(JJ)V
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

    .line 125
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 126
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetFilter()Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconAllowOverlap()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 217
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconAllowOverlap()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-allow-overlap"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 361
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 682
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconColorAsInt()I
    .locals 2

    .line 693
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 694
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "icon-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIconColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 710
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIconHaloBlur()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 815
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloBlur()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-halo-blur"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 826
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIconHaloColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 732
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-halo-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconHaloColorAsInt()I
    .locals 2

    .line 743
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 744
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getIconHaloColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "icon-halo-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIconHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 760
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIconHaloWidth()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 782
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloWidth()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-halo-width"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 793
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIconIgnorePlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 229
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconIgnorePlacement()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-ignore-placement"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconImage()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 301
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconImage()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-image"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconKeepUpright()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 337
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconKeepUpright()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-keep-upright"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconOffset()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 348
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 349
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconOffset()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-offset"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 649
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 660
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIconOptional()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 241
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconOptional()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-optional"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 325
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconPadding()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-padding"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconPitchAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 373
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconPitchAlignment()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-pitch-alignment"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconRotate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 313
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconRotate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-rotate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconRotationAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 253
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconRotationAlignment()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-rotation-alignment"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconSize()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 265
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconSize()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-size"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconTextFit()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 277
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconTextFit()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-text-fit"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconTextFitPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 288
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 289
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconTextFitPadding()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-text-fit-padding"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 847
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 848
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconTranslate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-translate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 881
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconTranslateAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon-translate-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIconTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 859
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetIconTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 82
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 93
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolAvoidEdges()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 181
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSymbolAvoidEdges()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "symbol-avoid-edges"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSymbolPlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 157
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSymbolPlacement()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "symbol-placement"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSymbolSortKey()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 193
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSymbolSortKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "symbol-sort-key"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSymbolSpacing()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 169
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSymbolSpacing()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "symbol-spacing"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSymbolZOrder()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 205
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetSymbolZOrder()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "symbol-z-order"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextAllowOverlap()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 613
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextAllowOverlap()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-allow-overlap"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 517
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 926
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextColorAsInt()I
    .locals 2

    .line 937
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 938
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 942
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "text-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 954
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextField()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/types/Formatted;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 409
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextField()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-field"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextFont()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 421
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextFont()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-font"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextHaloBlur()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1059
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloBlur()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-halo-blur"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 1069
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1070
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloBlurTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextHaloColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 976
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloColor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-halo-color"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextHaloColorAsInt()I
    .locals 2

    .line 987
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 988
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->getTextHaloColor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 992
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "text-halo-color was set as a Function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1004
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextHaloWidth()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1026
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloWidth()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-halo-width"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 1036
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1037
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextHaloWidthTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextIgnorePlacement()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 625
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextIgnorePlacement()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-ignore-placement"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextJustify()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 481
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextJustify()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-justify"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextKeepUpright()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 577
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextKeepUpright()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-keep-upright"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextLetterSpacing()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 469
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextLetterSpacing()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-letter-spacing"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextLineHeight()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 457
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextLineHeight()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-line-height"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextMaxAngle()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 529
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextMaxAngle()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-max-angle"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextMaxWidth()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 445
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextMaxWidth()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-max-width"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextOffset()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 600
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 601
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextOffset()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-offset"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextOpacity()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 893
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextOpacity()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-opacity"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 904
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextOpacityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextOptional()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 637
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextOptional()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-optional"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextPadding()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 565
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextPadding()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-padding"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextPitchAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 385
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextPitchAlignment()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-pitch-alignment"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextRadialOffset()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 493
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextRadialOffset()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-radial-offset"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextRotate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 553
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextRotate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-rotate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextRotationAlignment()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 397
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextRotationAlignment()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-rotation-alignment"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextSize()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 433
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextSize()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-size"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextTransform()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 589
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextTransform()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-transform"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextTranslate()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
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

    .line 1091
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1092
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextTranslate()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-translate"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextTranslateAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1125
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextTranslateAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-translate-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 1102
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1103
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextTranslateTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextVariableAnchor()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 505
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextVariableAnchor()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-variable-anchor"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTextWritingMode()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 541
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeGetTextWritingMode()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "text-writing-mode"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 103
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setIconColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 719
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 720
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconColorTransition(JJ)V

    return-void
.end method

.method public setIconHaloBlurTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 835
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 836
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconHaloBlurTransition(JJ)V

    return-void
.end method

.method public setIconHaloColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 769
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 770
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconHaloColorTransition(JJ)V

    return-void
.end method

.method public setIconHaloWidthTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 802
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 803
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconHaloWidthTransition(JJ)V

    return-void
.end method

.method public setIconOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 669
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 670
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconOpacityTransition(JJ)V

    return-void
.end method

.method public setIconTranslateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 868
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 869
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetIconTranslateTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 963
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 964
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextColorTransition(JJ)V

    return-void
.end method

.method public setTextHaloBlurTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 1079
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1080
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextHaloBlurTransition(JJ)V

    return-void
.end method

.method public setTextHaloColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 1013
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1014
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextHaloColorTransition(JJ)V

    return-void
.end method

.method public setTextHaloWidthTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 1046
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1047
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextHaloWidthTransition(JJ)V

    return-void
.end method

.method public setTextOpacityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 913
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 914
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextOpacityTransition(JJ)V

    return-void
.end method

.method public setTextTranslateTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 1112
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->checkThread()V

    .line 1113
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->nativeSetTextTranslateTransition(JJ)V

    return-void
.end method

.method public withFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setFilter(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)",
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
