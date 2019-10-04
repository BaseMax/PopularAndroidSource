.class public Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1585
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "background-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1605
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1595
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1645
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1635
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundPattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1625
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundPattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1615
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "background-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 815
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 805
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "circle-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 795
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 785
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 825
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchAlignment(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchScale(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 895
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-scale"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchScale(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 885
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-scale"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleRadius(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 765
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-radius"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleRadius(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-radius"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 945
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "circle-stroke-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 955
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 985
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 975
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 925
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 855
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 845
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 875
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 865
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillAntialias(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-antialias"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillAntialias(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-antialias"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fill-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionBase(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1245
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-base"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionBase(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1235
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-base"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1125
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fill-extrusion-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1145
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1135
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionHeight(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1225
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-height"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionHeight(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-height"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1115
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1105
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionPattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1205
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionPattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1195
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1165
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1185
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1175
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionVerticalGradient(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1265
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-vertical-gradient"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionVerticalGradient(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1255
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-vertical-gradient"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fill-outline-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-outline-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-outline-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillPattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillPattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1055
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "heatmap-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1075
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1065
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapIntensity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1045
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-intensity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapIntensity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1035
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-intensity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1095
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1085
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapRadius(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1005
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-radius"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapRadius(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 995
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-radius"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapWeight(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1025
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-weight"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapWeight(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1015
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-weight"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1555
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hillshade-accent-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1575
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-accent-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1565
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-accent-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeExaggeration(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1485
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-exaggeration"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeExaggeration(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1475
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-exaggeration"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeHighlightColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1525
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hillshade-highlight-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeHighlightColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1545
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-highlight-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeHighlightColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1535
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-highlight-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1465
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1455
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationDirection(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1445
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-direction"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationDirection(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1435
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-direction"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeShadowColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1495
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hillshade-shadow-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeShadowColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1515
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-shadow-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeShadowColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1505
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-shadow-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAllowOverlap(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1845
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-allow-overlap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1835
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-allow-overlap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2085
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2075
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "icon-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "icon-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconIgnorePlacement(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1865
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-ignore-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1855
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-ignore-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconImage(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1985
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-image"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1975
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-image"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconKeepUpright(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2045
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-keep-upright"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconKeepUpright(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2035
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-keep-upright"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2065
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOffset([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2055
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOptional(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1885
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-optional"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOptional(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1875
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-optional"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPadding(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2025
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPadding(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2015
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPitchAlignment(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2105
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPitchAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2095
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2005
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1995
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotationAlignment(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1905
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotationAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1895
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconSize(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1925
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1915
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFit(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1945
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFit(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1935
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFitPadding(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1965
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFitPadding([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1955
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineCap(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1665
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineCap(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1655
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "line-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineDasharray(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineDasharray([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGapWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-gap-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGapWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-gap-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineJoin(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1685
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineJoin(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1675
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineMiterLimit(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1705
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-miter-limit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineMiterLimit(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1695
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-miter-limit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOffset(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static linePattern(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static linePattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineRoundLimit(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1725
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-round-limit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineRoundLimit(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1715
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "line-round-limit"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "line-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMax(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1345
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-max"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMax(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1335
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-max"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMin(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-min"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMin(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1315
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-min"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterContrast(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1385
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-contrast"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterContrast(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1375
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-contrast"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterFadeDuration(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1425
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-fade-duration"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterFadeDuration(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1415
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-fade-duration"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterHueRotate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1305
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-hue-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterHueRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1295
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-hue-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1285
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1275
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterResampling(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1405
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-resampling"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterResampling(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1395
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-resampling"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterSaturation(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1365
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-saturation"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterSaturation(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1355
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "raster-saturation"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolAvoidEdges(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1785
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-avoid-edges"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolAvoidEdges(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1775
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-avoid-edges"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolPlacement(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1745
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolPlacement(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1735
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSortKey(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1805
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-sort-key"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSortKey(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1795
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-sort-key"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSpacing(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1765
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-spacing"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSpacing(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1755
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-spacing"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolZOrder(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 1825
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-z-order"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolZOrder(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1815
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-z-order"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAllowOverlap(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2515
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-allow-overlap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2505
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-allow-overlap"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2355
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2345
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 635
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2175
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Lcom/mapbox/mapboxsdk/style/types/Formatted;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/types/Formatted;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/types/Formatted;",
            ">;"
        }
    .end annotation

    .line 2165
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2155
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textFont(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2195
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-font"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textFont([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2185
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-font"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloBlur(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 705
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 695
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-blur"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(I)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "text-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-color"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 685
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textIgnorePlacement(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2535
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-ignore-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2525
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-ignore-placement"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textJustify(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2295
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-justify"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textJustify(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2285
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-justify"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textKeepUpright(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2455
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-keep-upright"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textKeepUpright(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2445
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-keep-upright"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLetterSpacing(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2275
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-letter-spacing"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLetterSpacing(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2265
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-letter-spacing"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLineHeight(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2255
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-line-height"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLineHeight(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2245
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-line-height"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxAngle(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2375
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-angle"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxAngle(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2365
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-angle"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxWidth(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2235
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2225
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-width"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2495
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOffset([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2485
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOpacity(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-opacity"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOptional(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2555
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-optional"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOptional(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2545
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-optional"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPadding(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2435
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPadding(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2425
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-padding"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPitchAlignment(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2125
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPitchAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2115
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRadialOffset(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2315
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-radial-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRadialOffset(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2305
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-radial-offset"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2415
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2405
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotationAlignment(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2145
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotationAlignment(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2135
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textSize(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2215
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2205
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-size"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTransform(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2475
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-transform"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTransform(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2465
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-transform"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslate(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslate([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 715
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-translate"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslateAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 745
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslateAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 735
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    const-string v1, "text-translate-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchor(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2335
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchor([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2325
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textWritingMode(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Lcom/mapbox/mapboxsdk/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2395
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-writing-mode"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textWritingMode([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2385
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "text-writing-mode"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static visibility(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;

    const-string v1, "visibility"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
