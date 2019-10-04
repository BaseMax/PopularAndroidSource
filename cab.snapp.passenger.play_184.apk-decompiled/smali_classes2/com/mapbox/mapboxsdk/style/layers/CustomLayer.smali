.class public Lcom/mapbox/mapboxsdk/style/layers/CustomLayer;
.super Lcom/mapbox/mapboxsdk/style/layers/Layer;
.source "SourceFile"


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/style/layers/CustomLayer;->initialize(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected native finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected native initialize(Ljava/lang/String;J)V
.end method

.method protected native nativeUpdate()V
.end method

.method public update()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/CustomLayer;->nativeUpdate()V

    return-void
.end method
