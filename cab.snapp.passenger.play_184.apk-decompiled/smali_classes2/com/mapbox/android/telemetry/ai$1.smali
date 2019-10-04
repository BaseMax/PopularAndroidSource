.class final Lcom/mapbox/android/telemetry/ai$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mapbox/android/telemetry/o;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sget-object v0, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    const-string v1, "api-events-staging.tilestream.net"

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/telemetry/ai$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    const-string v1, "events.mapbox.com"

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/telemetry/ai$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/mapbox/android/telemetry/o;->CHINA:Lcom/mapbox/android/telemetry/o;

    const-string v1, "events.mapbox.cn"

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/telemetry/ai$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
