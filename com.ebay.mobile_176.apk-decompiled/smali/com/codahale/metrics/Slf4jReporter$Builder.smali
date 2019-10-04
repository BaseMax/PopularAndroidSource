.class public Lcom/codahale/metrics/Slf4jReporter$Builder;
.super Ljava/lang/Object;
.source "Slf4jReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Slf4jReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private durationUnit:Ljava/util/concurrent/TimeUnit;

.field private filter:Lcom/codahale/metrics/MetricFilter;

.field private logger:Lorg/slf4j/Logger;

.field private loggingLevel:Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;

.field private marker:Lorg/slf4j/Marker;

.field private prefix:Ljava/lang/String;

.field private rateUnit:Ljava/util/concurrent/TimeUnit;

.field private final registry:Lcom/codahale/metrics/MetricRegistry;


# direct methods
.method private constructor <init>(Lcom/codahale/metrics/MetricRegistry;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    const-string p1, "metrics"

    .line 47
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->marker:Lorg/slf4j/Marker;

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->prefix:Ljava/lang/String;

    .line 50
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    .line 52
    sget-object p1, Lcom/codahale/metrics/MetricFilter;->ALL:Lcom/codahale/metrics/MetricFilter;

    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    .line 53
    sget-object p1, Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;->INFO:Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;

    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->loggingLevel:Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/codahale/metrics/Slf4jReporter$Builder;-><init>(Lcom/codahale/metrics/MetricRegistry;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/codahale/metrics/Slf4jReporter;
    .locals 11

    .line 140
    sget-object v0, Lcom/codahale/metrics/Slf4jReporter$1;->$SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel:[I

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->loggingLevel:Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;

    invoke-virtual {v1}, Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$DebugLoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$DebugLoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 151
    :pswitch_0
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$ErrorLoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$ErrorLoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    goto :goto_0

    .line 148
    :pswitch_1
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    goto :goto_0

    .line 145
    :pswitch_2
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$InfoLoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$InfoLoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    goto :goto_0

    .line 142
    :pswitch_3
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter$TraceLoggerProxy;

    iget-object v1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    invoke-direct {v0, v1}, Lcom/codahale/metrics/Slf4jReporter$TraceLoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    goto :goto_0

    .line 158
    :goto_1
    new-instance v0, Lcom/codahale/metrics/Slf4jReporter;

    iget-object v3, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v5, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->marker:Lorg/slf4j/Marker;

    iget-object v6, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->prefix:Ljava/lang/String;

    iget-object v7, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/codahale/metrics/Slf4jReporter;-><init>(Lcom/codahale/metrics/MetricRegistry;Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;Lcom/codahale/metrics/MetricFilter;Lcom/codahale/metrics/Slf4jReporter$1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convertDurationsTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->durationUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public convertRatesTo(Ljava/util/concurrent/TimeUnit;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->rateUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public filter(Lcom/codahale/metrics/MetricFilter;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->filter:Lcom/codahale/metrics/MetricFilter;

    return-object p0
.end method

.method public markWith(Lorg/slf4j/Marker;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->marker:Lorg/slf4j/Marker;

    return-object p0
.end method

.method public outputTo(Lorg/slf4j/Logger;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method public prefixedWith(Ljava/lang/String;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public withLoggingLevel(Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;)Lcom/codahale/metrics/Slf4jReporter$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$Builder;->loggingLevel:Lcom/codahale/metrics/Slf4jReporter$LoggingLevel;

    return-object p0
.end method
