.class public Lcom/codahale/metrics/Slf4jReporter;
.super Lcom/codahale/metrics/ScheduledReporter;
.source "Slf4jReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/Slf4jReporter$ErrorLoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$InfoLoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$TraceLoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$DebugLoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;,
        Lcom/codahale/metrics/Slf4jReporter$Builder;,
        Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;
    }
.end annotation


# instance fields
.field private final loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

.field private final marker:Lorg/slf4j/Marker;

.field private final prefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;)V
    .locals 6

    const-string v2, "logger-reporter"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p7

    move-object v4, p5

    move-object v5, p6

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/codahale/metrics/ScheduledReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)V

    .line 174
    iput-object p2, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    .line 175
    iput-object p3, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    .line 176
    iput-object p4, p0, Lcom/codahale/metrics/Slf4jReporter;->prefix:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/Slf4jReporter$1;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/codahale/metrics/Slf4jReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;)V

    return-void
.end method

.method public static forRegistry(Lcom/codahale/metrics/MetricRegistry;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 2

    .line 25
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codahale/metrics/Slf4jReporter$Builder;-><init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$1;)V

    return-object v0
.end method

.method private logCounter(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    const-string/jumbo v2, "type=COUNTER, name={}, count={}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {p0, v5}, Lcom/codahale/metrics/Slf4jReporter;->prefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {p2}, Lcom/codahale/metrics/Counter;->getCount()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logGauge(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    const-string/jumbo v2, "type=GAUGE, name={}, value={}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {p0, v5}, Lcom/codahale/metrics/Slf4jReporter;->prefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-interface {p2}, Lcom/codahale/metrics/Gauge;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logHistogram(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V
    .locals 8

    .line 247
    invoke-virtual {p2}, Lcom/codahale/metrics/Histogram;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v2, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    const-string/jumbo v3, "type=HISTOGRAM, name={}, count={}, min={}, max={}, mean={}, stddev={}, median={}, p75={}, p95={}, p98={}, p99={}, p999={}"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 251
    invoke-direct {p0, v6}, Lcom/codahale/metrics/Slf4jReporter;->prefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    .line 252
    invoke-virtual {p2}, Lcom/codahale/metrics/Histogram;->getCount()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    .line 253
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMin()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v4, p2

    .line 254
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMax()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    .line 255
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMean()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v4, p2

    .line 256
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getStdDev()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v4, p2

    .line 257
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMedian()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v4, p2

    .line 258
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get75thPercentile()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v4, p2

    .line 259
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get95thPercentile()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v4, p2

    .line 260
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get98thPercentile()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v4, p2

    .line 261
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get99thPercentile()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0xa

    aput-object p1, v4, p2

    .line 262
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get999thPercentile()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v4, p2

    .line 248
    invoke-virtual {v1, v2, v3, v4}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logMeter(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    const-string/jumbo v2, "type=METER, name={}, count={}, mean_rate={}, m1={}, m5={}, m15={}, rate_unit={}"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 237
    invoke-direct {p0, v5}, Lcom/codahale/metrics/Slf4jReporter;->prefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    .line 238
    invoke-virtual {p2}, Lcom/codahale/metrics/Meter;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    .line 239
    invoke-virtual {p2}, Lcom/codahale/metrics/Meter;->getMeanRate()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 240
    invoke-virtual {p2}, Lcom/codahale/metrics/Meter;->getOneMinuteRate()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 241
    invoke-virtual {p2}, Lcom/codahale/metrics/Meter;->getFiveMinuteRate()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 242
    invoke-virtual {p2}, Lcom/codahale/metrics/Meter;->getFifteenMinuteRate()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v3, p2

    .line 243
    invoke-virtual {p0}, Lcom/codahale/metrics/Slf4jReporter;->getRateUnit()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v3, p2

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logTimer(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V
    .locals 8

    .line 209
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v2, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    const-string/jumbo v3, "type=TIMER, name={}, count={}, min={}, max={}, mean={}, stddev={}, median={}, p75={}, p95={}, p98={}, p99={}, p999={}, mean_rate={}, m1={}, m5={}, m15={}, rate_unit={}, duration_unit={}"

    const/16 v4, 0x12

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 214
    invoke-direct {p0, v6}, Lcom/codahale/metrics/Slf4jReporter;->prefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    .line 215
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    .line 216
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMin()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 217
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMax()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x3

    aput-object p1, v4, v5

    .line 218
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMean()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x4

    aput-object p1, v4, v5

    .line 219
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getStdDev()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x5

    aput-object p1, v4, v5

    .line 220
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMedian()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x6

    aput-object p1, v4, v5

    .line 221
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get75thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v5, 0x7

    aput-object p1, v4, v5

    .line 222
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get95thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v5, 0x8

    aput-object p1, v4, v5

    .line 223
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get98thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v5, 0x9

    aput-object p1, v4, v5

    .line 224
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get99thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v5, 0xa

    aput-object p1, v4, v5

    .line 225
    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get999thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0xb

    aput-object p1, v4, v0

    .line 226
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getMeanRate()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0xc

    aput-object p1, v4, v0

    .line 227
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getOneMinuteRate()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0xd

    aput-object p1, v4, v0

    .line 228
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getFiveMinuteRate()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0xe

    aput-object p1, v4, v0

    .line 229
    invoke-virtual {p2}, Lcom/codahale/metrics/Timer;->getFifteenMinuteRate()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/codahale/metrics/Slf4jReporter;->convertRate(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 p2, 0xf

    aput-object p1, v4, p2

    .line 230
    invoke-virtual {p0}, Lcom/codahale/metrics/Slf4jReporter;->getRateUnit()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    aput-object p1, v4, p2

    .line 231
    invoke-virtual {p0}, Lcom/codahale/metrics/Slf4jReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11

    aput-object p1, v4, p2

    .line 210
    invoke-virtual {v1, v2, v3, v4}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs prefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter;->prefix:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getRateUnit()Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "events/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/codahale/metrics/ScheduledReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Counter;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Histogram;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Meter;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Timer;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter;->loggerProxy:Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter;->marker:Lorg/slf4j/Marker;

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->isEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Gauge;

    invoke-direct {p0, v1, v0}, Lcom/codahale/metrics/Slf4jReporter;->logGauge(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {p2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Counter;

    invoke-direct {p0, v0, p2}, Lcom/codahale/metrics/Slf4jReporter;->logCounter(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {p3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Histogram;

    invoke-direct {p0, p3, p2}, Lcom/codahale/metrics/Slf4jReporter;->logHistogram(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V

    goto :goto_2

    .line 198
    :cond_2
    invoke-interface {p4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Meter;

    invoke-direct {p0, p3, p2}, Lcom/codahale/metrics/Slf4jReporter;->logMeter(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V

    goto :goto_3

    .line 202
    :cond_3
    invoke-interface {p5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Timer;

    invoke-direct {p0, p3, p2}, Lcom/codahale/metrics/Slf4jReporter;->logTimer(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V

    goto :goto_4

    :cond_4
    return-void
.end method
