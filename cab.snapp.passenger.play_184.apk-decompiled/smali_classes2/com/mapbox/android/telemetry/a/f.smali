.class public final Lcom/mapbox/android/telemetry/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/mapbox/android/telemetry/a/f;-><init>(J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/f;->b:Ljava/lang/String;

    int-to-long v0, p1

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    .line 40
    iput-wide v0, p0, Lcom/mapbox/android/telemetry/a/f;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/f;->b:Ljava/lang/String;

    .line 30
    iput-wide p1, p0, Lcom/mapbox/android/telemetry/a/f;->a:J

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 5

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapbox/android/telemetry/a/f;->c:J

    sub-long/2addr v0, v2

    .line 54
    iget-wide v2, p0, Lcom/mapbox/android/telemetry/a/f;->a:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->obtainUniversalUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/f;->b:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/android/telemetry/a/f;->c:J

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterval()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/a/f;->a:J

    return-wide v0
.end method
