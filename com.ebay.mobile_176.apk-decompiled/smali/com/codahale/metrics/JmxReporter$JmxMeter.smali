.class Lcom/codahale/metrics/JmxReporter$JmxMeter;
.super Lcom/codahale/metrics/JmxReporter$AbstractBean;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/JmxReporter$JmxMeterMBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JmxMeter"
.end annotation


# instance fields
.field private final metric:Lcom/codahale/metrics/Metered;

.field private final rateFactor:D

.field private final rateUnit:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/Metered;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 341
    invoke-direct {p0, p2}, Lcom/codahale/metrics/JmxReporter$AbstractBean;-><init>(Ljavax/management/ObjectName;)V

    .line 342
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    const-wide/16 p1, 0x1

    .line 343
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateFactor:D

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "events/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/codahale/metrics/JmxReporter$JmxMeter;->calculateRateUnit(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateUnit:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/Metered;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/JmxReporter$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/codahale/metrics/JmxReporter$JmxMeter;-><init>(Lcom/codahale/metrics/Metered;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private calculateRateUnit(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .line 378
    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    invoke-interface {v0}, Lcom/codahale/metrics/Metered;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFifteenMinuteRate()D
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    invoke-interface {v0}, Lcom/codahale/metrics/Metered;->getFifteenMinuteRate()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getFiveMinuteRate()D
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    invoke-interface {v0}, Lcom/codahale/metrics/Metered;->getFiveMinuteRate()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMeanRate()D
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    invoke-interface {v0}, Lcom/codahale/metrics/Metered;->getMeanRate()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getOneMinuteRate()D
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->metric:Lcom/codahale/metrics/Metered;

    invoke-interface {v0}, Lcom/codahale/metrics/Metered;->getOneMinuteRate()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getRateUnit()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxMeter;->rateUnit:Ljava/lang/String;

    return-object v0
.end method
