.class public Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;
.super Lcom/mapbox/mapboxsdk/style/sources/Source;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TILE_SIZE:I = 0x200


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/TileSet;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 137
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->toValueObject()Ljava/util/Map;

    move-result-object p2

    const/16 v0, 0x200

    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/TileSet;I)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 149
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->toValueObject()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    const/16 v0, 0x200

    .line 96
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/style/sources/Source;-><init>()V

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .line 67
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->checkThread()V

    .line 171
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->checkThread()V

    .line 160
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/sources/RasterDemSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected native initialize(Ljava/lang/String;Ljava/lang/Object;I)V
.end method

.method protected native nativeGetUrl()Ljava/lang/String;
.end method
