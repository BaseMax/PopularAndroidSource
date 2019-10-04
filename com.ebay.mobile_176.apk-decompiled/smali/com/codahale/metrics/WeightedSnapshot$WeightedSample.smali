.class public Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;
.super Ljava/lang/Object;
.source "WeightedSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/WeightedSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedSample"
.end annotation


# instance fields
.field public final value:J

.field public final weight:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    .line 25
    iput-wide p3, p0, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->weight:D

    return-void
.end method
