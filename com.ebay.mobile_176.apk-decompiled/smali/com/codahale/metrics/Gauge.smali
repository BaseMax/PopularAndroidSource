.class public interface abstract Lcom/codahale/metrics/Gauge;
.super Ljava/lang/Object;
.source "Gauge.java"

# interfaces
.implements Lcom/codahale/metrics/Metric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Metric;"
    }
.end annotation


# virtual methods
.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
