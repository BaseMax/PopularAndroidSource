.class Lcom/codahale/metrics/JmxReporter$JmxTimer;
.super Lcom/codahale/metrics/JmxReporter$JmxMeter;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/JmxReporter$JmxTimerMBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JmxTimer"
.end annotation


# instance fields
.field private final durationFactor:D

.field private final durationUnit:Ljava/lang/String;

.field private final metric:Lcom/codahale/metrics/Timer;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/Timer;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codahale/metrics/JmxReporter$JmxMeter;-><init>(Lcom/codahale/metrics/Metered;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/JmxReporter$1;)V

    .line 421
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    const-wide/16 p1, 0x1

    .line 422
    invoke-virtual {p4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    .line 423
    invoke-virtual {p4}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationUnit:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/Timer;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/JmxReporter$1;)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codahale/metrics/JmxReporter$JmxTimer;-><init>(Lcom/codahale/metrics/Timer;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public get50thPercentile()D
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMedian()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public get75thPercentile()D
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get75thPercentile()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public get95thPercentile()D
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get95thPercentile()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public get98thPercentile()D
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get98thPercentile()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public get999thPercentile()D
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get999thPercentile()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public get99thPercentile()D
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get99thPercentile()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getDurationUnit()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()D
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMax()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMean()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getMin()D
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMin()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getStdDev()D
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getStdDev()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->durationFactor:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public values()[J
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxTimer;->metric:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getValues()[J

    move-result-object v0

    return-object v0
.end method
