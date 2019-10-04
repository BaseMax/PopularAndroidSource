.class public abstract Lcom/codahale/metrics/MetricRegistryListener$Base;
.super Ljava/lang/Object;
.source "MetricRegistryListener.java"

# interfaces
.implements Lcom/codahale/metrics/MetricRegistryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/MetricRegistryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCounterAdded(Ljava/lang/String;Lcom/codahale/metrics/Counter;)V
    .locals 0

    return-void
.end method

.method public onCounterRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGaugeAdded(Ljava/lang/String;Lcom/codahale/metrics/Gauge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codahale/metrics/Gauge<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onGaugeRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHistogramAdded(Ljava/lang/String;Lcom/codahale/metrics/Histogram;)V
    .locals 0

    return-void
.end method

.method public onHistogramRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMeterAdded(Ljava/lang/String;Lcom/codahale/metrics/Meter;)V
    .locals 0

    return-void
.end method

.method public onMeterRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTimerAdded(Ljava/lang/String;Lcom/codahale/metrics/Timer;)V
    .locals 0

    return-void
.end method

.method public onTimerRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
