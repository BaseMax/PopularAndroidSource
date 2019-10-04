.class public interface abstract Lcom/codahale/metrics/JmxReporter$JmxMeterMBean;
.super Ljava/lang/Object;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/JmxReporter$MetricMBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JmxMeterMBean"
.end annotation


# virtual methods
.method public abstract getCount()J
.end method

.method public abstract getFifteenMinuteRate()D
.end method

.method public abstract getFiveMinuteRate()D
.end method

.method public abstract getMeanRate()D
.end method

.method public abstract getOneMinuteRate()D
.end method

.method public abstract getRateUnit()Ljava/lang/String;
.end method
