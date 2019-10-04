.class public Lcom/codahale/metrics/Timer$Context;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final clock:Lcom/codahale/metrics/Clock;

.field private final startTime:J

.field private final timer:Lcom/codahale/metrics/Timer;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/Timer;Lcom/codahale/metrics/Clock;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/codahale/metrics/Timer$Context;->timer:Lcom/codahale/metrics/Timer;

    .line 24
    iput-object p2, p0, Lcom/codahale/metrics/Timer$Context;->clock:Lcom/codahale/metrics/Clock;

    .line 25
    invoke-virtual {p2}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/codahale/metrics/Timer$Context;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/Timer;Lcom/codahale/metrics/Clock;Lcom/codahale/metrics/Timer$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/codahale/metrics/Timer$Context;-><init>(Lcom/codahale/metrics/Timer;Lcom/codahale/metrics/Clock;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-void
.end method

.method public stop()J
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/codahale/metrics/Timer$Context;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v0}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codahale/metrics/Timer$Context;->startTime:J

    sub-long/2addr v0, v2

    .line 35
    iget-object v2, p0, Lcom/codahale/metrics/Timer$Context;->timer:Lcom/codahale/metrics/Timer;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lcom/codahale/metrics/Timer;->update(JLjava/util/concurrent/TimeUnit;)V

    return-wide v0
.end method
