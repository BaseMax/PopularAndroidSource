.class public abstract Lcom/mapbox/mapboxsdk/style/layers/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Layer"


# instance fields
.field private detached:Z

.field private invalidated:Z

.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/mapbox/mapboxsdk/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 32
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativePtr:J

    return-void
.end method

.method private convertValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 152
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/types/Formatted;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lcom/mapbox/mapboxsdk/style/types/Formatted;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/types/Formatted;->toArray()[Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 1

    const-string v0, "Mbgl-Layer"

    .line 43
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    return-void
.end method

.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 69
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 85
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetMaxZoom()F

    move-result v0

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 80
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetMinZoom()F

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativePtr:J

    return-wide v0
.end method

.method public getVisibility()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 75
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetVisibility()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "visibility"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isDetached()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->detached:Z

    return v0
.end method

.method protected native nativeGetFilter()Lcom/google/gson/JsonElement;
.end method

.method protected native nativeGetId()Ljava/lang/String;
.end method

.method protected native nativeGetMaxZoom()F
.end method

.method protected native nativeGetMinZoom()F
.end method

.method protected native nativeGetSourceId()Ljava/lang/String;
.end method

.method protected native nativeGetSourceLayer()Ljava/lang/String;
.end method

.method protected native nativeGetVisibility()Ljava/lang/Object;
.end method

.method protected native nativeSetFilter([Ljava/lang/Object;)V
.end method

.method protected native nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method protected native nativeSetMaxZoom(F)V
.end method

.method protected native nativeSetMinZoom(F)V
.end method

.method protected native nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method protected native nativeSetSourceLayer(Ljava/lang/String;)V
.end method

.method public setDetached()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->detached:Z

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetMaxZoom(F)V

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetMinZoom(F)V

    return-void
.end method

.method public varargs setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/PropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->checkThread()V

    .line 52
    array-length v0, p1

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 57
    iget-object v3, v2, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    instance-of v4, v2, Lcom/mapbox/mapboxsdk/style/layers/PaintPropertyValue;

    if-eqz v4, :cond_2

    .line 59
    iget-object v2, v2, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v2, v2, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
