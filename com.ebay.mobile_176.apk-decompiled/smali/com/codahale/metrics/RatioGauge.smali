.class public abstract Lcom/codahale/metrics/RatioGauge;
.super Ljava/lang/Object;
.source "RatioGauge.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codahale/metrics/RatioGauge$Ratio;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getRatio()Lcom/codahale/metrics/RatioGauge$Ratio;
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/codahale/metrics/RatioGauge;->getRatio()Lcom/codahale/metrics/RatioGauge$Ratio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/RatioGauge$Ratio;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/codahale/metrics/RatioGauge;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
