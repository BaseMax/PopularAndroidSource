.class public Lcom/mapbox/mapboxsdk/style/light/Light;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Light"


# instance fields
.field private nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 36
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/style/light/Light;->nativePtr:J

    return-void
.end method

.method private checkThread()V
    .locals 1

    const-string v0, "Mbgl-Light"

    .line 197
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetAnchor()Ljava/lang/String;
.end method

.method private native nativeGetColor()Ljava/lang/String;
.end method

.method private native nativeGetColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetIntensity()F
.end method

.method private native nativeGetIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeGetPosition()Lcom/mapbox/mapboxsdk/style/light/Position;
.end method

.method private native nativeGetPositionTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
.end method

.method private native nativeSetAnchor(Ljava/lang/String;)V
.end method

.method private native nativeSetColor(Ljava/lang/String;)V
.end method

.method private native nativeSetColorTransition(JJ)V
.end method

.method private native nativeSetIntensity(F)V
.end method

.method private native nativeSetIntensityTransition(JJ)V
.end method

.method private native nativeSetPosition(Lcom/mapbox/mapboxsdk/style/light/Position;)V
.end method

.method private native nativeSetPositionTransition(JJ)V
.end method


# virtual methods
.method public getAnchor()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 57
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 130
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 141
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetColorTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIntensity()F
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 172
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetIntensity()F

    move-result v0

    return v0
.end method

.method public getIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 183
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetIntensityTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/mapbox/mapboxsdk/style/light/Position;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 78
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetPosition()Lcom/mapbox/mapboxsdk/style/light/Position;

    move-result-object v0

    return-object v0
.end method

.method public getPositionTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 89
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeGetPositionTransition()Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 46
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetAnchor(Ljava/lang/String;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 109
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetColor(Ljava/lang/String;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 119
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetColor(Ljava/lang/String;)V

    return-void
.end method

.method public setColorTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 150
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 151
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetColorTransition(JJ)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 161
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetIntensity(F)V

    return-void
.end method

.method public setIntensityTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 193
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetIntensityTransition(JJ)V

    return-void
.end method

.method public setPosition(Lcom/mapbox/mapboxsdk/style/light/Position;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 67
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetPosition(Lcom/mapbox/mapboxsdk/style/light/Position;)V

    return-void
.end method

.method public setPositionTransition(Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/light/Light;->checkThread()V

    .line 99
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/style/light/Light;->nativeSetPositionTransition(JJ)V

    return-void
.end method
