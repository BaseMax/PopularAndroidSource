.class public abstract Lcom/codahale/metrics/CachedGauge;
.super Ljava/lang/Object;
.source "CachedGauge.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final clock:Lcom/codahale/metrics/Clock;

.field private final reloadAt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final timeoutNS:J

.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/codahale/metrics/Clock;->defaultClock()Lcom/codahale/metrics/Clock;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/codahale/metrics/CachedGauge;-><init>(Lcom/codahale/metrics/Clock;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected constructor <init>(Lcom/codahale/metrics/Clock;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/codahale/metrics/CachedGauge;->clock:Lcom/codahale/metrics/Clock;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/codahale/metrics/CachedGauge;->reloadAt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/codahale/metrics/CachedGauge;->timeoutNS:J

    return-void
.end method

.method private shouldLoad()Z
    .locals 7

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/CachedGauge;->clock:Lcom/codahale/metrics/Clock;

    invoke-virtual {v0}, Lcom/codahale/metrics/Clock;->getTick()J

    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcom/codahale/metrics/CachedGauge;->reloadAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const/4 v0, 0x0

    return v0

    .line 63
    :cond_1
    iget-object v4, p0, Lcom/codahale/metrics/CachedGauge;->reloadAt:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v5, p0, Lcom/codahale/metrics/CachedGauge;->timeoutNS:J

    add-long/2addr v0, v5

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/codahale/metrics/CachedGauge;->shouldLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/codahale/metrics/CachedGauge;->loadValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/codahale/metrics/CachedGauge;->value:Ljava/lang/Object;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/CachedGauge;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract loadValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
