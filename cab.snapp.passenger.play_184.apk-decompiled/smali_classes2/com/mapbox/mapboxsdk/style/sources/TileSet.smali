.class public Lcom/mapbox/mapboxsdk/style/sources/TileSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attribution:Ljava/lang/String;

.field private bounds:[Ljava/lang/Float;

.field private center:[Ljava/lang/Float;

.field private data:[Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private grids:[Ljava/lang/String;

.field private legend:Ljava/lang/String;

.field private maxZoom:Ljava/lang/Float;

.field private minZoom:Ljava/lang/Float;

.field private name:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private final tilejson:Ljava/lang/String;

.field private final tiles:[Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tilejson:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttribution()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public getBounds()[Ljava/lang/Float;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-object v0
.end method

.method public getCenter()[Ljava/lang/Float;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->center:[Ljava/lang/Float;

    return-object v0
.end method

.method public getData()[Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->data:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getGrids()[Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->grids:[Ljava/lang/String;

    return-object v0
.end method

.method public getLegend()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->legend:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getTilejson()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tilejson:Ljava/lang/String;

    return-object v0
.end method

.method public getTiles()[Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tiles:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribution(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->attribution:Ljava/lang/String;

    return-void
.end method

.method public varargs setBounds([Ljava/lang/Float;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-void
.end method

.method public setCenter(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    .line 286
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->center:[Ljava/lang/Float;

    return-void
.end method

.method public varargs setCenter([Ljava/lang/Float;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->center:[Ljava/lang/Float;

    return-void
.end method

.method public varargs setData([Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->data:[Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->description:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->encoding:Ljava/lang/String;

    return-void
.end method

.method public varargs setGrids([Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->grids:[Ljava/lang/String;

    return-void
.end method

.method public setLegend(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->legend:Ljava/lang/String;

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 233
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 220
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->name:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->template:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->version:Ljava/lang/String;

    return-void
.end method

.method toValueObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tilejson:Ljava/lang/String;

    const-string v2, "tilejson"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->tiles:[Ljava/lang/String;

    const-string v2, "tiles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 296
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "description"

    .line 299
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->version:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "version"

    .line 302
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->attribution:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "attribution"

    .line 305
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->template:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "template"

    .line 308
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->legend:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "legend"

    .line 311
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "scheme"

    .line 314
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_6
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->grids:[Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "grids"

    .line 317
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_7
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->data:[Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "data"

    .line 320
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    if-eqz v1, :cond_9

    const-string v2, "minzoom"

    .line 323
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_9
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    if-eqz v1, :cond_a

    const-string v2, "maxzoom"

    .line 326
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_a
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    if-eqz v1, :cond_b

    const-string v2, "bounds"

    .line 329
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_b
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->center:[Ljava/lang/Float;

    if-eqz v1, :cond_c

    const-string v2, "center"

    .line 332
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_c
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/style/sources/TileSet;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "encoding"

    .line 335
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method
