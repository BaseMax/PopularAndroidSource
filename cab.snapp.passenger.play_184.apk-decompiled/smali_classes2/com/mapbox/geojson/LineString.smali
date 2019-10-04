.class public final Lcom/mapbox/geojson/LineString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/geojson/CoordinateContainer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/geojson/LineString$GsonTypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/geojson/CoordinateContainer<",
        "Ljava/util/List<",
        "Lcom/mapbox/geojson/Point;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "LineString"


# instance fields
.field private final bbox:Lcom/mapbox/geojson/BoundingBox;

.field private final coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mapbox/geojson/BoundingBox;",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 149
    iput-object p1, p0, Lcom/mapbox/geojson/LineString;->type:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/mapbox/geojson/LineString;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-eqz p3, :cond_0

    .line 154
    iput-object p3, p0, Lcom/mapbox/geojson/LineString;->coordinates:Ljava/util/List;

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null coordinates"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/LineString;
    .locals 2

    .line 76
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 77
    invoke-static {}, Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 78
    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/LineString;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/geojson/LineString;

    return-object p0
.end method

.method public static fromLngLats(Lcom/mapbox/geojson/MultiPoint;)Lcom/mapbox/geojson/LineString;
    .locals 3

    .line 91
    new-instance v0, Lcom/mapbox/geojson/LineString;

    invoke-virtual {p0}, Lcom/mapbox/geojson/MultiPoint;->coordinates()Ljava/util/List;

    move-result-object p0

    const-string v1, "LineString"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/mapbox/geojson/LineString;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats(Lcom/mapbox/geojson/MultiPoint;Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/LineString;
    .locals 2

    .line 142
    new-instance v0, Lcom/mapbox/geojson/LineString;

    invoke-virtual {p0}, Lcom/mapbox/geojson/MultiPoint;->coordinates()Ljava/util/List;

    move-result-object p0

    const-string v1, "LineString"

    invoke-direct {v0, v1, p1, p0}, Lcom/mapbox/geojson/LineString;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;)",
            "Lcom/mapbox/geojson/LineString;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/mapbox/geojson/LineString;

    const-string v1, "LineString"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/mapbox/geojson/LineString;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats(Ljava/util/List;Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/LineString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;",
            "Lcom/mapbox/geojson/BoundingBox;",
            ")",
            "Lcom/mapbox/geojson/LineString;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/mapbox/geojson/LineString;

    const-string v1, "LineString"

    invoke-direct {v0, v1, p1, p0}, Lcom/mapbox/geojson/LineString;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method static fromLngLats([[D)Lcom/mapbox/geojson/LineString;
    .locals 3

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 159
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 160
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/mapbox/geojson/Point;->fromLngLat([D)Lcom/mapbox/geojson/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {v0}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;

    move-result-object p0

    return-object p0
.end method

.method public static fromPolyline(Ljava/lang/String;I)Lcom/mapbox/geojson/LineString;
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lcom/mapbox/geojson/utils/PolylineUtils;->decode(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/LineString;

    move-result-object p0

    return-object p0
.end method

.method public static typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/e;",
            ")",
            "Lcom/google/gson/q<",
            "Lcom/mapbox/geojson/LineString;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Lcom/mapbox/geojson/LineString$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/mapbox/geojson/LineString$GsonTypeAdapter;-><init>(Lcom/google/gson/e;)V

    return-object v0
.end method


# virtual methods
.method public final bbox()Lcom/mapbox/geojson/BoundingBox;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/mapbox/geojson/LineString;->bbox:Lcom/mapbox/geojson/BoundingBox;

    return-object v0
.end method

.method public final bridge synthetic coordinates()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final coordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/mapbox/geojson/LineString;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 277
    :cond_0
    instance-of v1, p1, Lcom/mapbox/geojson/LineString;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 278
    check-cast p1, Lcom/mapbox/geojson/LineString;

    .line 279
    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mapbox/geojson/LineString;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p1}, Lcom/mapbox/geojson/LineString;->bbox()Lcom/mapbox/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/geojson/LineString;->bbox()Lcom/mapbox/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mapbox/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->coordinates:Ljava/util/List;

    .line 281
    invoke-virtual {p1}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/mapbox/geojson/LineString;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 292
    iget-object v2, p0, Lcom/mapbox/geojson/LineString;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/mapbox/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 294
    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->coordinates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 235
    invoke-static {}, Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 236
    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toPolyline(I)Ljava/lang/String;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mapbox/geojson/utils/PolylineUtils;->encode(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineString{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->bbox:Lcom/mapbox/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/geojson/LineString;->coordinates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mapbox/geojson/LineString;->type:Ljava/lang/String;

    return-object v0
.end method