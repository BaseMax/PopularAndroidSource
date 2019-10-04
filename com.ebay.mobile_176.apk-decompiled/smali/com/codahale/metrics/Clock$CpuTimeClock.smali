.class public Lcom/codahale/metrics/Clock$CpuTimeClock;
.super Lcom/codahale/metrics/Clock;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuTimeClock"
.end annotation


# static fields
.field private static final THREAD_MX_BEAN:Ljava/lang/management/ThreadMXBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    sput-object v0, Lcom/codahale/metrics/Clock$CpuTimeClock;->THREAD_MX_BEAN:Ljava/lang/management/ThreadMXBean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/codahale/metrics/Clock;-><init>()V

    return-void
.end method


# virtual methods
.method public getTick()J
    .locals 2

    .line 57
    sget-object v0, Lcom/codahale/metrics/Clock$CpuTimeClock;->THREAD_MX_BEAN:Ljava/lang/management/ThreadMXBean;

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getCurrentThreadCpuTime()J

    move-result-wide v0

    return-wide v0
.end method
