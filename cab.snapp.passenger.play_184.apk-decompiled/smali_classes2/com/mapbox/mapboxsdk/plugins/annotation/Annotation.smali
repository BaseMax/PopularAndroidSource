.class public abstract Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mapbox/geojson/Geometry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ID_DATA:Ljava/lang/String; = "custom_data"

.field static final ID_KEY:Ljava/lang/String; = "id"


# instance fields
.field protected geometry:Lcom/mapbox/geojson/Geometry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isDraggable:Z

.field protected jsonObject:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/gson/JsonObject;",
            "TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    .line 22
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p3, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    .line 118
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getData()Lcom/google/gson/JsonElement;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "custom_data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method getFeature()Lcom/google/gson/JsonObject;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getGeometry()Lcom/mapbox/geojson/Geometry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getId()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract getOffsetGeometry(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/android/b/c;FF)Lcom/mapbox/geojson/Geometry;
.end method

.method public hashCode()I
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    return v0
.end method

.method public setData(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "custom_data"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    return-void
.end method

.method public setGeometry(Lcom/mapbox/geojson/Geometry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    return-void
.end method

.method abstract setUsedDataDrivenProperties()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->geometry:Lcom/mapbox/geojson/Geometry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDraggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;->isDraggable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
