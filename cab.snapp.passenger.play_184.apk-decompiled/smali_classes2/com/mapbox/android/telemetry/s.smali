.class public final Lcom/mapbox/android/telemetry/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mapbox/android/telemetry/d;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/MediaType;


# virtual methods
.method public final getAttachmentMetadata()Lcom/mapbox/android/telemetry/d;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mapbox/android/telemetry/s;->a:Lcom/mapbox/android/telemetry/d;

    return-object v0
.end method

.method public final getFileData()Lcom/mapbox/android/telemetry/t;
    .locals 3

    .line 21
    new-instance v0, Lcom/mapbox/android/telemetry/t;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/s;->c:Lokhttp3/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/telemetry/t;-><init>(Ljava/lang/String;Lokhttp3/MediaType;)V

    return-object v0
.end method
