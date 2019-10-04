.class public Lcom/adjust/sdk/TimerOnce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private command:Ljava/lang/Runnable;

.field private executor:Lcom/adjust/sdk/CustomScheduledExecutor;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private name:Ljava/lang/String;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 21
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    .line 22
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerOnce;)Lcom/adjust/sdk/ILogger;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/Runnable;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/adjust/sdk/TimerOnce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancel(Z)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    iget-object p1, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s canceled"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    return-void
.end method

.method public getFireIn()J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 47
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public startIn(J)V
    .locals 6

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    .line 29
    sget-object v1, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "%s starting. Launching in %s seconds"

    invoke-interface {v2, v0, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/TimerOnce$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/TimerOnce$1;-><init>(Lcom/adjust/sdk/TimerOnce;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/adjust/sdk/CustomScheduledExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->executor:Lcom/adjust/sdk/CustomScheduledExecutor;

    return-void
.end method
