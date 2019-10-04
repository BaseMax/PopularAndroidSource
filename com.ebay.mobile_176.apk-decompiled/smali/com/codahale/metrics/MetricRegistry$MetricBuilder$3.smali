.class final Lcom/codahale/metrics/MetricRegistry$MetricBuilder$3;
.super Ljava/lang/Object;
.source "MetricRegistry.java"

# interfaces
.implements Lcom/codahale/metrics/MetricRegistry$MetricBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
        "Lcom/codahale/metrics/Meter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInstance(Lcom/codahale/metrics/Metric;)Z
    .locals 1

    .line 435
    const-class v0, Lcom/codahale/metrics/Meter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public newMetric()Lcom/codahale/metrics/Meter;
    .locals 1

    .line 430
    new-instance v0, Lcom/codahale/metrics/Meter;

    invoke-direct {v0}, Lcom/codahale/metrics/Meter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMetric()Lcom/codahale/metrics/Metric;
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$3;->newMetric()Lcom/codahale/metrics/Meter;

    move-result-object v0

    return-object v0
.end method
