.class interface abstract Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
.super Ljava/lang/Object;
.source "MetricRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/MetricRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MetricBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/codahale/metrics/Metric;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COUNTERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
            "Lcom/codahale/metrics/Counter;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTOGRAMS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
            "Lcom/codahale/metrics/Histogram;",
            ">;"
        }
    .end annotation
.end field

.field public static final METERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
            "Lcom/codahale/metrics/Meter;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codahale/metrics/MetricRegistry$MetricBuilder<",
            "Lcom/codahale/metrics/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 403
    new-instance v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$1;

    invoke-direct {v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$1;-><init>()V

    sput-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->COUNTERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    .line 415
    new-instance v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$2;

    invoke-direct {v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$2;-><init>()V

    sput-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->HISTOGRAMS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    .line 427
    new-instance v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$3;

    invoke-direct {v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$3;-><init>()V

    sput-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->METERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    .line 439
    new-instance v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$4;

    invoke-direct {v0}, Lcom/codahale/metrics/MetricRegistry$MetricBuilder$4;-><init>()V

    sput-object v0, Lcom/codahale/metrics/MetricRegistry$MetricBuilder;->TIMERS:Lcom/codahale/metrics/MetricRegistry$MetricBuilder;

    return-void
.end method


# virtual methods
.method public abstract isInstance(Lcom/codahale/metrics/Metric;)Z
.end method

.method public abstract newMetric()Lcom/codahale/metrics/Metric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
