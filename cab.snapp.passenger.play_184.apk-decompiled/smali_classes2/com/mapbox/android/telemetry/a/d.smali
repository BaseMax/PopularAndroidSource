.class public final Lcom/mapbox/android/telemetry/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mapbox/android/telemetry/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/mapbox/android/telemetry/a/f;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/a/f;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/d;->a:Lcom/mapbox/android/telemetry/a/f;

    return-void
.end method

.method private static a(D)D
    .locals 1

    .line 47
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x7

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/LocationEvent;
    .locals 9

    .line 37
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/android/telemetry/a/d;->a(D)D

    move-result-wide v4

    .line 38
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/android/telemetry/a/d;->a(D)D

    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Lcom/mapbox/android/telemetry/a/d;->b(D)D

    move-result-wide v6

    .line 40
    new-instance v0, Lcom/mapbox/android/telemetry/LocationEvent;

    move-object v2, v0

    move-object v3, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/mapbox/android/telemetry/LocationEvent;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    .line 41
    invoke-static {p0, v0}, Lcom/mapbox/android/telemetry/a/d;->a(Landroid/location/Location;Lcom/mapbox/android/telemetry/LocationEvent;)V

    .line 42
    invoke-static {p0, v0}, Lcom/mapbox/android/telemetry/a/d;->b(Landroid/location/Location;Lcom/mapbox/android/telemetry/LocationEvent;)V

    return-object v0
.end method

.method private static a(Landroid/location/Location;Lcom/mapbox/android/telemetry/LocationEvent;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mapbox/android/telemetry/LocationEvent;->setAltitude(Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method private static b(D)D
    .locals 3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/mapbox/android/telemetry/a/d;->c(D)D

    move-result-wide p0

    :cond_1
    return-wide p0
.end method

.method private static b(Landroid/location/Location;Lcom/mapbox/android/telemetry/LocationEvent;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    .line 75
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mapbox/android/telemetry/LocationEvent;->setAccuracy(Ljava/lang/Float;)V

    :cond_0
    return-void
.end method

.method private static c(D)D
    .locals 4

    const-wide v0, -0x3f99800000000000L    # -180.0

    sub-double/2addr p0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v2

    add-double/2addr p0, v2

    rem-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static create(Landroid/location/Location;Ljava/lang/String;)Lcom/mapbox/android/telemetry/LocationEvent;
    .locals 1

    const-string v0, "unknown"

    .line 25
    invoke-static {p0, v0, p1}, Lcom/mapbox/android/telemetry/a/d;->a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/LocationEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Landroid/location/Location;Ljava/lang/String;)Lcom/mapbox/android/telemetry/LocationEvent;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/d;->a:Lcom/mapbox/android/telemetry/a/f;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/mapbox/android/telemetry/a/d;->a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/LocationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final updateSessionIdentifier(Lcom/mapbox/android/telemetry/a/f;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mapbox/android/telemetry/a/d;->a:Lcom/mapbox/android/telemetry/a/f;

    return-void
.end method
