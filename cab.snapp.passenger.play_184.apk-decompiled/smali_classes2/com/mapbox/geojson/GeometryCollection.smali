.class public final Lcom/mapbox/geojson/GeometryCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/geojson/Geometry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/geojson/GeometryCollection$GsonTypeAdapter;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "GeometryCollection"


# instance fields
.field private final bbox:Lcom/mapbox/geojson/BoundingBox;

.field private final geometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Geometry;",
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
            "Lcom/mapbox/geojson/Geometry;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 160
    iput-object p1, p0, Lcom/mapbox/geojson/GeometryCollection;->type:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/mapbox/geojson/GeometryCollection;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-eqz p3, :cond_0

    .line 165
    iput-object p3, p0, Lcom/mapbox/geojson/GeometryCollection;->geometries:Ljava/util/List;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null geometries"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromGeometries(Ljava/util/List;)Lcom/mapbox/geojson/GeometryCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Geometry;",
            ">;)",
            "Lcom/mapbox/geojson/GeometryCollection;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/mapbox/geojson/GeometryCollection;

    const-string v1, "GeometryCollection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/mapbox/geojson/GeometryCollection;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromGeometries(Ljava/util/List;Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/GeometryCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Geometry;",
            ">;",
            "Lcom/mapbox/geojson/BoundingBox;",
            ")",
            "Lcom/mapbox/geojson/GeometryCollection;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/mapbox/geojson/GeometryCollection;

    const-string v1, "GeometryCollection"

    invoke-direct {v0, v1, p1, p0}, Lcom/mapbox/geojson/GeometryCollection;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/GeometryCollection;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/geojson/Geometry;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 128
    new-instance v0, Lcom/mapbox/geojson/GeometryCollection;

    const-string v1, "GeometryCollection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/mapbox/geojson/GeometryCollection;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromGeometry(Lcom/mapbox/geojson/Geometry;Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/GeometryCollection;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/geojson/Geometry;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 142
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 143
    new-instance v0, Lcom/mapbox/geojson/GeometryCollection;

    const-string v1, "GeometryCollection"

    invoke-direct {v0, v1, p1, p0}, Lcom/mapbox/geojson/GeometryCollection;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/GeometryCollection;
    .locals 2

    .line 86
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 87
    invoke-static {}, Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 88
    invoke-static {}, Lcom/mapbox/geojson/GeometryAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 89
    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/GeometryCollection;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/geojson/GeometryCollection;

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
            "Lcom/mapbox/geojson/GeometryCollection;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/mapbox/geojson/GeometryCollection$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/mapbox/geojson/GeometryCollection$GsonTypeAdapter;-><init>(Lcom/google/gson/e;)V

    return-object v0
.end method


# virtual methods
.method public final bbox()Lcom/mapbox/geojson/BoundingBox;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mapbox/geojson/GeometryCollection;->bbox:Lcom/mapbox/geojson/BoundingBox;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 251
    :cond_0
    instance-of v1, p1, Lcom/mapbox/geojson/GeometryCollection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 252
    check-cast p1, Lcom/mapbox/geojson/GeometryCollection;

    .line 253
    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mapbox/geojson/GeometryCollection;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/mapbox/geojson/GeometryCollection;->bbox()Lcom/mapbox/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/geojson/GeometryCollection;->bbox()Lcom/mapbox/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mapbox/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->geometries:Ljava/util/List;

    .line 255
    invoke-virtual {p1}, Lcom/mapbox/geojson/GeometryCollection;->geometries()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final geometries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Geometry;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/mapbox/geojson/GeometryCollection;->geometries:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/mapbox/geojson/GeometryCollection;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 266
    iget-object v2, p0, Lcom/mapbox/geojson/GeometryCollection;->bbox:Lcom/mapbox/geojson/BoundingBox;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/mapbox/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 268
    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->geometries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 221
    invoke-static {}, Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 222
    invoke-static {}, Lcom/mapbox/geojson/GeometryAdapterFactory;->create()Lcom/google/gson/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;

    .line 223
    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeometryCollection{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->bbox:Lcom/mapbox/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geometries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/geojson/GeometryCollection;->geometries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mapbox/geojson/GeometryCollection;->type:Ljava/lang/String;

    return-object v0
.end method
