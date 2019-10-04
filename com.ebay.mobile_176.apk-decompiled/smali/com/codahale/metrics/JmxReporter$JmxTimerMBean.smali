.class public interface abstract Lcom/codahale/metrics/JmxReporter$JmxTimerMBean;
.super Ljava/lang/Object;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/JmxReporter$JmxMeterMBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JmxTimerMBean"
.end annotation


# virtual methods
.method public abstract get50thPercentile()D
.end method

.method public abstract get75thPercentile()D
.end method

.method public abstract get95thPercentile()D
.end method

.method public abstract get98thPercentile()D
.end method

.method public abstract get999thPercentile()D
.end method

.method public abstract get99thPercentile()D
.end method

.method public abstract getDurationUnit()Ljava/lang/String;
.end method

.method public abstract getMax()D
.end method

.method public abstract getMean()D
.end method

.method public abstract getMin()D
.end method

.method public abstract getStdDev()D
.end method

.method public abstract values()[J
.end method
