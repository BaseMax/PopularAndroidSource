.class public Lcom/codahale/metrics/Clock$UserTimeClock;
.super Lcom/codahale/metrics/Clock;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTimeClock"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/codahale/metrics/Clock;-><init>()V

    return-void
.end method


# virtual methods
.method public getTick()J
    .locals 2

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
