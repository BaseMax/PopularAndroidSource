.class public Lcom/codahale/metrics/MetricRegistry;
.super Ljava/lang/Object;
.source "MetricRegistry.java"

# interfaces
.implements Lcom/codahale/metrics/MetricSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codahale/metrics/MetricRegistryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final metrics:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/codahale/metrics/MetricRegistry;->buildMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->listeners:Ljava/util/List;

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/codahale/metrics/Metric;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codahale/metrics/Metric;

    .line 332
    invoke-interface {p2, v3, v4}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codahale/metrics/Metric;

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method private getOrAdd(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry$MetricBuilder;)Lcom/codahale/metrics/Metric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/codahale/metrics/Metric;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Metric;

    .line 313
    invoke-interface {p2, v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->isInstance(Lcom/codahale/metrics/Metric;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 317
    :try_start_0
    invoke-interface {p2}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->newMetric()Lcom/codahale/metrics/Metric;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Metric;

    .line 320
    invoke-interface {p2, v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->isInstance(Lcom/codahale/metrics/Metric;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 325
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already used for a different type of metric"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static varargs name(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {v0, p0}, Lcom/codahale/metrics/MetricRegistry;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 23
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 24
    invoke-static {v0, v2}, Lcom/codahale/metrics/MetricRegistry;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyListenerOfAddedMetric(Lcom/codahale/metrics/MetricRegistryListener;Lcom/codahale/metrics/Metric;Ljava/lang/String;)V
    .locals 1

    .line 347
    instance-of v0, p2, Lcom/codahale/metrics/Gauge;

    if-eqz v0, :cond_0

    .line 348
    check-cast p2, Lcom/codahale/metrics/Gauge;

    invoke-interface {p1, p3, p2}, Lcom/codahale/metrics/MetricRegistryListener;->onGaugeAdded(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V

    goto :goto_0

    .line 349
    :cond_0
    instance-of v0, p2, Lcom/codahale/metrics/Counter;

    if-eqz v0, :cond_1

    .line 350
    check-cast p2, Lcom/codahale/metrics/Counter;

    invoke-interface {p1, p3, p2}, Lcom/codahale/metrics/MetricRegistryListener;->onCounterAdded(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V

    goto :goto_0

    .line 351
    :cond_1
    instance-of v0, p2, Lcom/codahale/metrics/Histogram;

    if-eqz v0, :cond_2

    .line 352
    check-cast p2, Lcom/codahale/metrics/Histogram;

    invoke-interface {p1, p3, p2}, Lcom/codahale/metrics/MetricRegistryListener;->onHistogramAdded(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V

    goto :goto_0

    .line 353
    :cond_2
    instance-of v0, p2, Lcom/codahale/metrics/Meter;

    if-eqz v0, :cond_3

    .line 354
    check-cast p2, Lcom/codahale/metrics/Meter;

    invoke-interface {p1, p3, p2}, Lcom/codahale/metrics/MetricRegistryListener;->onMeterAdded(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V

    goto :goto_0

    .line 355
    :cond_3
    instance-of v0, p2, Lcom/codahale/metrics/Timer;

    if-eqz v0, :cond_4

    .line 356
    check-cast p2, Lcom/codahale/metrics/Timer;

    invoke-interface {p1, p3, p2}, Lcom/codahale/metrics/MetricRegistryListener;->onTimerAdded(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V

    :goto_0
    return-void

    .line 358
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown metric type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyListenerOfRemovedMetric(Ljava/lang/String;Lcom/codahale/metrics/Metric;Lcom/codahale/metrics/MetricRegistryListener;)V
    .locals 1

    .line 369
    instance-of v0, p2, Lcom/codahale/metrics/Gauge;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {p3, p1}, Lcom/codahale/metrics/MetricRegistryListener;->onGaugeRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_0
    instance-of v0, p2, Lcom/codahale/metrics/Counter;

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {p3, p1}, Lcom/codahale/metrics/MetricRegistryListener;->onCounterRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_1
    instance-of v0, p2, Lcom/codahale/metrics/Histogram;

    if-eqz v0, :cond_2

    .line 374
    invoke-interface {p3, p1}, Lcom/codahale/metrics/MetricRegistryListener;->onHistogramRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    instance-of v0, p2, Lcom/codahale/metrics/Meter;

    if-eqz v0, :cond_3

    .line 376
    invoke-interface {p3, p1}, Lcom/codahale/metrics/MetricRegistryListener;->onMeterRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_3
    instance-of v0, p2, Lcom/codahale/metrics/Timer;

    if-eqz v0, :cond_4

    .line 378
    invoke-interface {p3, p1}, Lcom/codahale/metrics/MetricRegistryListener;->onTimerRemoved(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 380
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown metric type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMetricAdded(Ljava/lang/String;Lcom/codahale/metrics/Metric;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codahale/metrics/MetricRegistryListener;

    .line 342
    invoke-direct {p0, v1, p2, p1}, Lcom/codahale/metrics/MetricRegistry;->notifyListenerOfAddedMetric(Lcom/codahale/metrics/MetricRegistryListener;Lcom/codahale/metrics/Metric;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMetricRemoved(Ljava/lang/String;Lcom/codahale/metrics/Metric;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codahale/metrics/MetricRegistryListener;

    .line 364
    invoke-direct {p0, p1, p2, v1}, Lcom/codahale/metrics/MetricRegistry;->notifyListenerOfRemovedMetric(Ljava/lang/String;Lcom/codahale/metrics/Metric;Lcom/codahale/metrics/MetricRegistryListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerAll(Ljava/lang/String;Lcom/codahale/metrics/MetricSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 385
    invoke-interface {p2}, Lcom/codahale/metrics/MetricSet;->getMetrics()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/codahale/metrics/MetricSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 387
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/MetricSet;

    invoke-direct {p0, v1, v0}, Lcom/codahale/metrics/MetricRegistry;->registerAll(Ljava/lang/String;Lcom/codahale/metrics/MetricSet;)V

    goto :goto_0

    .line 389
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Metric;

    invoke-virtual {p0, v1, v0}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/codahale/metrics/MetricRegistryListener;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codahale/metrics/Metric;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lcom/codahale/metrics/MetricRegistry;->notifyListenerOfAddedMetric(Lcom/codahale/metrics/MetricRegistryListener;Lcom/codahale/metrics/Metric;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected buildMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Metric;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public counter(Ljava/lang/String;)Lcom/codahale/metrics/Counter;
    .locals 1

    .line 115
    sget-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->COUNTERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->getOrAdd(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry$MetricBuilder;)Lcom/codahale/metrics/Metric;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Counter;

    return-object p1
.end method

.method public getCounters()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Counter;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/MetricRegistry;->getCounters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getCounters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Counter;",
            ">;"
        }
    .end annotation

    .line 249
    const-class v0, Lcom/codahale/metrics/Counter;

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public getGauges()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/MetricRegistry;->getGauges(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getGauges(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge;",
            ">;"
        }
    .end annotation

    .line 229
    const-class v0, Lcom/codahale/metrics/Gauge;

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public getHistograms()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Histogram;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/MetricRegistry;->getHistograms(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getHistograms(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Histogram;",
            ">;"
        }
    .end annotation

    .line 269
    const-class v0, Lcom/codahale/metrics/Histogram;

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public getMeters()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Meter;",
            ">;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/MetricRegistry;->getMeters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getMeters(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Meter;",
            ">;"
        }
    .end annotation

    .line 288
    const-class v0, Lcom/codahale/metrics/Meter;

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public getMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Metric;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getTimers()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Timer;",
            ">;"
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/MetricRegistry;->getTimers(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getTimers(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/MetricFilter;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Timer;",
            ">;"
        }
    .end annotation

    .line 307
    const-class v0, Lcom/codahale/metrics/Timer;

    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->getMetrics(Ljava/lang/Class;Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public histogram(Ljava/lang/String;)Lcom/codahale/metrics/Histogram;
    .locals 1

    .line 126
    sget-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->HISTOGRAMS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->getOrAdd(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry$MetricBuilder;)Lcom/codahale/metrics/Metric;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Histogram;

    return-object p1
.end method

.method public meter(Ljava/lang/String;)Lcom/codahale/metrics/Meter;
    .locals 1

    .line 137
    sget-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->METERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->getOrAdd(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry$MetricBuilder;)Lcom/codahale/metrics/Metric;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Meter;

    return-object p1
.end method

.method public register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/codahale/metrics/Metric;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    instance-of v0, p2, Lcom/codahale/metrics/MetricSet;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p2

    check-cast v0, Lcom/codahale/metrics/MetricSet;

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->registerAll(Ljava/lang/String;Lcom/codahale/metrics/MetricSet;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Metric;

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/codahale/metrics/MetricRegistry;->onMetricAdded(Ljava/lang/String;Lcom/codahale/metrics/Metric;)V

    :goto_0
    return-object p2

    .line 91
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A metric named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public registerAll(Lcom/codahale/metrics/MetricSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/codahale/metrics/MetricRegistry;->registerAll(Ljava/lang/String;Lcom/codahale/metrics/MetricSet;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/Metric;

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->onMetricRemoved(Ljava/lang/String;Lcom/codahale/metrics/Metric;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeListener(Lcom/codahale/metrics/MetricRegistryListener;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMatching(Lcom/codahale/metrics/MetricFilter;)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/codahale/metrics/MetricRegistry;->metrics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codahale/metrics/Metric;

    invoke-interface {p1, v2, v3}, Lcom/codahale/metrics/MetricFilter;->matches(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public timer(Ljava/lang/String;)Lcom/codahale/metrics/Timer;
    .locals 1

    .line 148
    sget-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->TIMERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    invoke-direct {p0, p1, v0}, Lcom/codahale/metrics/MetricRegistry;->getOrAdd(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry$MetricBuilder;)Lcom/codahale/metrics/Metric;

    move-result-object p1

    check-cast p1, Lcom/codahale/metrics/Timer;

    return-object p1
.end method
