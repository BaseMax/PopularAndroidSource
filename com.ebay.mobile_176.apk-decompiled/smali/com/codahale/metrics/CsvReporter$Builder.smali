.class public Lcom/codahale/metrics/CsvReporter$Builder;
.super Ljava/lang/Object;
.source "CsvReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/CsvReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clock:Lcom/codahale/metrics/Clock;

.field private durationUnit:Ljava/util/concurrent/TimeUnit;

.field private filter:Lcom/codahale/metrics/MetricFilter;

.field private locale:Ljava/util/Locale;

.field private rateUnit:Ljava/util/concurrent/TimeUnit;

.field private final registry:Lcom/codahale/metrics/MetricRegistry;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/MetricRegistry;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->locale:Ljava/util/Locale;

    .line 42
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    .line 43
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-static {}, Lcom/codahale/metrics/Clock;->defaultClock()Lcom/codahale/metrics/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->clock:Lcom/codahale/metrics/Clock;

    .line 45
    sget-object p1, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/CsvReporter$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/codahale/metrics/CsvReporter$Builder;-><init>(Lcom/codahale/metrics/MetricRegistry;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/io/File;)Lcom/codahale/metrics/CsvReporter;
    .locals 10

    .line 111
    new-instance v9, Lcom/codahale/metrics/CsvReporter;

    iget-object v1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v3, p0, Lcom/codahale/metrics/CsvReporter$Builder;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/codahale/metrics/CsvReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/codahale/metrics/CsvReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/codahale/metrics/CsvReporter$Builder;->clock:Lcom/codahale/metrics/Clock;

    iget-object v7, p0, Lcom/codahale/metrics/CsvReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/codahale/metrics/CsvReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Ljava/io/File;Ljava/util/Locale;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/Clock;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/CsvReporter$1;)V

    return-object v9
.end method

.method public convertDurationsTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/CsvReporter$Builder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public convertRatesTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/CsvReporter$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public filter(Lcom/codahale/metrics/MetricFilter;)Lcom/codahale/metrics/CsvReporter$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    return-object p0
.end method

.method public formatFor(Ljava/util/Locale;)Lcom/codahale/metrics/CsvReporter$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public withClock(Lcom/codahale/metrics/Clock;)Lcom/codahale/metrics/CsvReporter$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/codahale/metrics/CsvReporter$Builder;->clock:Lcom/codahale/metrics/Clock;

    return-object p0
.end method
