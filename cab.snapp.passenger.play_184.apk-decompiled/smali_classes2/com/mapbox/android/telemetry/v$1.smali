.class final Lcom/mapbox/android/telemetry/v$1;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/RequestBody;

.field final synthetic b:Lcom/mapbox/android/telemetry/v;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/v;Lokhttp3/RequestBody;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mapbox/android/telemetry/v$1;->b:Lcom/mapbox/android/telemetry/v;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/v$1;->a:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mapbox/android/telemetry/v$1;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lb/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lb/k;

    invoke-direct {v0, p1}, Lb/k;-><init>(Lb/u;)V

    invoke-static {v0}, Lb/n;->buffer(Lb/u;)Lb/d;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/mapbox/android/telemetry/v$1;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lb/d;)V

    .line 55
    invoke-interface {p1}, Lb/d;->close()V

    return-void
.end method
