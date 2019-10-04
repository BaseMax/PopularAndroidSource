.class Lcom/codahale/metrics/JmxReporter$JmxListener;
.super Ljava/lang/Object;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/MetricRegistryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JmxListener"
.end annotation


# instance fields
.field private final filter:Lcom/codahale/metrics/MetricFilter;

.field private final mBeanServer:Ljavax/management/MBeanServer;

.field private final name:Ljava/lang/String;

.field private final objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

.field private final registered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/management/ObjectName;",
            "Ljavax/management/ObjectName;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUnits:Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;


# direct methods
.method private constructor <init>(Ljavax/management/MBeanServer;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;Lcom/codahale/metrics/ObjectNameFactory;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->mBeanServer:Ljavax/management/MBeanServer;

    .line 497
    iput-object p2, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->name:Ljava/lang/String;

    .line 498
    iput-object p3, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 499
    iput-object p4, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->timeUnits:Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;

    .line 500
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    .line 501
    iput-object p5, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/management/MBeanServer;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;Lcom/codahale/metrics/ObjectNameFactory;Lcom/codahale/metrics/JmxReporter$1;)V
    .locals 0

    .line 487
    invoke-direct/range {p0 .. p5}, Lcom/codahale/metrics/JmxReporter$JmxListener;-><init>(Ljavax/management/MBeanServer;Ljava/lang/String;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;Lcom/codahale/metrics/ObjectNameFactory;)V

    return-void
.end method

.method private createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->objectNameFactory:Lcom/codahale/metrics/ObjectNameFactory;

    iget-object v1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->name:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/codahale/metrics/ObjectNameFactory;->createName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    return-object p1
.end method

.method private registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/JMException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->mBeanServer:Ljavax/management/MBeanServer;

    invoke-interface {v0, p1, p2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private unregisterMBean(Ljavax/management/ObjectName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceNotFoundException;,
            Ljavax/management/MBeanRegistrationException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/ObjectName;

    if-eqz v0, :cond_0

    .line 519
    iget-object p1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->mBeanServer:Ljavax/management/MBeanServer;

    invoke-interface {p1, v0}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->mBeanServer:Ljavax/management/MBeanServer;

    invoke-interface {v0, p1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCounterAdded(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V
    .locals 2

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-interface {v0, p1, p2}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "counters"

    .line 555
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 556
    new-instance v0, Lcom/codahale/metrics/JmxReporter$JmxCounter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/codahale/metrics/JmxReporter$JmxCounter;-><init>(Lcom/codahale/metrics/Counter;Ljavax/management/ObjectName;Lcom/codahale/metrics/JmxReporter$1;)V

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 561
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register counter"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 559
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register counter"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCounterRemoved(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "counters"

    .line 568
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 569
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 573
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister counter"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 571
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister counter"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onGaugeAdded(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge<",
            "*>;)V"
        }
    .end annotation

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-interface {v0, p1, p2}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gauges"

    .line 529
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 530
    new-instance v0, Lcom/codahale/metrics/JmxReporter$JmxGauge;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/codahale/metrics/JmxReporter$JmxGauge;-><init>(Lcom/codahale/metrics/Gauge;Ljavax/management/ObjectName;Lcom/codahale/metrics/JmxReporter$1;)V

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 535
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register gauge"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 533
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register gauge"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onGaugeRemoved(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "gauges"

    .line 542
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 543
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister gauge"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 545
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister gauge"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onHistogramAdded(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V
    .locals 2

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-interface {v0, p1, p2}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "histograms"

    .line 581
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 582
    new-instance v0, Lcom/codahale/metrics/JmxReporter$JmxHistogram;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/codahale/metrics/JmxReporter$JmxHistogram;-><init>(Lcom/codahale/metrics/Histogram;Ljavax/management/ObjectName;Lcom/codahale/metrics/JmxReporter$1;)V

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 587
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register histogram"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 585
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register histogram"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onHistogramRemoved(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "histograms"

    .line 594
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 595
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 599
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister histogram"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 597
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister histogram"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onMeterAdded(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V
    .locals 3

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-interface {v0, p1, p2}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "meters"

    .line 607
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/codahale/metrics/JmxReporter$JmxMeter;

    iget-object v2, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->timeUnits:Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;

    invoke-virtual {v2, p1}, Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;->rateFor(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, p1, v2}, Lcom/codahale/metrics/JmxReporter$JmxMeter;-><init>(Lcom/codahale/metrics/Metered;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/JmxReporter$1;)V

    invoke-direct {p0, v1, v0}, Lcom/codahale/metrics/JmxReporter$JmxListener;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 613
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register meter"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 611
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register meter"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMeterRemoved(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "meters"

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 621
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 625
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister meter"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 623
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister meter"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTimerAdded(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V
    .locals 8

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->filter:Lcom/codahale/metrics/MetricFilter;

    invoke-interface {v0, p1, p2}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "timers"

    .line 633
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v0

    .line 634
    new-instance v7, Lcom/codahale/metrics/JmxReporter$JmxTimer;

    iget-object v1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->timeUnits:Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;

    invoke-virtual {v1, p1}, Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;->rateFor(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    iget-object v1, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->timeUnits:Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;

    invoke-virtual {v1, p1}, Lcom/codahale/metrics/JmxReporter$MetricTimeUnits;->durationFor(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/codahale/metrics/JmxReporter$JmxTimer;-><init>(Lcom/codahale/metrics/Timer;Ljavax/management/ObjectName;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/JmxReporter$1;)V

    invoke-direct {p0, v7, v0}, Lcom/codahale/metrics/JmxReporter$JmxListener;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 639
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register timer"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 637
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Unable to register timer"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTimerRemoved(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "timers"

    .line 646
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->createName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object p1

    .line 647
    invoke-direct {p0, p1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 651
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister timer"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 649
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unable to unregister timer"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method unregisterAll()V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/management/ObjectName;

    .line 662
    :try_start_0
    invoke-direct {p0, v1}, Lcom/codahale/metrics/JmxReporter$JmxListener;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 666
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Unable to unregister metric"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 664
    invoke-static {}, Lcom/codahale/metrics/JmxReporter;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Unable to unregister metric"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$JmxListener;->registered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
