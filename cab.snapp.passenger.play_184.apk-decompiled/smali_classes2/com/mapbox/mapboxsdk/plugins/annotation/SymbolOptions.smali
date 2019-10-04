.class public Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/Options;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Options<",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
        ">;"
    }
.end annotation


# static fields
.field static final PROPERTY_ICON_ANCHOR:Ljava/lang/String; = "icon-anchor"

.field static final PROPERTY_ICON_COLOR:Ljava/lang/String; = "icon-color"

.field static final PROPERTY_ICON_HALO_BLUR:Ljava/lang/String; = "icon-halo-blur"

.field static final PROPERTY_ICON_HALO_COLOR:Ljava/lang/String; = "icon-halo-color"

.field static final PROPERTY_ICON_HALO_WIDTH:Ljava/lang/String; = "icon-halo-width"

.field static final PROPERTY_ICON_IMAGE:Ljava/lang/String; = "icon-image"

.field static final PROPERTY_ICON_OFFSET:Ljava/lang/String; = "icon-offset"

.field static final PROPERTY_ICON_OPACITY:Ljava/lang/String; = "icon-opacity"

.field static final PROPERTY_ICON_ROTATE:Ljava/lang/String; = "icon-rotate"

.field static final PROPERTY_ICON_SIZE:Ljava/lang/String; = "icon-size"

.field private static final PROPERTY_IS_DRAGGABLE:Ljava/lang/String; = "is-draggable"

.field static final PROPERTY_SYMBOL_SORT_KEY:Ljava/lang/String; = "symbol-sort-key"

.field static final PROPERTY_TEXT_ANCHOR:Ljava/lang/String; = "text-anchor"

.field static final PROPERTY_TEXT_COLOR:Ljava/lang/String; = "text-color"

.field static final PROPERTY_TEXT_FIELD:Ljava/lang/String; = "text-field"

.field static final PROPERTY_TEXT_FONT:Ljava/lang/String; = "text-font"

.field static final PROPERTY_TEXT_HALO_BLUR:Ljava/lang/String; = "text-halo-blur"

.field static final PROPERTY_TEXT_HALO_COLOR:Ljava/lang/String; = "text-halo-color"

.field static final PROPERTY_TEXT_HALO_WIDTH:Ljava/lang/String; = "text-halo-width"

.field static final PROPERTY_TEXT_JUSTIFY:Ljava/lang/String; = "text-justify"

.field static final PROPERTY_TEXT_LETTER_SPACING:Ljava/lang/String; = "text-letter-spacing"

.field static final PROPERTY_TEXT_MAX_WIDTH:Ljava/lang/String; = "text-max-width"

.field static final PROPERTY_TEXT_OFFSET:Ljava/lang/String; = "text-offset"

.field static final PROPERTY_TEXT_OPACITY:Ljava/lang/String; = "text-opacity"

.field static final PROPERTY_TEXT_RADIAL_OFFSET:Ljava/lang/String; = "text-radial-offset"

.field static final PROPERTY_TEXT_ROTATE:Ljava/lang/String; = "text-rotate"

.field static final PROPERTY_TEXT_SIZE:Ljava/lang/String; = "text-size"

.field static final PROPERTY_TEXT_TRANSFORM:Ljava/lang/String; = "text-transform"


# instance fields
.field private data:Lcom/google/gson/JsonElement;

.field private geometry:Lcom/mapbox/geojson/Point;

.field private iconAnchor:Ljava/lang/String;

.field private iconColor:Ljava/lang/String;

.field private iconHaloBlur:Ljava/lang/Float;

.field private iconHaloColor:Ljava/lang/String;

.field private iconHaloWidth:Ljava/lang/Float;

.field private iconImage:Ljava/lang/String;

.field private iconOffset:[Ljava/lang/Float;

.field private iconOpacity:Ljava/lang/Float;

.field private iconRotate:Ljava/lang/Float;

.field private iconSize:Ljava/lang/Float;

.field private isDraggable:Z

.field private symbolSortKey:Ljava/lang/Float;

.field private textAnchor:Ljava/lang/String;

.field private textColor:Ljava/lang/String;

.field private textField:Ljava/lang/String;

.field private textFont:[Ljava/lang/String;

.field private textHaloBlur:Ljava/lang/Float;

.field private textHaloColor:Ljava/lang/String;

.field private textHaloWidth:Ljava/lang/Float;

.field private textJustify:Ljava/lang/String;

.field private textLetterSpacing:Ljava/lang/Float;

.field private textMaxWidth:Ljava/lang/Float;

.field private textOffset:[Ljava/lang/Float;

.field private textOpacity:Ljava/lang/Float;

.field private textRadialOffset:Ljava/lang/Float;

.field private textRotate:Ljava/lang/Float;

.field private textSize:Ljava/lang/Float;

.field private textTransform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;-><init>()V

    return-void
.end method

.method static fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 3

    .line 865
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 868
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    instance-of v0, v0, Lcom/mapbox/geojson/Point;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 872
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;-><init>()V

    .line 873
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Point;

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    const-string v1, "symbol-sort-key"

    .line 874
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->symbolSortKey:Ljava/lang/Float;

    :cond_1
    const-string v1, "icon-size"

    .line 877
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 878
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconSize:Ljava/lang/Float;

    :cond_2
    const-string v1, "icon-image"

    .line 880
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconImage:Ljava/lang/String;

    :cond_3
    const-string v1, "icon-rotate"

    .line 883
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 884
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconRotate:Ljava/lang/Float;

    :cond_4
    const-string v1, "icon-offset"

    .line 886
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 887
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->toFloatArray(Lcom/google/gson/JsonArray;)[Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOffset:[Ljava/lang/Float;

    :cond_5
    const-string v1, "icon-anchor"

    .line 889
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 890
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconAnchor:Ljava/lang/String;

    :cond_6
    const-string v1, "text-field"

    .line 892
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 893
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textField:Ljava/lang/String;

    :cond_7
    const-string v1, "text-font"

    .line 895
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 896
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->toStringArray(Lcom/google/gson/JsonArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textFont:[Ljava/lang/String;

    :cond_8
    const-string v1, "text-size"

    .line 898
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 899
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textSize:Ljava/lang/Float;

    :cond_9
    const-string v1, "text-max-width"

    .line 901
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 902
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textMaxWidth:Ljava/lang/Float;

    :cond_a
    const-string v1, "text-letter-spacing"

    .line 904
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 905
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textLetterSpacing:Ljava/lang/Float;

    :cond_b
    const-string v1, "text-justify"

    .line 907
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 908
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textJustify:Ljava/lang/String;

    :cond_c
    const-string v1, "text-radial-offset"

    .line 910
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 911
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRadialOffset:Ljava/lang/Float;

    :cond_d
    const-string v1, "text-anchor"

    .line 913
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 914
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textAnchor:Ljava/lang/String;

    :cond_e
    const-string v1, "text-rotate"

    .line 916
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 917
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRotate:Ljava/lang/Float;

    :cond_f
    const-string v1, "text-transform"

    .line 919
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "text-transform"

    .line 920
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textTransform:Ljava/lang/String;

    :cond_10
    const-string v1, "text-offset"

    .line 922
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "text-offset"

    .line 923
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->toFloatArray(Lcom/google/gson/JsonArray;)[Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOffset:[Ljava/lang/Float;

    :cond_11
    const-string v1, "icon-opacity"

    .line 925
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "icon-opacity"

    .line 926
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOpacity:Ljava/lang/Float;

    :cond_12
    const-string v1, "icon-color"

    .line 928
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "icon-color"

    .line 929
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconColor:Ljava/lang/String;

    :cond_13
    const-string v1, "icon-halo-color"

    .line 931
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "icon-halo-color"

    .line 932
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloColor:Ljava/lang/String;

    :cond_14
    const-string v1, "icon-halo-width"

    .line 934
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "icon-halo-width"

    .line 935
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloWidth:Ljava/lang/Float;

    :cond_15
    const-string v1, "icon-halo-blur"

    .line 937
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "icon-halo-blur"

    .line 938
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloBlur:Ljava/lang/Float;

    :cond_16
    const-string v1, "text-opacity"

    .line 940
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "text-opacity"

    .line 941
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOpacity:Ljava/lang/Float;

    :cond_17
    const-string v1, "text-color"

    .line 943
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "text-color"

    .line 944
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textColor:Ljava/lang/String;

    :cond_18
    const-string v1, "text-halo-color"

    .line 946
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "text-halo-color"

    .line 947
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloColor:Ljava/lang/String;

    :cond_19
    const-string v1, "text-halo-width"

    .line 949
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "text-halo-width"

    .line 950
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloWidth:Ljava/lang/Float;

    :cond_1a
    const-string v1, "text-halo-blur"

    .line 952
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "text-halo-blur"

    .line 953
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloBlur:Ljava/lang/Float;

    :cond_1b
    const-string v1, "is-draggable"

    .line 955
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "is-draggable"

    .line 956
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    iput-boolean p0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->isDraggable:Z

    :cond_1c
    return-object v0

    .line 866
    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "geometry field is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method bridge synthetic build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;

    move-result-object p1

    return-object p1
.end method

.method build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    if-eqz v0, :cond_0

    .line 824
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 825
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->symbolSortKey:Ljava/lang/Float;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 826
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconSize:Ljava/lang/Float;

    const-string v1, "icon-size"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 827
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconImage:Ljava/lang/String;

    const-string v1, "icon-image"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconRotate:Ljava/lang/Float;

    const-string v1, "icon-rotate"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 829
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOffset:[Ljava/lang/Float;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->convertArray([Ljava/lang/Float;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "icon-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 830
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconAnchor:Ljava/lang/String;

    const-string v1, "icon-anchor"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textField:Ljava/lang/String;

    const-string v1, "text-field"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textFont:[Ljava/lang/String;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->convertArray([Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "text-font"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 833
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textSize:Ljava/lang/Float;

    const-string v1, "text-size"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 834
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textMaxWidth:Ljava/lang/Float;

    const-string v1, "text-max-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 835
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textLetterSpacing:Ljava/lang/Float;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 836
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textJustify:Ljava/lang/String;

    const-string v1, "text-justify"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRadialOffset:Ljava/lang/Float;

    const-string v1, "text-radial-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 838
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textAnchor:Ljava/lang/String;

    const-string v1, "text-anchor"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRotate:Ljava/lang/Float;

    const-string v1, "text-rotate"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 840
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textTransform:Ljava/lang/String;

    const-string v1, "text-transform"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOffset:[Ljava/lang/Float;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/ConvertUtils;->convertArray([Ljava/lang/Float;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "text-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 842
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOpacity:Ljava/lang/Float;

    const-string v1, "icon-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 843
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconColor:Ljava/lang/String;

    const-string v1, "icon-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloColor:Ljava/lang/String;

    const-string v1, "icon-halo-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloWidth:Ljava/lang/Float;

    const-string v1, "icon-halo-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 846
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloBlur:Ljava/lang/Float;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 847
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOpacity:Ljava/lang/Float;

    const-string v1, "text-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 848
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textColor:Ljava/lang/String;

    const-string v1, "text-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloColor:Ljava/lang/String;

    const-string v1, "text-halo-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloWidth:Ljava/lang/Float;

    const-string v1, "text-halo-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 851
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloBlur:Ljava/lang/Float;

    const-string v1, "text-halo-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 852
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;-><init>(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V

    .line 853
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->isDraggable:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->setDraggable(Z)V

    .line 854
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->setData(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 822
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getData()Lcom/google/gson/JsonElement;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getDraggable()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->isDraggable:Z

    return v0
.end method

.method public getGeometry()Lcom/mapbox/geojson/Point;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object v0
.end method

.method public getIconAnchor()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconAnchor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconColor()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconHaloBlur()Ljava/lang/Float;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloBlur:Ljava/lang/Float;

    return-object v0
.end method

.method public getIconHaloColor()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconHaloWidth()Ljava/lang/Float;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getIconImage()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconImage:Ljava/lang/String;

    return-object v0
.end method

.method public getIconOffset()[Ljava/lang/Float;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOffset:[Ljava/lang/Float;

    return-object v0
.end method

.method public getIconOpacity()Ljava/lang/Float;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getIconRotate()Ljava/lang/Float;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconRotate:Ljava/lang/Float;

    return-object v0
.end method

.method public getIconSize()Ljava/lang/Float;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 6

    .line 753
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 756
    :cond_0
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public getSymbolSortKey()Ljava/lang/Float;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->symbolSortKey:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextAnchor()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textAnchor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextField()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textField:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFont()[Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textFont:[Ljava/lang/String;

    return-object v0
.end method

.method public getTextHaloBlur()Ljava/lang/Float;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloBlur:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextHaloColor()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHaloWidth()Ljava/lang/Float;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextJustify()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textJustify:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLetterSpacing()Ljava/lang/Float;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textLetterSpacing:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextMaxWidth()Ljava/lang/Float;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textMaxWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextOffset()[Ljava/lang/Float;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOffset:[Ljava/lang/Float;

    return-object v0
.end method

.method public getTextOpacity()Ljava/lang/Float;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextRadialOffset()Ljava/lang/Float;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRadialOffset:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextRotate()Ljava/lang/Float;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRotate:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextSize()Ljava/lang/Float;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextTransform()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textTransform:Ljava/lang/String;

    return-object v0
.end method

.method public withData(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->data:Lcom/google/gson/JsonElement;

    return-object p0
.end method

.method public withDraggable(Z)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 795
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->isDraggable:Z

    return-object p0
.end method

.method public withGeometry(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public withIconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconAnchor:Ljava/lang/String;

    return-object p0
.end method

.method public withIconColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconColor:Ljava/lang/String;

    return-object p0
.end method

.method public withIconHaloBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloBlur:Ljava/lang/Float;

    return-object p0
.end method

.method public withIconHaloColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloColor:Ljava/lang/String;

    return-object p0
.end method

.method public withIconHaloWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconHaloWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public withIconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconImage:Ljava/lang/String;

    return-object p0
.end method

.method public withIconOffset([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOffset:[Ljava/lang/Float;

    return-object p0
.end method

.method public withIconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withIconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconRotate:Ljava/lang/Float;

    return-object p0
.end method

.method public withIconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->iconSize:Ljava/lang/Float;

    return-object p0
.end method

.method public withLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 4

    .line 743
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public withSymbolSortKey(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->symbolSortKey:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textAnchor:Ljava/lang/String;

    return-object p0
.end method

.method public withTextColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textColor:Ljava/lang/String;

    return-object p0
.end method

.method public withTextField(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textField:Ljava/lang/String;

    return-object p0
.end method

.method public withTextFont([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textFont:[Ljava/lang/String;

    return-object p0
.end method

.method public withTextHaloBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloBlur:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextHaloColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloColor:Ljava/lang/String;

    return-object p0
.end method

.method public withTextHaloWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textHaloWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextJustify(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textJustify:Ljava/lang/String;

    return-object p0
.end method

.method public withTextLetterSpacing(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textLetterSpacing:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextMaxWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textMaxWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextOffset([Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOffset:[Ljava/lang/Float;

    return-object p0
.end method

.method public withTextOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextRadialOffset(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRadialOffset:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textRotate:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textSize:Ljava/lang/Float;

    return-object p0
.end method

.method public withTextTransform(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/SymbolOptions;->textTransform:Ljava/lang/String;

    return-object p0
.end method
