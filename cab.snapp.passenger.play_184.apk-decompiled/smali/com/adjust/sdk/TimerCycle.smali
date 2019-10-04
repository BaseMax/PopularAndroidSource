.class public Lcom/adjust/sdk/TimerCycle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private command:Ljava/lang/Runnable;

.field private cycleDelay:J

.field private executor:Lcom/adjust/sdk/CustomScheduledExecutor;

.field private initialDelay:J

.field private isPaused:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private name:Ljava/lang/String;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JJLjava/lang/String;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, p6, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 24
    iput-object p6, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    .line 26
    iput-wide p2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 27
    iput-wide p4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    .line 28
    iput-boolean v1, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    .line 29
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    .line 31
    sget-object p1, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double p4, p4

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p4, v2

    invoke-virtual {p1, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object p4, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v2

    invoke-virtual {p4, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-object p3, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p6, p4, p5

    aput-object p2, p4, v1

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const-string p1, "%s configured to fire after %s seconds of starting and cycles every %s seconds"

    invoke-interface {p3, p1, p4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerCycle;)Lcom/adjust/sdk/ILogger;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/Runnable;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancel(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 11

    .line 39
    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s is already started"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "%s starting"

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v5, Lcom/adjust/sdk/TimerCycle$1;

    invoke-direct {v5, p0}, Lcom/adjust/sdk/TimerCycle$1;-><init>(Lcom/adjust/sdk/TimerCycle;)V

    iget-wide v6, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iget-wide v8, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v10}, Lcom/adjust/sdk/CustomScheduledExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 54
    iput-boolean v2, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    return-void
.end method

.method public suspend()V
    .locals 7

    .line 58
    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s is already suspended"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 69
    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    const-string v0, "%s suspended with %s seconds left"

    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-boolean v1, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerCycle;->cancel(Z)V

    .line 87
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    return-void
.end method
