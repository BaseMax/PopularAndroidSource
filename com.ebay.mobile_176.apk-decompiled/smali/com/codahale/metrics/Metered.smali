.class public interface abstract Lcom/codahale/metrics/Metered;
.super Ljava/lang/Object;
.source "Metered.java"

# interfaces
.implements Lcom/codahale/metrics/Counting;
.implements Lcom/codahale/metrics/Metric;


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
