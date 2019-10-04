.class public interface abstract Lcom/codahale/metrics/MetricRegistryListener;
.super Ljava/lang/Object;
.source "MetricRegistryListener.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/MetricRegistryListener$Base;
    }
.end annotation


# virtual methods
.method public abstract onCounterAdded(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V
.end method

.method public abstract onCounterRemoved(Ljava/lang/String;)V
.end method

.method public abstract onGaugeAdded(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onGaugeRemoved(Ljava/lang/String;)V
.end method

.method public abstract onHistogramAdded(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V
.end method

.method public abstract onHistogramRemoved(Ljava/lang/String;)V
.end method

.method public abstract onMeterAdded(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V
.end method

.method public abstract onMeterRemoved(Ljava/lang/String;)V
.end method

.method public abstract onTimerAdded(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V
.end method

.method public abstract onTimerRemoved(Ljava/lang/String;)V
.end method
