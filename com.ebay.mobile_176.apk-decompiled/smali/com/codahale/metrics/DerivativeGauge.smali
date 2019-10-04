.class public abstract Lcom/codahale/metrics/DerivativeGauge;
.super Ljava/lang/Object;
.source "DerivativeGauge.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final base:Lcom/codahale/metrics/Gauge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codahale/metrics/Gauge<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/codahale/metrics/Gauge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codahale/metrics/Gauge<",
            "TF;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/codahale/metrics/DerivativeGauge;->base:Lcom/codahale/metrics/Gauge;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codahale/metrics/DerivativeGauge;->base:Lcom/codahale/metrics/Gauge;

    invoke-interface {v0}, Lcom/codahale/metrics/Gauge;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codahale/metrics/DerivativeGauge;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation
.end method
