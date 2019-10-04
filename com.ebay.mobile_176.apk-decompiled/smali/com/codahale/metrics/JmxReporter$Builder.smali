.class public Lcom/codahale/metrics/JmxReporter$Builder;
.super Ljava/lang/Object;
.source "JmxReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private durationUnit:Ljava/util/concurrent/TimeUnit;

.field private filter:Lcom/codahale/metrics/MetricFilter;

.field private mBeanServer:Ljavax/management/MBeanServer;

.field private objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

.field private rateUnit:Ljava/util/concurrent/TimeUnit;

.field private final registry:Lcom/codahale/metrics/MetricRegistry;

.field private specificDurationUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private specificRateUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/MetricRegistry;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    iput-object v0, p0, Lcom/codahale/metrics/JmxReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 46
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    .line 47
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    .line 48
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    const-string p1, "metrics"

    .line 49
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->domain:Ljava/lang/String;

    .line 50
    new-instance p1, Lcom/codahale/metrics/DefaultObjectNameFactory;

    invoke-direct {p1}, Lcom/codahale/metrics/DefaultObjectNameFactory;-><init>()V

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificDurationUnits:Ljava/util/Map;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificRateUnits:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/JmxReporter$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$Builder;-><init>(Lcom/codahale/metrics/MetricRegistry;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/codahale/metrics/JmxReporter;
    .locals 9

    .line 141
    new-instance v5, Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;

    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificRateUnits:Ljava/util/Map;

    iget-object v3, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificDurationUnits:Ljava/util/Map;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;-><init>(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$Builder;->mBeanServer:Ljavax/management/MBeanServer;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iput-object v0, p0, Lcom/codahale/metrics/JmxReporter$Builder;->mBeanServer:Ljavax/management/MBeanServer;

    .line 145
    :cond_0
    new-instance v8, Lcom/codahale/metrics/JmxReporter;

    iget-object v1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->mBeanServer:Ljavax/management/MBeanServer;

    iget-object v2, p0, Lcom/codahale/metrics/JmxReporter$Builder;->domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/codahale/metrics/JmxReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v4, p0, Lcom/codahale/metrics/JmxReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    iget-object v6, p0, Lcom/codahale/metrics/JmxReporter$Builder;->objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/codahale/metrics/JmxReporter;-><init>(Ljavax/management/MBeanServer;Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;Lcom/codahale/metrics/ObjectNameFactory;Lcom/codahale/metrics/JmxReporter$1;)V

    return-object v8
.end method

.method public convertDurationsTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public convertRatesTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public createsObjectNamesWith(Lcom/codahale/metrics/ObjectNameFactory;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

    return-object p0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null objectNameFactory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public filter(Lcom/codahale/metrics/MetricFilter;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    return-object p0
.end method

.method public inDomain(Ljava/lang/String;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public registerWith(Ljavax/management/MBeanServer;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->mBeanServer:Ljavax/management/MBeanServer;

    return-object p0
.end method

.method public specificDurationUnits(Ljava/util/Map;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lcom/codahale/metrics/JmxReporter$Builder;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificDurationUnits:Ljava/util/Map;

    return-object p0
.end method

.method public specificRateUnits(Ljava/util/Map;)Lcom/codahale/metrics/JmxReporter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lcom/codahale/metrics/JmxReporter$Builder;"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$Builder;->specificRateUnits:Ljava/util/Map;

    return-object p0
.end method
