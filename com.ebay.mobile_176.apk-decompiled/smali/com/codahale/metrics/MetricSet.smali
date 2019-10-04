.class public interface abstract Lcom/codahale/metrics/MetricSet;
.super Ljava/lang/Object;
.source "MetricSet.java"

# interfaces
.implements Lcom/codahale/metrics/Metric;


# virtual methods
.method public abstract getMetrics()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Metric;",
            ">;"
        }
    .end annotation
.end method
