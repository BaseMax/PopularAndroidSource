.class public Lcom/codahale/metrics/ConsoleReporter;
.super Lcom/codahale/metrics/ScheduledReporter;
.source "ConsoleReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/ConsoleReporter$Builder;
    }
.end annotation


# instance fields
.field private final clock:Lcom/codahale/metrics/Clock;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final locale:Ljava/util/Locale;

.field private final output:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/MetricRegistry;Ljava/io/PrintStream;Ljava/util/Locale;Lcom/codahale/metrics/Clock;Ljava/util/TimeZone;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;)V
    .locals 6

    const-string v2, "console-reporter"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p8

    move-object v4, p6

    move-object v5, p7

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/codahale/metrics/ScheduledReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)V

    .line 158
    iput-object p2, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    .line 159
    iput-object p3, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    .line 160
    iput-object p4, p0, Lcom/codahale/metrics/ConsoleReporter;->clock:Lcom/codahale/metrics/Clock;

    const/4 p1, 0x3

    const/4 p2, 0x2

    .line 161
    invoke-static {p1, p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->dateFormat:Ljava/text/DateFormat;

    .line 164
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/MetricRegistry;Ljava/io/PrintStream;Ljava/util/Locale;Lcom/codahale/metrics/Clock;Ljava/util/TimeZone;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/ConsoleReporter$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p8}, Lcom/codahale/metrics/ConsoleReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Ljava/io/PrintStream;Ljava/util/Locale;Lcom/codahale/metrics/Clock;Ljava/util/TimeZone;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;)V

    return-void
.end method

.method public static forRegistry(Lcom/codahale/metrics/MetricRegistry;)Lcom/codahale/metrics/ConsoleReporter$Builder;
    .locals 2

    .line 19
    new-instance v0, Lcom/codahale/metrics/ConsoleReporter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codahale/metrics/ConsoleReporter$Builder;-><init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/ConsoleReporter$1;)V

    return-object v0
.end method

.method private printCounter(Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Counter;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "             count = %d%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Counter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Counter;->getCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private printGauge(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "             value = %s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Gauge;

    invoke-interface {p1}, Lcom/codahale/metrics/Gauge;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private printHistogram(Lcom/codahale/metrics/Histogram;)V
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "             count = %d%n"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Histogram;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 244
    invoke-virtual {p1}, Lcom/codahale/metrics/Histogram;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "               min = %d%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->getMin()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 246
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "               max = %d%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->getMax()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 247
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              mean = %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->getMean()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 248
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            stddev = %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->getStdDev()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 249
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            median = %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->getMedian()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 250
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              75%% <= %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->get75thPercentile()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 251
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              95%% <= %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->get95thPercentile()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 252
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              98%% <= %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->get98thPercentile()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 253
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              99%% <= %2.2f%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->get99thPercentile()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 254
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            99.9%% <= %2.2f%n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Snapshot;->get999thPercentile()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private printMeter(Lcom/codahale/metrics/Meter;)V
    .locals 9

    .line 227
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "             count = %d%n"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 228
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "         mean rate = %2.2f events/%s%n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->getMeanRate()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 229
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "     1-minute rate = %2.2f events/%s%n"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->getOneMinuteRate()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 230
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "     5-minute rate = %2.2f events/%s%n"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->getFiveMinuteRate()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 231
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "    15-minute rate = %2.2f events/%s%n"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Meter;->getFifteenMinuteRate()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private printTimer(Lcom/codahale/metrics/Timer;)V
    .locals 10

    .line 258
    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getSnapshot()Lcom/codahale/metrics/Snapshot;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v3, "             count = %d%n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 260
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v3, "         mean rate = %2.2f calls/%s%n"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getMeanRate()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-virtual {v1, v2, v3, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 261
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v3, "     1-minute rate = %2.2f calls/%s%n"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getOneMinuteRate()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-virtual {v1, v2, v3, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 262
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v3, "     5-minute rate = %2.2f calls/%s%n"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getFiveMinuteRate()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-virtual {v1, v2, v3, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 263
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v3, "    15-minute rate = %2.2f calls/%s%n"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->getFifteenMinuteRate()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertRate(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getRateUnit()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-virtual {v1, v2, v3, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 265
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "               min = %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMin()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 266
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "               max = %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMax()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 267
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              mean = %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMean()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 268
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            stddev = %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getStdDev()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 269
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            median = %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->getMedian()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 270
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              75%% <= %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get75thPercentile()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 271
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              95%% <= %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get95thPercentile()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 272
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              98%% <= %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get98thPercentile()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 273
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "              99%% <= %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get99thPercentile()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 274
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->locale:Ljava/util/Locale;

    const-string v2, "            99.9%% <= %2.2f %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codahale/metrics/Snapshot;->get999thPercentile()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/codahale/metrics/ConsoleReporter;->convertDuration(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p0}, Lcom/codahale/metrics/ConsoleReporter;->getDurationUnit()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private printWithBanner(Ljava/lang/String;C)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    const/4 v0, 0x0

    .line 280
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x50

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method


# virtual methods
.method public report(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 4
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

    .line 173
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v2}, Lcom/codahale/metrics/Clock;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 175
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 177
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    const/16 v1, 0x2d

    if-nez v0, :cond_1

    const-string v0, "-- Gauges"

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 179
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

    .line 180
    iget-object v2, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/codahale/metrics/ConsoleReporter;->printGauge(Ljava/util/Map$Entry;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 186
    :cond_1
    invoke-interface {p2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "-- Counters"

    .line 187
    invoke-direct {p0, p1, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 188
    invoke-interface {p2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 189
    iget-object v0, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/codahale/metrics/ConsoleReporter;->printCounter(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 195
    :cond_3
    invoke-interface {p3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "-- Histograms"

    .line 196
    invoke-direct {p0, p1, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 197
    invoke-interface {p3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 198
    iget-object p3, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Histogram;

    invoke-direct {p0, p2}, Lcom/codahale/metrics/ConsoleReporter;->printHistogram(Lcom/codahale/metrics/Histogram;)V

    goto :goto_2

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 204
    :cond_5
    invoke-interface {p4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "-- Meters"

    .line 205
    invoke-direct {p0, p1, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 206
    invoke-interface {p4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 207
    iget-object p3, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Meter;

    invoke-direct {p0, p2}, Lcom/codahale/metrics/ConsoleReporter;->printMeter(Lcom/codahale/metrics/Meter;)V

    goto :goto_3

    .line 210
    :cond_6
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 213
    :cond_7
    invoke-interface {p5}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "-- Timers"

    .line 214
    invoke-direct {p0, p1, v1}, Lcom/codahale/metrics/ConsoleReporter;->printWithBanner(Ljava/lang/String;C)V

    .line 215
    invoke-interface {p5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 216
    iget-object p3, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codahale/metrics/Timer;

    invoke-direct {p0, p2}, Lcom/codahale/metrics/ConsoleReporter;->printTimer(Lcom/codahale/metrics/Timer;)V

    goto :goto_4

    .line 219
    :cond_8
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 222
    :cond_9
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 223
    iget-object p1, p0, Lcom/codahale/metrics/ConsoleReporter;->output:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method
