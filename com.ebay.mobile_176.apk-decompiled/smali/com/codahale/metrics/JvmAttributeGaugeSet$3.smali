.class Lcom/codahale/metrics/JvmAttributeGaugeSet$3;
.super Ljava/lang/Object;
.source "JvmAttributeGaugeSet.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codahale/metrics/JvmAttributeGaugeSet;->getMetrics()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;


# direct methods
.method constructor <init>(Lcom/codahale/metrics/JvmAttributeGaugeSet;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$3;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Long;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$3;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    invoke-static {v0}, Lcom/codahale/metrics/JvmAttributeGaugeSet;->access$000(Lcom/codahale/metrics/JvmAttributeGaugeSet;)Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getUptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/codahale/metrics/JvmAttributeGaugeSet$3;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
