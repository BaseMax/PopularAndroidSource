.class public Lcom/codahale/metrics/SharedMetricRegistries;
.super Ljava/lang/Object;
.source "SharedMetricRegistries.java"


# static fields
.field private static final REGISTRIES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/MetricRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry;)Lcom/codahale/metrics/MetricRegistry;
    .locals 1

    .line 29
    sget-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codahale/metrics/MetricRegistry;

    return-object p0
.end method

.method public static clear()V
    .locals 1

    .line 17
    sget-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public static getOrCreate(Ljava/lang/String;)Lcom/codahale/metrics/MetricRegistry;
    .locals 1

    .line 33
    sget-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codahale/metrics/MetricRegistry;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/codahale/metrics/MetricRegistry;

    invoke-direct {v0}, Lcom/codahale/metrics/MetricRegistry;-><init>()V

    .line 36
    invoke-static {p0, v0}, Lcom/codahale/metrics/SharedMetricRegistries;->add(Ljava/lang/String;Lcom/codahale/metrics/MetricRegistry;)Lcom/codahale/metrics/MetricRegistry;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static names()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/codahale/metrics/SharedMetricRegistries;->REGISTRIES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
